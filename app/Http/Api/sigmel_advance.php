<?php

namespace App\Http\Api;

use App\Console\Commands\registrarAdvance;
use App\Http\Api\sigmel_wsController;
use App\Contracts\Api;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use App\Models\sigmel_informacion_asignacion_eventos;
use App\Models\sigmel_auditorias_informacion_accion_eventos;
use App\Models\sigmel_informacion_registro_advance;
use App\Models\sigmel_informacion_correspondencia_eventos;
use App\Models\sigmel_informacion_pagos_honorarios_eventos;
use App\Models\sigmel_informacion_comunicado_eventos;
use Illuminate\Support\Facades\DB;

class sigmel_advance extends sigmel_wsController implements Api
{
    protected $ejecutar_validaciones = [
        "id_evento" => "required",
        'integer',
        'id_servicio' => 'required','integer'
    ];

    /** @var Array Contiene los servicios para los cuales se les permitira la consulta del evento */
    protected $servicios_disponibles = [
        6  => "pcl",
        7  => "pcl",
        13 => "juntas"
    ];

    protected $response = [
        "respuesta_ws" => [
            "id_evento" => [
                "get_var" => ["&parent:id_evento"]
            ],
            "id_asignacion" => [
                "get_var" => ["&parent:id_asignacion"]
            ],
            "nombre_servicio" => [
                "get_info" => ["servicio:Nombre_servicio", "id_evento"]
            ],
            "consecutivo" => [
                "get_info" => ["evento:N_siniestro","id_evento"]
            ],
            "tipoId" => [
                "get_info" => ["afiliado:Nombre_parametro", "id_evento"]
            ],
            "numeroId" => [
                "get_info" => ["afiliado:Nro_identificacion", "id_evento"]
            ],
            "nit_empleador" => [
                "get_info" => ["laboral:Nit_o_cc", "id_evento"]
            ],
            /*"dictamen_firme" => [
                "dictamen_firme" => [[
                    6  => 1,
                    7  => 3,
                    13 => 84
                ], [
                    "mensaje" => [
                        6 => "PRIMERA OPORTUNIDAD PROTECCIÓN",
                        7 => "PRIMERA OPORTUNIDAD PROTECCIÓN",
                        13 => "JUNTA REGIONAL"
                    ]
                ]]
            ],
            "estado" => [
                "estado_servicio" => [
                    "validaciones" => [
                        "val_1" => [
                            "condiciones" => [
                                "excluir_acciones:4",
                                "service:6,7",
                                "excluir_servicio:13"
                            ],
                            "mensaje_ok" => "EN PROCESO CALIFICACIÓN PCL"
                        ],
                        "val_2" => [
                            "condiciones" => [
                                "buscar_acciones:4",
                                "service:6,7",
                                "excluir_servicio:8",
                                //"excluir_acciones:"
                            ],
                            "mensaje_ok" => "EN PROCESO CONTROVERSIA PRIMERA OPORTUNIDAD"
                        ],
                        "val_3" => [
                            "condiciones" => [
                                "buscar_acciones:5",
                                "service:6",
                                "excluir_servicio:13",
                                "excep:2,4"
                            ],
                            "mensaje_ok" => "FINALIZADO PRIMERA OPORTUNIDAD"
                        ],
                        "val_4" => [
                            "condiciones" => [
                                "buscar_acciones:5",
                                "service:6",
                                "excluir_servicio:13",
                                "excep:2,4"
                            ],
                            "mensaje_ok" => "EN PROCESO JRCI"
                        ],
                        "val_5" => [
                            "condiciones" => [
                                "buscar_acciones:5",
                                "service:6",
                                "excluir_servicio:13",
                                "excep:2,4"
                            ],
                            "mensaje_ok" => "FINALIZADO EN JRCI"
                        ],
                        "val_6" => [
                            "condiciones" => [
                                "buscar_acciones:5",
                                "service:6",
                                "excluir_servicio:13",
                                "excep:2,4"
                            ],
                            "mensaje_ok" => "EN PROCESO JNCI"
                        ],
                        "val_7" => [
                            "condiciones" => [
                                "buscar_acciones:5",
                                "service:6",
                                "excluir_servicio:13",
                                "excep:2,4"
                            ],
                            "mensaje_ok" => "FINALIZADO JNCI"
                        ]
                    ]
                ]
            ],
            "iniciar_solicitud_invalidez" => "",
            "tipo_modelo" => "",
            "f_firmeza_dictamen" => "",
            "f_notificacion_efectiva_empleador" => "",
            "f_firmeza_notificacion_empleador" => "",
            "f_notificacion_efectiva_arl" => "",
            "f_firmeza_notificacion_arl" => "",
            "f_notificacion_efectiva_eps" => "",
            "f_firmeza_notificacion_eps" => "",
            "f_notificacion_efectiva_afiliado" => "",
            "f_firmeza_notificacion_afiliado" => "",
            "f_recepcion_constancia_ejecutoria" => "",
            "f_recepcion_dictamen_jn" => "",
            "f_solicitud_firmeza_1" => "",
            "dictamen_firme_1" => [
                "get_var" => ["&parent:dictamen_firme"]
            ],*/

        ],
        "pcl" => [
            "f_share_point" => [
                "get_info" => ["evento:F_radicacion", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "oficina_radica" => "",
            "f_primera_cita" => [
                "get_info" => ["calificacion_pcl:F_primera_cita", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "ips_reprogramo" => [
                "buscar_accion" => ["51", "id_evento", "ejecuto_accion"]
            ],
            "f_segunda_cita" => [
                "get_info" => ["calificacion_pcl:F_segunda_cita", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_notificacion_pendientes" => [
                "get_correspondencia" => ["F_notificacion", "Documento_PCL", "estado_general:357,358","Afiliado"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_recepcion_pendientes" => [
                "buscar_accion" => ["45", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_notifi_cierre_administrativo" => [
                "buscar_accion" => ["6,7,8,10,11,14,33,34,35,36,37", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_emision_dictamen_ips" => [
                "get_info" => ["comite:F_visado_comite", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "perdida_capacidad_laboral" => [
                "get_info" => ["decretos:Porcentaje_pcl", "id_evento"],
                "formatear" => ["concatenar:%"]
            ],
            "f_estructuracion" => [
                "get_info" => ["decretos:F_estructuracion", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "origen" => [
                "get_info" => ["origen_decreto", "id_evento"],
            ],
            "f_notifi_dictamen" => [
                "get_correspondencia" => ["F_notificacion", "Oficio", "estado_general:357,358"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_solicitud_consolidada" => [
                "fin_solicitud_consilidada" => ""
            ],
            "Dictamen_firme" => [
                "get_info" => ["advance:Dictamen_Firme", "id_evento"],
            ],
            "Estado" => [
                "get_info" => ["advance:Estado_Firmeza", "id_evento"],
            ],
            "iniciar_solicitud_invalidez" => [
                "get_info" => ["decretos:Porcentaje_pcl", "id_evento"],
                "formatear" => ["comparar:50",">="]
            ],
            "tipo_modelo" => [
                "get_var" => ["&parent:iniciar_solicitud_invalidez"],
                "get_var" => ["remplazar:No es invalido No se puede radicar,Modelo Nuevo - Debe Radicar"]
            ],
            "f_firmeza_dictamen" => [
                "buscar_accion" => ["37", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_notificacion_efectiva_empleador" => [
                "get_correspondencia" => ["F_notificacion", "Oficio", "estado_general:357,358","Empleador"]
            ],
            "f_firmeza_notifi_empleador" => [
                "get_correspondencia" => ["F_notificacion", "Firmeza_PCL", "estado_general:357,358","Empleador"]
            ],
            "f_notificacion_efectiva_arl" => [
                "get_correspondencia" => ["F_notificacion", "Oficio", "estado_general:357,358","arl"]
            ],
            "f_firmerza_notifi_arl" => [
                "get_correspondencia" => ["F_notificacion", "Firmeza_PCL", "estado_general:357,358","arl"]
            ],
            "f_notificacion_efectiva_eps" => [
                "get_correspondencia" => ["F_notificacion", "Oficio", "estado_general:357,358","eps"]
            ],
            "f_firmerza_notifi_eps" => [
                "get_correspondencia" => ["F_notificacion", "Firmeza_PCL", "estado_general:357,358","eps"]
            ],
            "f_notificacion_efectiva_afiliado" => [
                "get_var" => ["&parent:f_notifi_dictamen"]
            ],
            "f_firmerza_notifi_afiliado" => [
                "get_correspondencia" => ["F_notificacion", "Firmeza_PCL", "estado_general:357,358","Afiliado"]
            ],
            "f_constancia_ejecutoria" => "",
            "f_recepcion_dictamen_jn" => "",
            "f_solicitud_firmeza_1" => [
                "buscar_accion" => ["88", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "dictamen_firme_1" => [
                "get_var" => ["&parent:Dictamen_firme"]
            ],
            "tramo_paralelo" => [
                "get_info" => ["desencadenador:Accion", "id_evento"],
            ]
        ],
        "juntas" => [
            "f_recepcion_apelacion_oficina" => [
                "get_info" => ["juntas:F_contro_radi_califi", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_pago_jr" => [
                "info_honorarios" => 4,"F_pago_honorarios",
                "formatear" => ["date:d/m/Y"]
            ],
            "f_envio_expediente_junta" => [
                "get_info" => ["juntas:F_envio_jrci", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_recepcion_expediente_junta" => [
                "buscar_accion" => ["61", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "jr_devuelve_expediente" => [
                "buscar_accion" => ["64,81,82", "id_evento", "ejecuto_accion"],
            ],
            "f_devolucion_expediente" => [
                "get_info" => ["juntas:F_devolucion_exp_jrci", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "causal_devolucion_expediente" => [
                "get_info" => ["juntas:Causal_devo_exp_jrci", "id_evento"],
            ],
            "f_nuevo_envio_expediente" => [
                "get_info" => ["juntas:F_reenvio_exp_jrci", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "nombre_examen" => "",
            "f_solicitud_examen_j" => "",
            "f_envio_examen_j" => "",
            "f_recepcion_dictamen_jr_pr" => [
                "get_info" => ["juntas:F_radica_dictamen_jrci", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_estructuracion" => [
                "get_info" => ["juntas:f_estructuracion_contro_jrci_emitido", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "origen" => [
                "get_info" => ["origen_jrci", "id_evento"],
            ],
            "pcl" => [
                "get_info" => ["juntas:porcentaje_pcl_jrci_emitido", "id_evento"],
                "formatear" => ["concatenar:%"]
            ],
            "avalo_ips" => [
                "get_info" => ["aval_ips:Decision_dictamen_jrci", "id_evento"],
            ],
            "f_envio_dictamen_ips" => [
                "buscar_accion" => ["22", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_radicacion_recurso_jr" => [
                "buscar_accion" => ["61", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_radicacion_dep_1" => [
                "buscar_accion" => ["66", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_respuesta_dep_1" => "",
            "f_radicacion_dep_2" => [
                "buscar_accion" => ["68", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_respuesta_dep_2" => "",
            "f_radicacion_tutela_jz" => "",
            "f_fallo" => "",
            "f_solicitud_ejecutoria_jr" => [
                "buscar_accion" => ["70", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_recepcion_ejecutoria_jr" => [
                "get_info" => ["juntas:f_acta_ejecutoria_emitida_jrci", "id_evento"],
            ],
            "f_aviso_pago_jn" => [
                "get_info" => ["juntas:f_soli_pago_hono_jnci", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_pago_honorarios_jn" => [
                "info_honorarios" => 5,
                "F_pago_honorarios",
                "formatear" => ["date:d/m/Y"]
            ],
            "f_cita_jn" => [
                "get_info" => ["juntas:f_cita_jnci", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "derecho_peticion_expediente_jr" => [
                "buscar_accion" => ["75", "id_evento", "get_column:F_accion"],
                "formatear" => ["date:d/m/Y"]
            ],
            "f_solicitud_examen_junta_1" => "",
            "f_resultado_examen_junta_1" => "",
            //"f_recepcion_dictamen_jn_pr" => "¿?",
            "f_estructuracion_1" => [
                "get_info" => ["juntas:f_estructuracion_contro_jnci_emitido", "id_evento"],
                "formatear" => ["date:d/m/Y"]
            ],
            "origen_1" => [
                "get_info" => ["origen_jnci", "id_evento"],
            ],
            "pcl_1" => [
                "get_info" => ["juntas:porcentaje_pcl_jnci_emitido", "id_evento"],
                "formatear" => ["concatenar:%"]
            ],
            "estado_solicitud_jr" => [
                "get_ultima_accion" => ["Accion", "76,97,98"]
            ],
            "estado_solicitud_jn" => [
                "buscar_accion" => ["76,97,98", "id_evento", "get_column:Accion"],
            ],
        ]
    ];

    protected $id_evento;

    protected $id_servicio;

    protected $id_asignacion;

    protected $validacion_procesada;

    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->validar();
    }

    protected function estado_servicio($campo, $validaciones)
    {
        foreach ($validaciones as $nombre => $config) {
            //echo "procesando $nombre - {$this->id_asignacion} \n";
            //$this->debug($config);
            if ($this->evaluarCondiciones($config['condiciones'])) {
                if(isset($config["mensaje_ok"])){
                    echo "paso {$this->id_asignacion} -  $nombre  {$config['mensaje_ok']} \n"; break;
                }else{
                    echo "paso {$this->id_asignacion} $nombre Paila \n";
                }
            }else{
                continue;
            }   
        }
    }

    protected function evaluarCondiciones($condiciones): mixed
    {
        $opciones = [
            "buscar_acciones" => fn($accion,$servicios) => $this->buscar_accion(null,$accion,null,"bool",$servicios,false),
            "excluir_acciones" => fn($accion,$servicios) => !$this->buscar_accion(null,$accion,null,"bool",$servicios,false),
            //"service" => $this->buscarServicio($valor),
            //"unique" => $this->servicioUnico(),
            //"excep" => $this->tieneExcepcion($valor),
            "excluir_servicio" => function($rechazar_servicio){
                $servicios = $this->getServicios();
                return in_array($rechazar_servicio,$servicios) ? false : true;
            }
        ];
        $respuesta_validacion = true;
        foreach ($condiciones as $condicion) {
            [$tipo, $valor] = explode(":", $condicion) + [null, null];
            if(isset($opciones[$tipo])){
                if(is_callable($opciones[$tipo])){
                    $respuesta_validacion = $opciones[$tipo]($valor,$condiciones["service"] ?? null);
                    //$this->debug(["res" => $tipo,$respuesta_validacion]);
                }else{
                    $respuesta_validacion = $opciones[$tipo];
                }
                if(!$respuesta_validacion) break;
            }
        }
       
        return $respuesta_validacion;
    }
    
    protected function getServicios() {
        return sigmel_informacion_asignacion_eventos::on('sigmel_gestiones')
            ->select("Id_servicio", "Id_Asignacion")
            ->where("ID_evento", $this->id_evento)->pluck('Id_servicio')->toArray();
    }

    protected function dictamen_firme($campo, $servicios, $mensajes)
    {
        if (in_array($this->id_servicio, array_keys($servicios))) {
            $id_acciones = $servicios[$this->id_servicio];
            $accion = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_historial_accion_eventos as sihae')
                ->leftJoin('sigmel_gestiones.sigmel_informacion_acciones as sia', 'sia.Id_Accion', '=', 'sihae.Id_accion')
                ->select("sihae.Id_accion", "sihae.F_accion")
                ->where('sihae.Id_Asignacion', $this->id_asignacion)->whereIn("sihae.Id_accion", [$id_acciones])
                ->orderBy('sihae.F_accion', 'desc')->first();

            $respuesta = !empty($accion) && isset($mensajes["mensaje"][$this->id_servicio]) ? $mensajes["mensaje"][$this->id_servicio] : "Sin nada";
        }

        $this->request->merge([$campo => $respuesta ?? '']);
    }

    protected function get_ultima_accion($campo, $get_campo, $excepciones = null)
    {
        $accion = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_historial_accion_eventos as sihae')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_acciones as sia', 'sia.Id_Accion', '=', 'sihae.Id_accion')
            ->select($get_campo)
            ->where([['sihae.ID_evento', $this->id_evento], ["Id_servicio", $this->id_servicio]]);


        if ($excepciones != null) {
            $id_acciones = explode(",", $excepciones);
            $accion->whereNotIn("sihae.Id_accion", $id_acciones);
        }

        $accion = $accion->orderBy('sihae.F_accion', 'desc')->first();

        $this->request->merge([$campo => $accion->$get_campo ?? '']);
    }

    protected function info_honorarios($campo, $tipo_entidad)
    {
        $pago_honorarios = sigmel_informacion_pagos_honorarios_eventos::on('sigmel_gestiones')
            ->select(
                'Id_pago',
                'F_solicitud_pago',
                'sie.Nombre_entidad as JuntaPago',
                'N_orden_pago',
                'Valor_pagado',
                'F_pago_honorarios',
                'F_pago_radicacion'
            )
            ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as pa', 'Tipo_pago', '=', 'pa.Id_Parametro')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as sie', 'Pago_junta', '=', 'sie.Id_Entidad')
            ->where([
                ['ID_evento',  '=', $this->id_evento],
                ['Id_Asignacion', $this->id_asignacion],
                ['IdTipo_entidad', $tipo_entidad]
            ])->orderBy("Id_pago", "desc")->first();

        $this->request->merge([$campo => $pago_honorarios->F_pago_honorarios ?? ""]);
    }

    protected function fin_solicitud_consilidada($campo, $target)
    {
        $fecha = !empty($this->request->f_notifi_cierre_administrativo) ?
            $this->request->f_notifi_cierre_administrativo : $this->request->f_notifi_dictamen;

        $this->request->merge([$campo => $fecha]);
    }

    protected function get_correspondencia($campo, $target, $tipo_comunicado, $filtro = null,$tipo_correspondencia = "Afiliado")
    {
        $filtros = [
            "estado_general" => function ($var) {
                return ["Estado_Notificacion", explode(",", $var)];
            }
        ];

        $comunicado = sigmel_informacion_comunicado_eventos::on('sigmel_gestiones')->select('Id_Comunicado')
            ->where([
                ['Tipo_descarga', $tipo_comunicado],
                ['Id_Asignacion', $this->id_asignacion],
                ['Correspondencia','LIKE', "%$tipo_correspondencia%"]
            ]);

        if ($filtro != null) {
            list($aplicar, $valores) = explode(":", $filtro);
            if (isset($filtros[$aplicar])) {
                list($columna, $valores) = $filtros[$aplicar]($valores);
                $comunicado->whereIn($columna, $valores);
            }
        }

        $comunicado = $comunicado->max('Id_Comunicado');
        //$this->debug([$comunicado, $target, $tipo_comunicado, $filtro,$tipo_correspondencia]);
        if (!empty($comunicado)) {
            $correspondencia = sigmel_informacion_correspondencia_eventos::on('sigmel_gestiones')->select($target)->where([
                ["Id_comunicado", $comunicado],
                //["Tipo_destinatario", $tipo_correspondencia]
            ])->first();
        }

        $this->request->merge([$campo => $correspondencia->$target ?? ""]);
    }

    /**
     * Busca si una acción determinada ya fue ejecutada para el evento indicado, y evalúa la acción especificada.
     * 
     * @param string $campo Campo en el que se almacenará el resultado.
     * @param string $acciones Acción a buscar.
     * @param string $id_evento Evento a consultar.
     * @param string $evaluar Acción a realizar en caso de que la acción buscada se encuentre o no.
     */
    protected function buscar_accion($campo, $acciones, $id_evento, $evaluar, $servicio = null,$setear = true)
    {
        $determinar = [
            "ejecuto_accion" => fn($var) => $var ? 1 : 0,
            "bool" => fn($var) => $var ? true : false,
            "get_column" => fn($accion, $columna) => $accion->$columna ?? '',
            "frase" => fn($accion, $str) => $accion ? $str : ""
        ];

        $acciones = explode(",", explode(":", $acciones)[0]);
        $resolver = explode(":", $evaluar);

        $accion = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_historial_accion_eventos as sihae')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_acciones as sia', 'sia.Id_Accion', '=', 'sihae.Id_accion')
            ->select("*")
            ->where([['sihae.ID_evento', $this->id_evento], ['Id_Asignacion', $this->id_asignacion]])
            ->whereIn("sihae.Id_accion", $acciones);

        if ($servicio != null) {
            if (is_array($servicio)) {
                $accion->whereIn("sihae.Id_servicio", $servicio);
            } else {
                $accion->where("sihae.Id_servicio", $servicio);
            }
        }

        $accion = $accion->orderBy("sihae.F_accion", "desc")->first();

        $resultado = $determinar[$resolver[0]]($accion, $resolver[1] ?? null) ?? $resolver[0];

        if($setear) $this->request->merge([$campo => $resultado ?? ""]);

        return $resultado;
    }

    public function registrar($formato = 'json'): JsonResponse|Array
    {
        try {

            if ($this->estado_ejecucion == "Fallo") {
                Log::channel('log_api')->error("Comsumo errado: ", $this->request->all());
                return response()->json($this->msg_validacion);
            }

            $response = Cache::lock("runtime_sigmel_advance1")->block(10, function () {
                return $this->procesar_solicitud();
            });

            return $formato == 'json' ? response()->json($response) : $response;
        } catch (\Throwable $th) {

            Log::channel('log_api')->error("Error inesperado: " . $th->getMessage(), [
                "Archivo: " => $th->getFile(),
                "Linea: " => $th->getLine(),
                "Trace" => $th->getTrace()
            ]);

            // $this->ejecutar_auditoria("Errado");

            return $formato == 'json' ? response()->json($this->getMensaje("general", 000)) : $this->getMensaje("general", 000);
        }
    }

    private function procesar_solicitud()
    {
        $servicios = sigmel_informacion_asignacion_eventos::on('sigmel_gestiones')
            ->select("Id_servicio", "Id_Asignacion")
            ->where([
                ["ID_evento", $this->request->id_evento],
                ['Id_servicio', $this->request->id_servicio]
                ])->orderBy('Id_Asignacion','ASC')->first();

        if(!empty($servicios) && isset($this->servicios_disponibles[$servicios->Id_servicio])){
            $this->id_evento = $this->request->id_evento;
            $this->id_servicio = $servicios->Id_servicio;
            $this->id_asignacion = $servicios->Id_Asignacion;
            $nombre_servicio = $this->servicios_disponibles[$servicios->Id_servicio];
            $this->validaciones_dinamicas[$nombre_servicio] = $this->response[$nombre_servicio];
            $this->validaciones_dinamicas["general"] = $this->response["respuesta_ws"];

            $this->validar(true);
            $info_general = $this->request->only(array_keys($this->response["respuesta_ws"]));
            $info_procesada = $this->request->only(array_keys($this->validaciones_dinamicas[$nombre_servicio]));

            $respuesta_solicitud = array_merge($info_general, $info_procesada);

        }else{
            $respuesta_solicitud = "El evento no aun no cuenta con servicios de PCL o Controversia PCL por el momento.";
        }

        return $this->getMensaje("general", 102, [
            "Respuesta" => $respuesta_solicitud
        ]);
    }

    public function notificar_peticiones(){
        $response = sigmel_informacion_registro_advance::select('ID_Asignacion','ID_evento','ID_servicio','Fecha_Ejecucion','Acta_firmeza','Estado_Ejecucion','Dictamen_firme')
        ->where('Usuario',Auth::user()->name)
        ->whereIn('Estado_Ejecucion',['errado','notificar'])->get();

        return response()->json($response);
    }

    public function finalizar_notificacion(Request $request){
        $request->validate([
            "ids" => 'required|Array'
        ]);
  
        sigmel_informacion_registro_advance::whereIn('ID_Asignacion',$request->ids)
        ->Where([['Estado_Ejecucion','!=','errado'],['Usuario',Auth::user()->name]])->update(['Estado_Ejecucion' => 'ejecutado']);

        sigmel_informacion_registro_advance::whereIn('ID_Asignacion',$request->ids)
        ->Where([['Estado_Ejecucion','errado'],['Usuario',Auth::user()->name]])->update(['Estado_Ejecucion' => 'notificado y errado']);
    }

}
