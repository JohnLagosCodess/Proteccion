<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sigmel_informacion_entidades extends Model
{
    use HasFactory;

    protected $primaryKey = "Id_Entidad"; 

    protected $fillable= [
        'Nit_entidad',
        'Nit_simple',
        'Nombre_entidad',
        'IdTipo_entidad',
        'Estado_entidad',
    ];
}
