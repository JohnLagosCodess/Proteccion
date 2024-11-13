<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class sigmel_lista_departamentos_municipios extends Model
{
    use HasFactory;

    //Omite que actualizaciones/insercciones automaticas en created_at y updated_at
    public $timestamps = false;

    public $fillable = [
        "Nombre_departamento",
        "codigo_dane",
        "Nombre_municipio",
        "Id_departamento",
        "Estado",
        "F_registro",
    ];
}
