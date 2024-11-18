<?php

namespace App\Http\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\sigmel_lista_parametros;
use App\Models\sigmel_informacion_entidades;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use App\Traits\obtenerMensaje;
use App\Models\sigmel_numero_orden_eventos;
use App\Models\sigmel_clientes;
use App\Models\sigmel_lista_departamentos_municipios;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;

class registrarEventoController extends Controller
{

    use obtenerMensaje;

    /** Validaciones a realizar con base a una condicion */
    private $validaciones = [
        "Laboral" => [
            'tipo_empleado' => [
                "validar" => ['required', 'integer', "in:1,2,3"],
                "remplazar" => "1:Empleado Actual,2:Independiente,3:Beneficiario"
            ],
            'nombre_empresa' => [
                "validar" => ["nullable", 'string', 'max:100']
            ],
            'nit_cc_empresa' => [
                "validar" => ["nullable", 'string', 'max:20']
            ],
            'telefono_empresa' => [
                "validar" => ["nullable", 'string', 'max:20']
            ],
            'email_empresa' => [
                "validar" => ["nullable", 'email', 'max:100']
            ],
            'direccion_empresa' => [
                "validar" => ["nullable", 'string', 'max:200']
            ],
            'ciudad_empresa' => [
                "validar" => ["nullable", 'string', 'max:20'],
                "verificar_ciudad" => ""
            ],
            'm_notificacion_empresa' => [
                "validar" => ["nullable", 'string', "in:1,2"],
                "remplazar" => "1:Correo electrónico,2:Email"
            ]
        ],
        "Afiliado" => [
            'tipo_afiliado' => [
                "validar" => ['required', 'integer', "in:1,2,3"],
                "remplazar" => "1:26,2:27","3:27" //1:Cotizante,2:Beneficiario,3:Subsidiado,4:Pensionado,5:Otro/¿Cuál?
            ],
            'n_identificacion' => [
                "validar" => ["required", 'string', 'max:25']
            ],
            'tipo_documento' => [
                "validar" => ["required", 'string', 'max:25', 'in:CC,TI,CE,PSP,PEPFF,PTP,NUIP,NIT']
            ],
            'nombre_afiliado' => [
                "validar" => ["required", 'string', 'max:100']
            ],
            'dirección_afiliado' => [
                "validar" => ["required", 'string', 'max:200']
            ],
            'fecha_nacimiento' => [
                "validar" => ["required", 'date']
            ],
            'email_afiliado' => [
                "validar" => ["required", 'string', 'email', 'max:60']
            ],
            'telefono_celular' => [
                "validar" => ["required", 'integer', 'digits_between:1,30']
            ],
            'ciudad_afiliado' => [
                "validar" => ["required", 'integer', 'digits_between:1,10'],
                "verificar_ciudad" => ""
            ],
            'n_identificacion_apoderado' => [
                "validar" => ["nullable", 'string', 'max:25']
            ],
            'tipo_documento_apoderado' => [
                "validar" => ["nullable", 'string', 'max:25', 'in:CC,TI,CE,PSP,PEPFF,PTP,NUIP,NIT']
            ],
            'nombre_apoderado' => [
                "validar" => ["nullable", 'string', 'max:100']
            ],
            'direccion_apoderado' => [
                "validar" => ["nullable", 'string', 'max:200']
            ],
            'email_apoderado' => [
                "validar" => ["nullable", 'string', 'email', 'max:60']
            ],
            'telefono_apoderado' => [
                "validar" => ["nullable", 'integer', 'digits_between:1,30']
            ],
            'ciudad_apoderado' => [
                "validar" => ["nullable", 'integer', 'digits_between:1,10'],
                "verificar_ciudad" => ""
            ],
            'nit_eps' => [
                "validar" => ['required', 'string']
            ],
            'nit_afp' => [
                "validar" => ['required', 'string'],
            ],
            'nit_arl' => [
                "validar" => ['required', 'string']
            ],
            'm_notificacion_afiliado' => [
                "validar" => ['required', 'integer', "in:1,2"],
                "remplazar" => "1:Correo electrónico,2:Email"
            ],
            'apoderado' => [
                "validar" => ['required', 'integer', "in:1,2"]
            ]
        ],
        "Evento" => [
            //"id_evento" =>[
              //  "validar" => ['required', 'string']
            //],
            'proceso' => [
                "validar" => ['required', 'string', "in:1,2,3"]
            ],
            'servicio' => [
                "validar" => ['required', 'string', "in:1,2,3,4,5,6,7,8,9"],
                "remplazar" => "1:1,2:2,3:3,4:6,5:7,6:8,7:9,8:12,9:13",
                "validar_servicio" => [
                    1 => [1,2,3],
                    2 => [6,7,8,9],
                    3 => [12,13]
                ]
            ],
            'fecha_radicacion' => [
                "validar" => ['required', 'date']
            ],
            'activador' => [
                "validar" =>  ['required', 'integer',"in:1,2,3,4,5,6,7,8,9"],
                "remplazar" => "1:488,2:489,3:490,4:491,5:492,6:493,7:494,8:495,9:496"
            ],
            'radicado_hc' => [
                "validar" => ['required', 'string', 'max:100']
            ]
        ],
        "Pericial" => [
            'motivo_solitud' => [
                "validar" => ['required', 'string', "in:1,2,3"]
            ],
            'tipo_vinculacion' => [
                "validar" => ['required', 'string', "in:1,2,3"],
                "remplazar" => "1:34,2:35,3:36"
            ],
            'regimen_salud' => [
                "validar" =>  ['required', 'string', "in:1,2,3"],
                "remplazar" => "1:37,2:38,3:39"
            ],
            'solicitante' => [
                "validar" => ['required', 'string', "in:1,2,3,4,5,6,7,8"]
            ],
            'nombre_solicitante' => [
                "validar" => ['required', 'string', 'max:100']
            ],
            'otro_solicitante' => [
                "validar" => ['nullable', 'string', 'max:100'],
            ],
            'fuente_informacion' => [
                "validar" => ['required', 'string', "in:1,2,3,4,5,6,7,8"],
                "remplazar" => "1:40,2:41,3:309,4:368,5:369,6:370,7:371,8:42"
            ],
        ]
    ];

    private $request;

    private $ejecutar_validaciones = [];

    private $estado_ejecucion;

    private $msg_validacion;

    private $tools;

    private $uuid;

    private $n_evento;

    public function __construct(Request $request)
    {
        $this->request = $request;

        $this->uuid =  $request->header('x-request-id');

        //Callback obtiene las entidades en funcion del tipo
        $this->tools["get_municipio"] = function($dane){ 
            return sigmel_lista_departamentos_municipios::on('sigmel_gestiones')->select('Id_municipios', 'Id_departamento')->where('codigo_dane', $dane)->first();
        };

        $this->tools["entidades_disponibles"] = function ($tipo_entidad) {
            return sigmel_informacion_entidades::on('sigmel_gestiones')->select('Nit_entidad')->where('IdTipo_entidad', $tipo_entidad)->pluck('Nit_entidad')->toArray();
        };

        $this->tools["info_entidad"] = function ($nit_entidad) {
            return sigmel_informacion_entidades::on('sigmel_gestiones')->select('Id_Entidad','Nombre_entidad')->where('Nit_entidad', $nit_entidad)->first();
        };
    }

    /**
     * Endpoint de la api
     */
    public function registrar()
    {
        try {
            $this->configurar_validaciones()->validar();

            if ($this->estado_ejecucion == "Fallo") {
                return response()->json($this->msg_validacion);
            }

            return response()->json($this->procesar_solicitud());
        } catch (\Throwable $th) {

            Log::channel('log_api')->error("Error inesperado: " . $th->getMessage(),[
                "Archivo: " => $th->getFile(),
                "Linea: " => $th->getLine()
            ]);
            return response()->json($this->getMensaje(000));
        }
    }

    /**
     * Procesa la solicitud http
     * @return Array|String Devuelve un array con el resultado de la operacion
     */
    private function procesar_solicitud(): array|string
    {
        $this->ejecutar_validaciones = [];

        /**Dependiendo del input suministrado se ajustaran las validaciones para dicha seccion */
        $seccion = ($this->request->tipo_afiliado == 2 || $this->request->apoderado == 1) ? "Afiliado" : (($this->request->tipo_empleado == "Empleado Actual") ? "Laboral" : null);
        $this->actualizar_validaciones($seccion)->validar();
        
        if ($this->estado_ejecucion == "Fallo") {
            return $this->msg_validacion;
        }

        $this->n_evento = generarNumeroEvento();

       // sigmel_numero_orden_eventos::on('sigmel_gestiones')
         // ->where([['Proceso', 'General_Evento'], ['Estado', 'activo']])->update(['Numero_orden' => $n_evento]);

        $this->registrar_evento()->registrar_afiliado();
        return "Todo bien $this->n_evento";   

    }

    private function verificar_ciudad($campo, $valores){
        $municipio_existe = $this->tools["get_municipio"]($this->request->{$campo});
        if(!empty($this->request->{$campo}) && is_null($municipio_existe)){
            $this->estado_ejecucion = "Fallo";
            $this->msg_validacion = $this->getMensaje(101, [
                "campos_faltantes" => "La ciudad <{$this->request->$campo}> registrada para el campo $campo no fue encontrada"
            ]);
        }
        
        
    }
    private function registrar_evento(){

        $cliente = sigmel_clientes::on('sigmel_gestiones')->select('Id_cliente','Tipo_cliente')->first();

        $datos_info_evento = [
            'Cliente' => $cliente->Id_cliente,
            'Tipo_cliente' => $cliente->Tipo_cliente,
            'ID_evento' =>  $this->n_evento,
            'F_radicacion' => $this->request->fecha_radicacion,
            'Activador' => $this->request->activador,
            'N_Radicado_HC' => $this->request->radicado_hc,
            "estado_evento" => "activo",
            'Nombre_usuario' => Auth::user()->name,
            'F_registro' => date('y-m-d')
        ];

        return $this;
    
    }

    private function registrar_afiliado(){
        $ciudad_afiliado = $this->tools["get_municipio"]($this->request->ciudad_afiliado);
        $ciudad_apoderado = $this->tools["get_municipio"]($this->request->ciudad_apoderado);
        $id_eps =  $this->tools["info_entidad"]($this->request->nit_eps);
        $id_afp =  $this->tools["info_entidad"]($this->request->nit_afp);
        $id_arl =  $this->tools["info_entidad"]($this->request->nit_arl);

        $datos_info_afiliado_evento = [
            'ID_evento' => $this->n_evento,
            'Nombre_afiliado' => $this->request->nombre_afiliado,
            'Tipo_documento' => $this->request->tipo_documento,
            'Nro_identificacion' => $this->request->n_identificacion,
            'F_nacimiento' => $this->request->fecha_nacimiento,
            'Email' => $this->request->email_afiliado,
            'Telefono_contacto' =>  $this->request->telefono_celular,
            'Apoderado'=> $this->request->apoderado,
            'Tipo_documento_apoderado' => $this->request->tipo_documento_apoderado,
            'Nro_identificacion_apoderado' => $this->request->n_identificacion_apoderado,
            'Nombre_apoderado' => $this->request->nombre_apoderado,
            'Email_apoderado' => $this->request->email_apoderado,
            'Telefono_apoderado' => $this->request->telefono_apoderado,
            'Direccion_apoderado' => $this->request->direccion_apoderado,
            'Id_departamento_apoderado' => isset($ciudad_apoderado->Id_departamento) ? $ciudad_apoderado->Id_departamento : null,
            'Id_municipio_apoderado' => isset($ciudad_apoderado->Id_municipios) ? $ciudad_apoderado->Id_municipios : null,          
            'Direccion' => $this->request->dirección_afiliado,
            'Id_departamento' => $ciudad_afiliado->Id_departamento,
            'Id_municipio' => $ciudad_afiliado->Id_municipios,
            'Tipo_afiliado' => $this->request->tipo_afiliado,
            'Id_eps' => $id_eps->id_eps ,
            'Id_afp' => $id_eps->id_afp ,
            'Id_arl' => $id_eps->id_arl ,
            'Nombre_afiliado_benefi' => $this->request->nombre_afiliado,
            'Direccion_benefi' => $this->request->direccion_afiliado,
            'Email_benefi' => $this->request->email_afiliado,
            'Telefono_benefi' => $this->request->telefono_celular,
            'Nro_identificacion_benefi' => $this->request->n_identificacion,
            'Tipo_documento_benefi' => $this->request->tipo_documento,
            'Id_departamento_benefi' => $ciudad_afiliado->Id_departamento,
            'Id_municipio_benefi' =>  $ciudad_afiliado->Id_municipios,
            'Activo' => 'activo',
            'Medio_notificacion' => $this->request->m_notificacion_afiliado,
            'Nombre_usuario' => Auth::user()->name,
            'F_registro' => date('y-m-d')
        ];

        return $this;
    }

    private function registrar_info_laboral(){

        $municipio_empresa = $this->tools["get_municipio"]($this->request->ciudad_empresa);

        $datos_info_laboral_evento =[
            'ID_evento' => $this->n_evento,
            'Nro_identificacion' => $this->request->nro_identificacion,
            'Tipo_empleado' => $this->request->tipo_empleado,
            'Empresa' => $this->request->nombre_empresa,
            'Nit_o_cc' => $this->request->nit_cc_empresa,
            'Telefono_empresa' => $this->request->telefono_empresa,
            'Email' => $this->request->email_empresa,
            'Direccion' => $this->request->direccion_empresa,
            'Id_departamento' => $municipio_empresa->Id_departamento,
            'Id_municipio' => $municipio_empresa->Id_municipios,
            'Medio_notificacion' => $this->request->m_notificacion_empresa,
            'Nombre_usuario' => Auth::user()->name,
            'F_registro' => date('y-m-d')
        ];

        return $this;
    }

    private function registrar_info_pericial(){

        if ($this->request->solicitante == 1 || $this->request->solicitante == 2 || $this->request->solicitante == 3) {
            $id_nombre_solicitante = $this->request->nombre_solicitante;
            $nombre_entidad = sigmel_informacion_entidades::on('sigmel_gestiones')
            ->select('Nombre_entidad')->where('Id_Entidad', $id_nombre_solicitante)->get();
            $Nombre_solicitante = $nombre_entidad[0]->Nombre_entidad;
        } elseif ($this->request->solicitante == 4 || $this->request->solicitante == 6 || $this->request->solicitante == 7) {
            $id_nombre_solicitante = null;
            $Nombre_solicitante = $this->request->otro_solicitante;
        }else{
            $id_nombre_solicitante = null;
            $Nombre_solicitante = null;
        }

        $datos_info_pericial_evento = [
            'ID_evento' => $this->n_evento,
            'Id_motivo_solicitud' => $this->request->motivo_solicitud,
            'Tipo_vinculacion' => $this->request->tipo_vinculacion,
            'Regimen_salud' => $this->request->regimen_salud,
            'Id_solicitante' => $this->request->solicitante,
            'Id_nombre_solicitante' => $id_nombre_solicitante,
            'Nombre_solicitante' => $Nombre_solicitante,
            'Fuente_informacion' => $this->request->fuente_informacion,
            'Nombre_usuario' => Auth::user()->name,
            'F_registro' => date('y-m-d')
        ];

        return $this;
    }

    private function asignar_evento(){
        
    }

    private function finalizar_registro(){}


    /**
     * Actualiza las validaciones para una seccion en especifico
     * @param String $target seccion a actualizar
     * @return This
     */
    private function actualizar_validaciones(string $target)
    {
        $this->ejecutar_validaciones = [];
        foreach ($this->validaciones[$target] as $campo => $atributos) {
            if (isset($atributos['validar'])) {
                $this->ejecutar_validaciones[$campo] = array_map(
                    function ($rule) {
                        return $rule === 'nullable' ? 'required' : $rule;
                    },
                    $this->validaciones[$target][$campo]['validar']
                );
            }
        }

        return $this;
    }

    /**
     * Configura las validaciones para que funcione de acuerdo a la estructura del validator de laravel
     * @return this
     */
    private function configurar_validaciones()
    {
        foreach ($this->validaciones as $secciones => $campos) {
            foreach ($campos as $campo => $atributos) {
                if (isset($atributos['validar'])) {

                    //rellena el enum para que cuando se digite una entidad, esta sea acorde a las que estan registradas dentro de las entidades
                    if ($campo == "nit_eps" || $campo == "nit_afp" || $campo == "nit_arl") {
                        $this->ejecutar_validaciones[$campo] = $atributos['validar'];

                        $lista_entidades = match ($campo) {
                            "nit_eps" =>   $this->tools["entidades_disponibles"](3),
                            "nit_afp" =>   $this->tools["entidades_disponibles"](2),
                            "nit_arl" =>   $this->tools["entidades_disponibles"](1),
                            default => null
                        };
                        $lista = implode(",", $lista_entidades);
                        $atributos['validar'][] = "in:" . $lista;
                    }

                    $this->ejecutar_validaciones[$campo] = $atributos['validar'];
                }
            }
        }

        return $this;
    }

    /**
     * Valida los inputs en funcion de la validaciones disponibles
     * @return void
     */
    private function validar()
    {
        
        $validacion = Validator::make($this->request->all(), $this->ejecutar_validaciones);
        if ($validacion->fails()) {
            $this->estado_ejecucion = "Fallo";
            $this->msg_validacion = $this->getMensaje(101, [
                "campos_faltantes" => $validacion->errors()
            ]);

        }else if(is_null($this->uuid)){
            $this->estado_ejecucion = "Fallo";
            $this->msg_validacion = $this->getMensaje(103);
        } else {
            foreach ($this->validaciones as $secciones => $campos) {
                foreach ($campos as $campo => $atributos) {
                    $acciones = array_filter($atributos, fn($key) => $key !== 'validar', ARRAY_FILTER_USE_KEY);
                    $this->invocar_acciones($acciones, $campo);
                }
            }
        }
    }

    private function invocar_acciones(array $acciones, string $campo)
    {
        foreach ($acciones as $accion => $valores) {
            if (method_exists($this, $accion)) {
                $this->$accion($campo, $valores);
            }
        }
    }

    private function validar_servicio($campo, $target){

        if (isset($target[$this->request->proceso]) && 
        !in_array($this->request->servicio, $target[$this->request->proceso])) {
        
        $this->estado_ejecucion = "Fallo";
        $this->msg_validacion = $this->getMensaje(101, [
            "campos_faltantes" => "El servicio seleccionado no corresponde al proceso {$this->request->proceso} seleccionado. Por favor verifique."
        ]);
    }
    }

    private function remplazar($campo, $target)
    {
        // Crear un array asociativo a partir de las opciones de reemplazo
        $opciones = [];
        foreach (explode(",", (string) $target) as $opcion) {
            list($clave, $valor) = explode(":", $opcion);
            $opciones[trim($clave)] = trim($valor);
        }


        // Verificar si el valor actual del campo tiene una opción de reemplazo
        $valorActual = $this->request->{$campo};
        if (isset($opciones[$valorActual])) {
            $this->request->{$campo} = $opciones[$valorActual];
        }
    }
}
