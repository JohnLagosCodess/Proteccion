<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\sigmel_informacion_registro_advance;
use App\Http\Api\sigmel_advance;
use Illuminate\Support\Facades\Http;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Support\Str;

class registrarAdvance extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'advance:registrar';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Procesa la peticion para registrar en advance';

    protected $model_advance;

    private $end_point = 'http://172.16.0.80/test_api';

    private $contentType = 'application/json';

    private $token = '';

    /**
     * Execute the console command.
     */
    public function handle()
    { 
        $timeout = 300; // 5 minutos máximo
        $startTime = time();
        
        sigmel_informacion_registro_advance::Pendientes()
            ->chunkById(3, function($procesar) use ($startTime, $timeout) {
                // Verificar timeout
                if ((time() - $startTime) >= $timeout) {
                    $this->warn('Tiempo máximo de ejecución alcanzado');
                    return false; // Corta el chunk
                }
                // Procesar asincrónicamente
                $procesar->each(function ($registrar) {
                    Log::channel('log_api_advance')->info("Procesando peticion con id {$registrar->id}");
                    $this->procesar($registrar);
                });
                
                sleep(1);
            });
        
        Log::channel('log_api_advance')->info("Fin procesamiento de peticiones");
    }

    public function procesar(Model $registrar){
        $this->model_advance = $registrar;
        $attempts = 0;
        Log::channel('log_api_advance')->info("Iniciando peticion con id {$registrar->id}");

        $uuid = uniqid();

        try {
            $requestTMP = new Request();
            $requestTMP->setMethod('POST');
            $requestTMP->headers->set('x-request-id',$uuid);
            $requestTMP->request->add([
                'id_evento' => $this->model_advance->ID_evento,
                'id_servicio' => $this->model_advance->ID_servicio,
            ]);   
            $advance = new sigmel_advance($requestTMP);
            $response = $advance->registrar('array');
    
            if(isset($response['codigo_error']) && $response['codigo_error'] != 102){
                $this->model_advance->update([
                    'Descripcion' => "Sigmel: " . $response['mensaje'],
                    'Reintentos' => 0,
                    "Estado_Ejecucion" => 'errado',
                    'Fecha_Ejecucion' => now()
                ]);

                return;
            }

            $headers = [
                //'Authorization' => 'Bearer tu_token_aqui',
                'X-CSRF-TOKEN' => csrf_token(),
                'X-Request-ID' => $uuid,
                'Accept' => $this->contentType,
            ];

            $response = Http::withHeaders($headers)
                ->timeout(60)
                ->retry(3, 1000, function ($exception, $request) use (&$attempts) {
                    $attempts++;
                    Log::info("Reintento #$attempts por error: " . $exception->getMessage());
                    return true;
                })
                ->post($this->end_point, $response['Respuesta']);
            

            if ($response->successful()){
                $this->model_advance->update([
                    'Descripcion' => $response->json(),
                    'Reintentos' => $attempts,
                    "Estado_Ejecucion" => 'ejecutado',
                    'Fecha_Ejecucion' => now()
                ]);
            }else{
                $this->model_advance->update([
                    'Descripcion' => $response->body(),
                    "Estado_Ejecucion" => 'errado',
                    'Reintentos' => $attempts,
                    'Fecha_Ejecucion' => now()
                ]);
            }

        } catch (\Throwable $th) {
            $this->model_advance->update([
                'Descripcion' => $th->getMessage(),
                'Reintentos' => $attempts,
                "Estado_Ejecucion" => 'errado',
                'Fecha_Ejecucion' => now()
            ]);
        }
    }

    
    public static function getDue(string $target){
        $schedule = app(Schedule::class);
        $tasks = collect($schedule->events());

        $matches = $tasks->filter(function ($item) use($target){
            return Str::contains($item->command, $target);
        });

        return $matches->first()->nextRunDate();
    }
}
