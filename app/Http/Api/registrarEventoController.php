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
use Illuminate\Support\Facades\DB;
use App\Models\sigmel_lista_departamentos_municipios;
use App\Models\sigmel_informacion_asignacion_eventos;
use App\Models\sigmel_informacion_diagnosticos_eventos;
use App\Models\sigmel_historial_acciones_eventos;
use App\Models\sigmel_informacion_historial_accion_eventos;
use App\Models\sigmel_informacion_eventos;
use App\Models\sigmel_informacion_afiliado_eventos;
use App\Models\sigmel_informacion_laboral_eventos;
use App\Models\sigmel_informacion_pericial_eventos;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Auth;


class registrarEventoController extends Controller
{

    use obtenerMensaje;

    /** @var Array Validaciones a realizar para cada seccion, las cuales estan vinculadas a unas acciones
     * que se podran ejecutar de manera individual para el campo operado. 
    */
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
                "validar" => ["required", 'string', 'max:25', 'in:CC,TI,CE,PSP,PEPFF,PTP,NUIP,NIT'],
                 "remplazar" => "CC:1,TI:2,CE:3,PSP:4,PEPFF:5,PTP:6,NUIP:7,NIT:8"
            ],
            'nombre_afiliado' => [
                "validar" => ["required", 'string', 'max:100']
            ],
            'direccion_afiliado' => [
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
            'n_identificacion_beneficiario' => [
                "validar" => ["nullable", 'string', 'max:25']
            ],
            'tipo_documento_beneficiario' => [
                "validar" => ["nullable", 'string', 'max:25', 'in:CC,TI,CE,PSP,PEPFF,PTP,NUIP,NIT']
            ],
            'nombre_beneficiario' => [
                "validar" => ["nullable", 'string', 'max:100']
            ],
            'direccion_beneficiario' => [
                "validar" => ["nullable", 'string', 'max:200']
            ],
            'email_beneficiario' => [
                "validar" => ["nullable", 'string', 'email', 'max:60']
            ],
            'telefono_beneficiario' => [
                "validar" => ["nullable", 'integer', 'digits_between:1,30']
            ],
            'ciudad_beneficiario' => [
                "validar" => ["nullable", 'integer', 'digits_between:1,10'],
                "verificar_ciudad" => ""
            ],
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
                "validar" => ['nullable', 'string', 'max:100']
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
                "validar" => ['required', 'string']
            ],
            'nit_solicitante' => [
                "validar" => ['nullable', 'string']
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


    /** @var Request contiene la solicitud http entrante */
    private $request;

    /** @var Array Contiene las validaciones a ejecutar desde el validator de laravel @link https://laravel.com/docs/10.x/validation */
    private $ejecutar_validaciones = [];

    /** @var String indica el estado de ejecucion en la que se encuentra el servicio */
    private $estado_ejecucion;

    /** @var String indica el mensaje devuelto en caso de que ocurra algun error durante las validaciones*/
    private $msg_validacion;

    /** @var Array|Callback Contiene diferentes heramientas para facilitar algunas operaciones durante la ejecucion del servicio*/
    private $tools;

    /** @var String Contiene el identificador de X-REQUEST-ID  */
    private $uuid;

    /** @var String Contiene el # de evento generado */
    private $n_evento;

    /** @var String  Acccion por defecto, sobre la cual se registrara el evento. Dicha acccion debe estar asignada para servicio dentro de la parametrica*/
    private $accion_ejecutar = "CREAR SERVICIO";

    /**
     * Realiza las configuraciones iniciales para la api
     * @param Request $request Peticion http
     */
    public function __construct(Request $request)
    {
        $this->request = $request;

        $this->uuid =  $request->header('x-request-id');

        //Callback obtiene la informacion del municipio en funcion del codigo dane
        $this->tools["get_municipio"] = function($dane){ 
            return sigmel_lista_departamentos_municipios::on('sigmel_gestiones')->select('Id_municipios', 'Id_departamento')->where('codigo_dane', $dane)->first();
        };

        //Callback obtiene las entidades disponibles en funcion del tipo de entidad (eps,afp,arl)
        $this->tools["entidades_disponibles"] = function ($tipo_entidad) {
            $resultado = sigmel_informacion_entidades::on('sigmel_gestiones')->select('Nit_entidad','Nit_simple')->where('IdTipo_entidad', $tipo_entidad)->pluck('Nit_entidad','Nit_simple')->toArray();
            return array_unique($resultado);
        };

        //Callback obtiene la informacion de una entidad de acuerdo al nit de este
        $this->tools["info_entidad"] = function ($nit_entidad) {
            return sigmel_informacion_entidades::on('sigmel_gestiones')->select('Id_Entidad','Nombre_entidad')
            ->where('Nit_entidad', $nit_entidad)->orWhere('Nit_simple', $nit_entidad)->first();
        };
    }

    /**
     * Endpoint de la api
     */
    public function registrar()
    {
        try {

            //Realiza las validaciones iniciales
            $this->configurar_validaciones()->validar();

            if ($this->estado_ejecucion == "Fallo") {
                return response()->json($this->msg_validacion);
            }

            return response()->json($this->procesar_solicitud());

        } catch (\Throwable $th) {

            Log::channel('log_api')->error("Error inesperado: " . $th->getMessage(),[
                "Archivo: " => $th->getFile(),
                "Linea: " => $th->getLine(),
                "Trace" => $th->getTrace()
            ]);
            $this->ejecutar_auditoria("Errado");

            return response()->json($this->getMensaje(000));
        }
    }

    /**
     * Procesa la solicitud http
     * @return Array|String Devuelve un array o string con el resultado de la operacion
     */
    private function procesar_solicitud(): array|string
    {
        $this->ejecutar_validaciones = [];

        /**Dependiendo del input suministrado se ajustaran las validaciones para dicha seccion */
        if($this->request->input("tipo_afiliado") == 2 || $this->request->input("apoderado") == 1){
            $this->actualizar_validaciones("Afiliado")->validar();
        }else if($this->request->tipo_empleado == "Empleado Actual"){
            $this->actualizar_validaciones("Laboral")->validar();
        }
        
        if ($this->estado_ejecucion == "Fallo") {
            return $this->msg_validacion;
        }

        /** Genera el evento y lo homologa dentro del sistema */
        $this->n_evento = generarNumeroEvento();

        sigmel_numero_orden_eventos::on('sigmel_gestiones')
        ->where([['Proceso', 'General_Evento'], ['Estado', 'activo']])->update(['Numero_orden' => $this->n_evento]);

        $this->registrar_evento()->registrar_afiliado()->registrar_info_laboral()
        ->registrar_info_pericial()->asignar_evento()->finalizar_registro();

        return $this->getMensaje(102,[
            "numero_evento" => $this->n_evento
        ]);

    }

    /**
     * Accion de verificar la ciudad suministrada en el input, si la ciudad no esta registrada en el sistema fallara.
     * @var String Campo sobre el cual se esta operando la accion
     * @var Array|String Atributos sobre los cuales estara interactuando la accion
     * @return void
     */
    private function verificar_ciudad($campo, $valores):void {
        $municipio_existe = $this->tools["get_municipio"]($this->request->{$campo});

        if(!empty($this->request->{$campo}) && is_null($municipio_existe)){
            $this->estado_ejecucion = "Fallo";
            $this->msg_validacion = $this->getMensaje(101, [
                "campos_faltantes" => "La ciudad <{$this->request->$campo}> registrada para el campo $campo no fue encontrada"
            ]);
        }
    }

    /**
     * Registra el evento en sigmel_informacion_eventos
     * @return This
     */
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

        sigmel_informacion_eventos::on('sigmel_gestiones')->insert($datos_info_evento);

        return $this;
    
    }

    /**
     * Registra la informacion del afiliado en sigmel_informacion_afiliado_eventos
     * @return This
     */
    private function registrar_afiliado(){
        $ciudad_afiliado = $this->tools["get_municipio"]($this->request->ciudad_afiliado);
        $ciudad_beneficiario = $this->tools["get_municipio"]($this->request->ciudad_beneficiario);
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
            'Tipo_documento_apoderado' => $this->request->tipo_documento_apoderado ?? null,
            'Nro_identificacion_apoderado' => $this->request->n_identificacion_apoderado ?? null,
            'Nombre_apoderado' => $this->request->nombre_apoderado ?? null,
            'Email_apoderado' => $this->request->email_apoderado ?? null,
            'Telefono_apoderado' => $this->request->telefono_apoderado ?? null,
            'Direccion_apoderado' => $this->request->direccion_apoderado ?? null,
            'Id_departamento_apoderado' =>$ciudad_apoderado->Id_departamento ?? null,
            'Id_municipio_apoderado' => $ciudad_apoderado->Id_municipios ?? null,          
            'Direccion' => $this->request->direccion_afiliado,
            'Id_departamento' => $ciudad_afiliado->Id_departamento,
            'Id_municipio' => $ciudad_afiliado->Id_municipios,
            'Tipo_afiliado' => $this->request->tipo_afiliado,
            'Id_eps' => $id_eps->Id_Entidad ,
            'Id_afp' => $id_afp->Id_Entidad ,
            'Id_arl' => $id_arl->Id_Entidad ,
            'Nombre_afiliado_benefi' => $this->request->nombre_beneficiario ?? null,
            'Direccion_benefi' => $this->request->direccion_beneficiario ?? null,
            'Email_benefi' => $this->request->email_beneficiario ?? null,
            'Telefono_benefi' => $this->request->telefono_beneficiario ?? null,
            'Nro_identificacion_benefi' => $this->request->n_identificacion_beneficiario ?? null,
            'Tipo_documento_benefi' => $this->request->tipo_documento_beneficiario ?? null,
            'Id_departamento_benefi' => $ciudad_beneficiario->Id_departamento ?? null,
            'Id_municipio_benefi' =>  $ciudad_beneficiario->Id_municipios ?? null,
            'Activo' => 'Si',
            'Medio_notificacion' => $this->request->m_notificacion_afiliado,
            'Nombre_usuario' => Auth::user()->name,
            'F_registro' => date('y-m-d')
        ];

        sigmel_informacion_afiliado_eventos::on('sigmel_gestiones')->insert($datos_info_afiliado_evento);
        return $this;
    }

    /**
     * Registra el evento en sigmel_informacion_laboral_eventos
     * @return This
     */
    private function registrar_info_laboral(){

        $municipio_empresa = $this->tools["get_municipio"]($this->request->ciudad_empresa);

        $datos_info_laboral_evento =[
            'ID_evento' => $this->n_evento,
            'Nro_identificacion' => $this->request->n_identificacion,
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

        sigmel_informacion_laboral_eventos::on('sigmel_gestiones')->insert($datos_info_laboral_evento);
        return $this;
    }

    /**
     * Registra el evento en sigmel_informacion_pericial_eventos
     * @return This
     */
    private function registrar_info_pericial(){

        if (($this->request->solicitante == 1 || $this->request->solicitante == 2 || $this->request->solicitante == 3) && !empty($this->request->nit_solicitante)) {
            $nombre_entidad = $this->tools["info_entidad"]($this->request->nit_solicitante);
            $id_nombre_solicitante = $nombre_entidad->Id_Entidad ?? null;
            $Nombre_solicitante = $nombre_entidad->Nombre_entidad ?? null;

        } elseif ($this->request->solicitante == 8) {
            $id_nombre_solicitante = null;
            $Nombre_solicitante = $this->request->otro_solicitante ?? null;
        }else{
            $id_nombre_solicitante = null;
            $Nombre_solicitante = $this->request->nombre_solicitante ?? null;
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

        sigmel_informacion_pericial_eventos::on('sigmel_gestiones')->insert($datos_info_pericial_evento);
        return $this;
    }

    /**
     * Registra el evento en sigmel_informacion_asignacion_eventos
     * @return This
     */
    private function asignar_evento(){
        $cliente = sigmel_clientes::on('sigmel_gestiones')->select('Id_cliente','Tipo_cliente')->first();
        $n_orden = sigmel_numero_orden_eventos::on('sigmel_gestiones')
        ->select('Numero_orden')->first();

        $id_accion_ejecutar = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_acciones')->select('Id_Accion')->where('Accion',$this->accion_ejecutar)->first();

        $estado_acorde_a_parametrica = DB::table(getDatabaseName('sigmel_gestiones') .'sigmel_informacion_parametrizaciones_clientes as sipc')
        ->select('sipc.Estado', 'sipc.Enviar_a_bandeja_trabajo_destino as enviarA','Profesional_asignado as profesional')
        ->where([
            ['sipc.Id_cliente', '=', $cliente->Id_cliente],
            ['sipc.Id_proceso', '=', $this->request->proceso],
            ['sipc.Servicio_asociado', '=', $this->request->servicio],
            ['sipc.Accion_ejecutar','=', $id_accion_ejecutar->Id_Accion]
        ])->first();

        //Asignamos #n de orden cuado se envie un caso a notificaciones
        if(!empty($estado_acorde_a_parametrica->enviarA)){
            $N_orden_evento=$n_orden->Numero_orden;
        }else{
            $N_orden_evento=null;
        }

        $Id_Estado_evento = $estado_acorde_a_parametrica->Estado ?? 223;
        
        /* RECOLECCIÓN INFORMACIÓN PARA LA TABLA: sigmel_informacion_asignacion_eventos */
        $consultarid_clientes = DB::table(getDatabaseName('sigmel_gestiones') .  'sigmel_informacion_eventos as sie')
        ->leftJoin('sigmel_gestiones.sigmel_clientes as sc', 'sie.Cliente', '=', 'sc.Id_cliente')
        ->select('sie.Cliente', 'sc.Nro_consecutivo_dictamen')
        ->where('sie.Cliente',$cliente->Id_cliente)->get();

        if (count($consultarid_clientes) > 0) {
            $procesoid = $this->request->proceso;
            $servicioid = $this->request->servicio;
            if ($procesoid == 1 && $servicioid <> 3 || $procesoid == 2 && $servicioid <> 9) {                    
                $consecutivoDictamen = $consultarid_clientes[0]->Nro_consecutivo_dictamen;  
                
                $actualizar_id_cliente = [
                    'Nro_consecutivo_dictamen' =>$consecutivoDictamen + 1,            
                ];
                
                sigmel_clientes::on('sigmel_gestiones')->where('Id_cliente',$cliente->Id_cliente)
                ->update($actualizar_id_cliente);              
            } else {
                $consecutivoDictamen = '';                
            }
            
        }


        $nombre_profesional = DB::table('users')->select('id', 'name')
        ->where('id',$estado_acorde_a_parametrica->profesional ?? null)->first();   

        $asignacion_profesional = $nombre_profesional->name ?? null;                      

        $datos_info_asignacion_evento =[
            'ID_evento' =>  $this->n_evento,
            'Id_proceso' => $this->request->proceso,
            'Id_servicio' => $this->request->servicio,
            'Id_accion' => $id_accion_ejecutar->Id_Accion,
            'Descripcion' => "Evento creado de manera automatica",
            'Id_Estado_evento' => $Id_Estado_evento,
            'F_accion' => date('y-m-d'),
            'F_radicacion' => $this->request->fecha_radicacion,
            'N_de_orden' => $N_orden_evento,
            'Id_proceso_anterior' => $this->request->proceso,
            'Id_servicio_anterior' => $this->request->servicio,
            'F_asignacion_calificacion' => date("Y-m-d h:i:s"),
            'Consecutivo_dictamen' => $consecutivoDictamen,
            'Id_profesional' => $estado_acorde_a_parametrica->profesional ?? null,
            'Nombre_profesional' => $asignacion_profesional,
            'Notificacion' => isset($estado_acorde_a_parametrica->enviarA) ? $estado_acorde_a_parametrica->enviarA : 'No',
            'Nombre_usuario' => Auth::user()->name,
            'F_registro' => date('y-m-d')
        ];

        // Inserción de datos en la tabla sigmel_informacion_asignacion_eventos
        $Id_Asignacion = sigmel_informacion_asignacion_eventos::on('sigmel_gestiones')->insertGetId($datos_info_asignacion_evento);

        //Si el servicio es una DTO insertamos el CIE-10 que debe tener por defecto
        if($this->request->servicio == 1 && $this->request->proceso == 1){
            $diagnostico_default_dto = [
                'ID_evento' => $this->n_evento,
                'Id_Asignacion' => $Id_Asignacion,
                'Id_proceso' => $this->request->proceso,
                'CIE10' => '7198',
                "Nombre_CIE10" => "Muerte sin asistencia",
                "Deficiencia_motivo_califi_condiciones" => "Accidente mortal",
                "Lateralidad_CIE10" => null,
                "Origen_CIE10" => null,
                "Principal" => "Si",
                'Nombre_usuario' => Auth::user()->name,
                'F_registro' => date('y-m-d')
            ];
            
            sigmel_informacion_diagnosticos_eventos::on('sigmel_gestiones')->insert($diagnostico_default_dto);
        }

        /* RECOLECCIÓN INFORMACIÓN PARA LA TABLA: sigmel_historial_acciones_eventos */
        $datos_historial_acciones = [
            'ID_evento' => $this->n_evento,
            'F_accion' => date('y-m-d'),
            'Nombre_usuario' => Auth::user()->name,
            'Accion_realizada' => "Creación de evento.",
            'Descripcion' => "Evento creado de manera automatica",
        ];

        sigmel_historial_acciones_eventos::on('sigmel_gestiones')->insert($datos_historial_acciones);

        // Insertar informacion en la tabla sigmel_informacion_historial_accion_eventos

        $datos_historial_accion_eventos = [
            'Id_Asignacion' => $Id_Asignacion,
            'ID_evento' => $this->n_evento,
            'Id_proceso' => $this->request->proceso,
            'Id_servicio' => $this->request->servicio,
            'Id_accion' => $id_accion_ejecutar->Id_Accion,
            'Documento' => 'N/A',
            'Descripcion' => "Evento creado de manera automatica",
            'Nombre_usuario' => Auth::user()->name,
            'F_accion' => date('y-m-d')
        ];

        sigmel_informacion_historial_accion_eventos::on('sigmel_gestiones')->insert($datos_historial_accion_eventos);

        return $this;
    }

    /**
     * Finaliza el registro creando la carpeta  del evento y registrando el consumo dentro de auditorias
     * @return This
     */
    private function finalizar_registro(){
        $path = public_path('Documentos_Eventos/' . $this->n_evento);

        // Verificar si el directorio ya existe
        if (!File::exists($path)) {
            $mode = 0777; // Permiso deseado para el directorio

            // Crear el directorio con los permisos especificados
            File::makeDirectory($path, $mode, true, true);
            
        } 

        $this->ejecutar_auditoria("ejecutado");
    }

    /**
     * Genera un registro dentro de auditorias con el estado en ejecucion
     * @param String Estado de la ejecucion
     */
    private function ejecutar_auditoria(string $estado_ejecucion){
        $data_auditoria = [
            "UUID" => $this->uuid,
            "nombre_servicio" => "radicar evento",
            "estado_ejecucion" => $estado_ejecucion,
            "ip_cliente" => $this->request->ip(),
            "id_evento" =>  $this->n_evento,
            "fecha" => date('y-m-d h:i:s')
        ];

        $data_auditoria = array_merge($data_auditoria,$this->request->all());

        DB::table(getDatabaseName('sigmel_auditorias') . "sigmel_auditorias_sigmelWS_radicarEvento")->insert($data_auditoria);
    }

    /**
     * Actualiza las validaciones para una seccion en especifico
     * @param String $target seccion a actualizar
     * @return This
     */
    private function actualizar_validaciones(string $target)
    {
        $this->ejecutar_validaciones = [];
        $transformarReglas = function($reglas) {
            return array_map(function ($rule) {
                return $rule === 'nullable' ? 'required' : $rule;
            }, $reglas);
        };

        foreach ($this->validaciones[$target] as $campo => $atributos) {
            if ($target == "Afiliado") {
                if($this->request->input("tipo_afiliado") == 2 && strpos($campo,"beneficiario")){
                    $this->ejecutar_validaciones[$campo] = $transformarReglas($atributos['validar']);
                }else if($this->request->input("apoderado") == 1 && strpos($campo,"apoderado")){
                    $this->ejecutar_validaciones[$campo] = $transformarReglas($atributos['validar']);
                }
            }else{
                $this->ejecutar_validaciones[$campo] = $transformarReglas($atributos['validar']);
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

    /**
     * Invoca las acciones disponibles para cada campo que se este operando
     * @param Array Listado de acciones
     * @param String Campo que se esta evaluando
     */
    private function invocar_acciones(array $acciones, string $campo)
    {
        foreach ($acciones as $accion => $valores) {
            if (method_exists($this, $accion)) {
                $this->$accion($campo, $valores);
            }
        }
    }

    /**
     * Accion de validar que el servicio seleccionado pertenezca al proceso que le corresponde
     * @var String Campo sobre el cual se esta operando la accion
     * @var Array|String Atributos sobre los cuales estara interactuando la accion
     * @return void
     */
    private function validar_servicio($campo, $target){
        if($this->request->input("servicio") != $this->request->servicio){
            return;
        }

        if (isset($target[$this->request->proceso]) && !in_array($this->request->servicio, $target[$this->request->proceso])) {
    
            $this->estado_ejecucion = "Fallo";
            $this->msg_validacion = $this->getMensaje(101, [
                "campos_faltantes" => "El servicio seleccionado no corresponde al proceso {$this->request->proceso} seleccionado. Por favor verifique."
            ]);
    }
    }

    /**
     * Accion de homologar los valores obtenidos de acuerdo a los valores esperados por sigmel
     * @var String Campo sobre el cual se esta operando la accion
     * @var Array|String Atributos sobre los cuales estara interactuando la accion
     * @return void
     */
    private function remplazar($campo, $target):void
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

    /**
     * Funcion basica para imprimir valores en caso de debug
     * @return Void
     */
    private function debug($debug):void{
        if(is_array($debug)){
            echo "<pre>";
            print_r($debug);
            echo "</pre>";
        }else{
            echo "$debug \n";
        }
    }
}
