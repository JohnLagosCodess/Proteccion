<?php

namespace App\Http\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class sigmelWSController extends Controller
{

    private $services = [
        'registrar_evento' => [
            'descripcion' => 'Gestion inicial para el registro de eventos',
            'metodos' => [
                'POST' => 'Registrar un nuevo evento',
            ], 
            'atributos' => [
                'post' => [
                    'tipo_evento' => '',
                ]
            ]
        ],
        'consultar_evento' => [
            'descripcion' => 'Consulta un evento en especifico',
            'metodos' => [
                'GET' => 'Consulta el evento',
            ], 
            'atributos' => [
                'get' => [
                    "required" => [
                        "Id_evento" => "Id del evento a consultar",
                        "Id_Asignacion" => "Id de asignacion correspondiente al evento a consultar"
                    ]
                ]
            ]
        ],
    ];

    public function endpoint(Request $request){

        return response()->json($this->services);
    }

}
