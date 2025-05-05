<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use App\Models\sigmel_informacion_registro_advance;

class registroAdvance implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $model_registro_advance;
    /**
     * Create a new job instance.
     */
    public function __construct(sigmel_informacion_registro_advance $advance)
    {
        $this->model_registro_advance = $advance;
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        $record = $this->get_procesar_advance();

        $this->model_registro_advance->where('id',$record->id)->update(['Estado_Ejecucion','ejecutado']);
        
    }

    protected function get_procesar_advance(){
        return sigmel_informacion_registro_advance::on("sigmel_gestiones")->select('ID_Asignacion','Estado_Ejecucion')
        ->where(['Estado_Ejecucion','pendiente']);
    }

    
}
