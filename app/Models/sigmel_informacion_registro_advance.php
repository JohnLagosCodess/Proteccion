<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sigmel_informacion_registro_advance extends Model
{
    use HasFactory;
    protected $connection = 'sigmel_gestiones';

    protected $table = 'sigmel_informacion_registro_advance';

    protected $fillable = ['Descripcion','Estado_Ejecucion','Fecha_Ejecucion','Reintentos'];

    public $timestamps = false;
    
    protected static function Pendientes(){
        return static::whereIn('Estado_Ejecucion',['pendiente']);
    }

}

