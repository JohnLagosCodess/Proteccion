<?php

namespace App\Http\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\sigmel_clientes;
use App\Models\sigmel_numero_orden_eventos;
use App\Models\sigmel_informacion_eventos;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Traits\obtenerMensaje;

use Illuminate\Http\Request;

class generarEventoController extends Controller
{
    use obtenerMensaje;

    private $n_evento;
    private $uuid;
    private $ip_cliente;
    public function endpoint(Request $request){

        try {
            $this->uuid =  $request->header('x-request-id');
            $this->ip_cliente = request()->ip();

            if(empty($this->uuid)){
                return response()->json($this->getMensaje(103));
            }

            $this->registrar()->finalizar_creacion("ejecutado");

            return response()->json($this->getMensaje(102,[
                "numero_evento" => $this->n_evento
            ]));

        } catch (\Throwable $th) {
            Log::channel('log_api')->error("Error inesperado en la generacion del evento: " . $th->getMessage(),[
                "Archivo: " => $th->getFile(),
                "Linea: " => $th->getLine()
            ]);

            $this->finalizar_creacion("errado");
            return response()->json($this->getMensaje(000));
        }

    }

    private function registrar(){
        $cliente = sigmel_clientes::on('sigmel_gestiones')->select('Id_cliente','Tipo_cliente')->first();
        $this->n_evento = generarNumeroEvento();

        $datos_info_evento = [
            'Cliente' => $cliente->Id_cliente,
            'Tipo_cliente' => $cliente->Tipo_cliente,
            'ID_evento' => $this->n_evento,
            'estado_evento' => "inactivo",
            'Nombre_usuario' => Auth::user()->name,
            'F_registro' => date('y-m-d')
        ];

        sigmel_numero_orden_eventos::on('sigmel_gestiones')
         ->where([['Proceso', 'General_Evento'], ['Estado', 'activo']])->update(['Numero_orden' => $this->n_evento]);

        sigmel_informacion_eventos::on('sigmel_gestiones')->insert($datos_info_evento);

        return $this;
    }

    private function finalizar_creacion(string $estado_ejecucion){
        DB::table(getDatabaseName('sigmel_auditorias') . "sigmel_auditorias_sigmelWS_generarEvento")->insert([
            "UUID" => $this->uuid,
            "nombre_servicio" => "crear evento",
            "estado_ejecucion" => $estado_ejecucion,
            "ip_cliente" => $this->ip_cliente,
            "id_evento" =>  $this->n_evento,
            "fecha" => date('y-m-d h:i:s')
        ]);
    }

}

?>