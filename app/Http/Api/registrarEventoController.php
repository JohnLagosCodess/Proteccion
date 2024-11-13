<?php
namespace App\Http\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\sigmel_lista_parametros;
use Illuminate\Support\Facades\Log;
use App\Traits\obtenerMensaje;
use Illuminate\Validation\Rule;

class registrarEventoController extends Controller {

    use obtenerMensaje;

    /** Validaciones a realizar con base a una condicion */
    private $validaciones = [
        "Laboral" => [
            'tipo_empleado' => [
                "validate" => ['required', 'integer', 'max:1', "in:1,2,3"],
                "match" => "1:Empleado Actual,2:Independiente,3:Beneficiario"
            ],
            'empresa' => [
                "validate" => ['required', 'string', 'max:100']
            ],
            'nit_cc' => [
                "validate" => ['required', 'string', 'max:20']
            ],
            'telefono_empresa' => [
                "validate" => ['required', 'string', 'max:20']
            ],
            'email_empresa' => [
              "validate" => ['required', 'string', 'max:100']  
            ],
            'direccion_empresa' => [
                "validate" => ['required', 'string', 'max:200']
            ],
            'ciudad_empresa' => [
               "validate" => ['required', 'string', 'max:20']
            ],
            'm_notificacion_empresa' => [
                "validate" => ['required', 'string', 'max:1', "in:1,2"],
                "match" => "1:Correo electrónico,2:Email"
            ]
        ],
        "Afiliado" => [
            'tipo_afiliado' => [
                "validate" => ['required', 'integer', 'max:1',"in:1,2,3"],
            ],
            'n_identificacion' => [
                "validate" => ['required', 'string', 'max:25']
            ],
            'tipo_documento' => [
                "validate" => ['required', 'string', 'max:25','im']
            ],
            'nombre_afiliado' => [
                "validate" => ['required', 'string', 'max:100']
            ],
            'dirección_afiliado' => [
                "validate" => ['required', 'string', 'max:200']
            ],
            'fecha_nacimiento' => [
                "validate" => ['required', 'date']
            ],
            'email_afiliado' => [
                "validate" => ['required', 'string', 'email', 'max:60']
            ],
            'telefono_celular' => [
                "validate" => ['required', 'integer', 'max:30']
            ],
            'ciudad_afiliado' => [
                "validate" => ['required', 'integer', 'max:10']
            ],
            'nit_eps' => [
                "validate" => ['required', 'string','in']
            ],
            'nit_afp' => [
                "validate" => ['required', 'string','in'],
            ],
            'nit_arl' => [
                "validate" => ['required', 'string','in']
            ]
            'm_notificacion_afiliado' => [
                "validate" => ['required', 'integer', 'max:1',"in:1,2"]
                "match" => "1:Correo electrónico,2:Email"
            ]
            'apoderado' => [
                "validate" => ['required', 'integer', 'max:1', "in:1,2"]
            ]
        ],
        "Evento" => [
            'proceso' => ['required', 'string', 'max:1', "in:1,2,3"],
            'servicio' => ['required', 'string', 'max:1',"in:1,2,3,4,5,6,7,8,9"],
            'fecha_radicacion' => ['required', 'date'],
            'activador' => ['required', 'integer'], 
            'radicado_hc' => ['required', 'string', 'max:100'],
        ],
        "Pericial" => [
            'motivo_solitud' => ['required', 'string', 'max:1',"in:1,2,3"],
            'tipo_vinculacion' => ['required', 'string', 'max:1',"in:1,2,3"],
            'regimen_salud' => ['required', 'string', 'max:1',"in:1,2,3"],
            'solicitante' => ['required', 'string', 'max:1',"in:1,2,3,4,5,6,7,8"],
            'nombre_solicitante' => ['required', 'string', 'max:100'],
            'otro_solicitante' => ['required', 'string', 'max:100'],
            'fuente_informacion' => ['required', 'string', 'max:1',"in:1,2,3,4,5,6,7,8"],
        ]
    ];


    public function registrar(Request $request){

        try {
            $this->configurar_validaciones($request);
            return response()->json($this->validaciones);
        } catch (\Throwable $th) {

            Log::channel('log_api')->error("Error inesperado: " . $th->getMessage());
            return response()->json($this->getMensaje(000));
        }
    }

    private function configurar_validaciones($request){

    }

}
?>