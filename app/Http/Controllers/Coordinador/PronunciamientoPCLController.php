<?php

namespace App\Http\Controllers\Coordinador;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\File;
use PDF;
use Illuminate\Support\Facades\Validator;

use App\Http\Requests\CargarDocRequest;

//Cargar Modelos
use App\Models\sigmel_lista_entidades;
use App\Models\sigmel_informacion_entidades;
use App\Models\sigmel_lista_parametros;
use App\Models\sigmel_lista_tipo_eventos;
use App\Models\sigmel_lista_regional_juntas;
use App\Models\sigmel_informacion_pronunciamiento_eventos;
use App\Models\sigmel_informacion_diagnosticos_eventos;
use App\Models\sigmel_informacion_comunicado_eventos;
use App\Models\sigmel_auditorias_pronunciamiento_eventos;
use App\Models\sigmel_clientes;
use App\Models\sigmel_informacion_afiliado_eventos;
use App\Models\sigmel_informacion_asignacion_eventos;
use App\Models\sigmel_informacion_eventos;
use App\Models\sigmel_informacion_comite_interdisciplinario_eventos;
use App\Models\sigmel_informacion_firmas_clientes;
use App\Models\sigmel_registro_descarga_documentos;
use App\Services\GlobalService;
use App\Traits\GenerarRadicados;

use SimpleSoftwareIO\QrCode\Facades\QrCode;
use PhpOffice\PhpWord\PhpWord;
use PhpOffice\PhpWord\Writer\Word2007;
use PhpOffice\PhpWord\Shared\Html;
use PhpOffice\PhpWord\Style\Image;
use Html2Text\Html2Text;
use Mockery\Undefined;
use PhpOffice\PhpWord\Shared\Converter;

class PronunciamientoPCLController extends Controller
{
    use GenerarRadicados;
    protected $globalService;

    public function __construct(GlobalService $globalService)
    {
        $this->globalService = $globalService;
    }

    // TODO LO REFERENTE SERVICIO PRONUNCIAMIENTO
    public function mostrarVistaPronunciamiento(Request $request){
        if(!Auth::check()){
            return redirect('/');
        }
        $user = Auth::user();
        $date=date("Y-m-d");
        $Id_evento_calitec=$request->Id_evento_pcl;
        $Id_asignacion_calitec = $request->Id_asignacion_pcl;
        $array_datos_pronunciamientoPcl = DB::select('CALL psrcalificacionpcl(?)', array($Id_asignacion_calitec));
        //Traer info informacion pronunciamiento
        $info_pronuncia= DB::table(getDatabaseName('sigmel_gestiones') .'sigmel_informacion_pronunciamiento_eventos as pr')
        ->select('pr.ID_evento', 'pr.Id_Asignacion', 'Id_proceso','pr.Id_primer_calificador','c.Tipo_Entidad','pr.Id_nombre_calificador','e.Nombre_entidad as Nombre_calificador'
        ,'pr.Nit_calificador','pr.Dir_calificador','pr.Email_calificador','pr.Telefono_calificador','pr.Depar_calificador','pr.Ciudad_calificador'
        ,'pr.Id_tipo_pronunciamiento','p.Nombre_parametro as Tpronuncia','pr.Id_tipo_evento','ti.Nombre_evento','pr.Id_tipo_origen','or.Nombre_parametro as T_origen'
        ,'pr.Fecha_evento','pr.Dictamen_calificador','pr.N_siniestro','pr.Fecha_calificador','pr.Fecha_estruturacion','pr.Porcentaje_pcl','pr.Rango_pcl'
        ,'pr.Decision','pr.Fecha_pronuncia','pr.Asunto_cali','pr.Sustenta_cali','pr.Destinatario_principal','pr.Tipo_entidad','pr.Nombre_entidad','pr.Copia_afiliado','pr.copia_empleador','pr.Copia_eps'
        ,'pr.Copia_afp','pr.Copia_arl','pr.Copia_Afp_Conocimiento','pr.Copia_junta_regional','pr.Copia_junta_nacional','pr.Junta_regional_cual','j.Ciudad_Junta'
        ,'pr.N_anexos','pr.Elaboro_pronuncia','pr.Reviso_Pronuncia','pr.Ciudad_correspon','pr.N_radicado','pr.Firmar','pr.Fecha_correspondencia'
        ,'pr.Archivo_pronuncia')
        ->leftJoin('sigmel_gestiones.sigmel_lista_entidades as c', 'c.Id_Entidad', '=', 'pr.Id_primer_calificador')
        ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as e', 'e.Id_Entidad', '=', 'pr.Id_nombre_calificador')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as p', 'p.Id_Parametro', '=', 'pr.Id_tipo_pronunciamiento')
        ->leftJoin('sigmel_gestiones.sigmel_lista_tipo_eventos as ti', 'ti.Id_Evento', '=', 'pr.Id_tipo_evento')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as or', 'or.Id_Parametro', '=', 'pr.Id_tipo_origen')
        ->leftJoin('sigmel_gestiones.sigmel_lista_regional_juntas as j', 'j.Id_juntaR', '=', 'pr.Junta_regional_cual')
        ->where([
            ['pr.ID_evento', '=', $Id_evento_calitec],
            ['pr.Id_Asignacion', '=', $Id_asignacion_calitec]
        ])
        ->get();
        
        $array_datos_diagnostico_motcalifi =DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_diagnosticos_eventos as side')
        ->select('side.Id_Diagnosticos_motcali', 'side.CIE10', 'slcd.CIE10 as Codigo', 'side.Nombre_CIE10', 'side.Origen_CIE10', 
        'slp.Nombre_parametro', 'side.Deficiencia_motivo_califi_condiciones','slp2.Nombre_parametro as Nombre_parametro_lateralidad')
        ->leftJoin('sigmel_gestiones.sigmel_lista_cie_diagnosticos as slcd', 'slcd.Id_Cie_diagnostico', '=', 'side.CIE10')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp', 'slp.Id_Parametro', '=', 'side.Origen_CIE10')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp2', 'slp2.Id_Parametro', '=', 'side.Lateralidad_CIE10')
        ->where([
            ['side.Estado', '=', 'Activo'],
            ['side.ID_evento', '=', $Id_evento_calitec],
            ['side.Id_Asignacion', '=', $Id_asignacion_calitec]
        ])
        ->get(); 

        // creación de consecutivo para el comunicado
        $consecutivo = $this->getRadicado('pcl',$Id_evento_calitec);

        $array_comunicados = sigmel_informacion_comunicado_eventos::on('sigmel_gestiones')
        ->where([['ID_evento',$Id_evento_calitec], ['Id_Asignacion',$Id_asignacion_calitec], ['Modulo_creacion','pronunciamientoPCL']])->get();
        foreach ($array_comunicados as $comunicado) {
            if ($comunicado['Nombre_documento'] != null && $comunicado['Tipo_descarga'] != 'Manual') {
                $filePath = public_path('Documentos_Eventos/'.$comunicado->ID_evento.'/'.$comunicado->Nombre_documento);
                if(File::exists($filePath)){
                    $comunicado['Existe'] = true;
                }
                else{
                    $comunicado['Existe'] = false;
                }
            }
            else if($comunicado['Tipo_descarga'] === 'Manual'){
                $filePath = public_path('Documentos_Eventos/'.$comunicado['ID_evento'].'/'.$comunicado['Asunto']);
                if(File::exists($filePath)){
                    $comunicado['Existe'] = true;
                }
                else{
                    $comunicado['Existe'] = false;
                }
            }
            else{
                $comunicado['Existe'] = false;
            }

            if($comunicado["Id_Comunicado"]){
                $comunicado['Estado_correspondencia'] = BandejaNotifiController::estado_Correspondencia($Id_evento_calitec,$Id_asignacion_calitec,$comunicado["Id_Comunicado"]);
            }
            
        }

        // Consultamos si el caso está en la bandeja de Notificaciones
        $array_caso_notificado = BandejaNotifiController::evento_en_notificaciones($Id_evento_calitec,$Id_asignacion_calitec);

        if(count($array_caso_notificado) > 0){
            $caso_notificado = $array_caso_notificado[0]->Notificacion;
        }

        //Traer Información Forma envio
        $datos_medio_notificacion = sigmel_informacion_afiliado_eventos::on('sigmel_gestiones')
        ->select('Medio_notificacion')
        ->where('ID_evento', $Id_evento_calitec)
        ->get();

        $datos_forma_envio = sigmel_lista_parametros::on('sigmel_gestiones')
        ->select('Id_Parametro')
        ->where([
            ['Nombre_parametro', $datos_medio_notificacion[0]->Medio_notificacion],
            ['Tipo_lista', 'Medio de Notificacion']
        ])
        ->get();

        $array_comite_interdisciplinario = sigmel_informacion_comite_interdisciplinario_eventos::on('sigmel_gestiones')
        ->where([
            ['ID_evento',$Id_evento_calitec],
            ['Id_Asignacion',$Id_asignacion_calitec]
        ])
        ->get();
        
        //Traer el N_siniestro del evento
        $N_siniestro_evento = sigmel_informacion_eventos::on('sigmel_gestiones')
        ->select('N_siniestro')
        ->where([['ID_evento',$Id_evento_calitec]])
        ->get();

        $Id_servicio = 9;
        $Id_Asignacion = $Id_asignacion_calitec;
        $arraylistado_documentos = DB::select('CALL psrvistadocumentos(?,?,?)',array($Id_evento_calitec,$Id_servicio,$Id_asignacion_calitec));

        $entidades_conocimiento = $this->globalService->getAFPConocimientosParaCorrespondencia($Id_evento_calitec,$Id_asignacion_calitec);

        /* Traer datos de la AFP de Conocimiento */
        $info_afp_conocimiento = $this->globalService->retornarcuentaConAfpConocimiento($Id_evento_calitec);

        return view('coordinador.pronunciamientoPCL', compact('user','array_datos_pronunciamientoPcl','info_pronuncia','array_datos_diagnostico_motcalifi','consecutivo', 
        'array_comunicados','caso_notificado','N_siniestro_evento', 'datos_forma_envio', 'array_comite_interdisciplinario', 'Id_servicio', 'arraylistado_documentos', 'Id_Asignacion', 'entidades_conocimiento', 'info_afp_conocimiento'));
    
    }
    //Ver Documento Pronuncia
    public function VerDocumentoPronuncia(Request $request){
        $Idevento=$request->Id_evento;
        $nomarchivo=$request->nom_archivo;
        $Id_Asignacion = $request->Id_Asignacion;
        $Id_proceso = $request->Id_proceso;
        $Fecha_correspondencia = $request->Fecha_correspondencia;
        $N_radicado = $request->N_radicado;
        $rutaDocumento = $Idevento. '/' .$nomarchivo;
        $urlDocumentoPr = public_path('Documentos_Eventos/' .$rutaDocumento);
        if (file_exists($urlDocumentoPr)) {

            $time = time();
            $date = date("Y-m-d", $time);
            /* Inserción del registro de que fue descargado */
            // Extraemos el id del servicio asociado
            $dato_id_servicio = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_asignacion_eventos as siae')
            ->select('siae.Id_servicio')
            ->where([
                ['siae.Id_Asignacion', $Id_Asignacion],
                ['siae.ID_evento', $Idevento],
                ['siae.Id_proceso', $Id_proceso],
            ])->get();

            $Id_servicio = $dato_id_servicio[0]->Id_servicio;

            // Se pregunta por el nombre del documento si ya existe para evitar insertarlo más de una vez
            $verficar_documento = sigmel_registro_descarga_documentos::on('sigmel_gestiones')
            ->select('Nombre_documento')
            ->where([
                ['Nombre_documento', $nomarchivo],
            ])->get();
            
            if(count($verficar_documento) == 0){
                $info_descarga_documento = [
                    'Id_Asignacion' => $Id_Asignacion,
                    'Id_proceso' => $Id_proceso,
                    'Id_servicio' => $Id_servicio,
                    'ID_evento' => $Idevento,
                    'Nombre_documento' => $nomarchivo,
                    'N_radicado_documento' => $N_radicado,
                    'F_elaboracion_correspondencia' => $Fecha_correspondencia,
                    'F_descarga_documento' => $date,
                    'Nombre_usuario' => Auth::user()->name,
                ];
                
                sigmel_registro_descarga_documentos::on('sigmel_gestiones')->insert($info_descarga_documento);
            }

            return response()->download($urlDocumentoPr,$nomarchivo);
        } else {
            return response()->json([
                'message' => 'El archivo no existe.',
            ], 404);
        }
    }  
    
    //Cargar Selectores pronunciamiento
    public function cargueListadoSelectoresPronunciamiento(Request $request){
    
        $parametro = $request->parametro;
        // Listado tipo entidad
        if($parametro == 'lista_primer_calificador'){
            $listado_tipo_entidad = sigmel_lista_entidades::on('sigmel_gestiones')
            ->select('Id_Entidad', 'Tipo_Entidad')
            ->where([
                ['Estado', '=', 'activo']
            ])
            ->get();

            $info_listado_tipo_entidad = json_decode(json_encode($listado_tipo_entidad, true));
            return response()->json($info_listado_tipo_entidad);
        }
        // Nombre de entidades
        if($parametro == "lista_nombre_entidad"){
            $datos_nom_enti = sigmel_informacion_entidades::on('sigmel_gestiones')
                ->select('Id_Entidad', 'Nombre_entidad')
                ->where([
                    ['IdTipo_entidad', $request->id_primer_calificador],
                    ['Estado_entidad', 'activo']
                ])
                ->get();

            $informacion_datos_nom_enti = json_decode(json_encode($datos_nom_enti, true));
            return response()->json($informacion_datos_nom_enti);
        }
        // Datos Entidad
        if($parametro == "lista_nombre_entidad_da"){
            $datos_nom_enti_da = DB::table(getDatabaseName('sigmel_gestiones') .'sigmel_informacion_entidades as enti')
                ->select('enti.Nit_entidad','enti.Direccion','enti.Emails','enti.Telefonos'
                ,'d.Nombre_departamento','d.Nombre_municipio')
                ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as d', 'enti.Id_Ciudad', '=', 'd.Id_municipios')
                ->where([
                    ['Id_Entidad', $request->id_primer_calificador_da]
                ])
                ->get();

            $informacion_datos_nom_enti_da = json_decode(json_encode($datos_nom_enti_da, true));
            return response()->json($informacion_datos_nom_enti_da);
        }
        //Lista tipo pronuciamiento
        if($parametro == "lista_tipo_pronuncia"){
            $datos_tipo_pronuncia = sigmel_lista_parametros::on('sigmel_gestiones')
                ->select('Id_Parametro','Nombre_parametro')
                ->where([
                    ['Tipo_lista', '=', 'Tipo pronunciamiento'],
                    ['Estado', '=', 'activo'],
                ])
                ->get();

            $informacion_datos_tipo_pronuncia = json_decode(json_encode($datos_tipo_pronuncia, true));
            return response()->json($informacion_datos_tipo_pronuncia);
        }
        //Lista tipo evento
        if($parametro == "lista_tipo_evento"){
            $datos_tipo_evento = sigmel_lista_tipo_eventos::on('sigmel_gestiones')
                ->select('Id_Evento','Nombre_evento')
                ->where([
                    ['Estado', '=', 'activo']
                ])
                ->get();

            $informacion_datos_tipo_evento = json_decode(json_encode($datos_tipo_evento, true));
            return response()->json($informacion_datos_tipo_evento);
        }
        //Lista tipo origen
        if($parametro == "lista_tipo_origen"){
            $datos_tipo_origen = sigmel_lista_parametros::on('sigmel_gestiones')
                ->select('Id_Parametro','Nombre_parametro')
                ->where([
                    ['Tipo_lista', '=', 'Origen Cie10'],
                    ['Estado', '=', 'activo'],
                ])
                ->get();

            $informacion_datos_tipo_origen = json_decode(json_encode($datos_tipo_origen, true));
            return response()->json($informacion_datos_tipo_origen);
        }
        //Lista juntas regional
        if($parametro == "lista_regional_junta"){
            $datos_tipo_junta = sigmel_lista_regional_juntas::on('sigmel_gestiones')
                ->select('Id_juntaR','Ciudad_Junta')
                ->where([
                    ['Estado', '=', 'activo'],
                ])
                ->get();

            $informacion_datos_tipo_junta = json_decode(json_encode($datos_tipo_junta, true));
            return response()->json($informacion_datos_tipo_junta);
        }

        //Lista lider grupos
        if($parametro == "lista_lider_grupo"){
            // $datos_lider_grupo = DB::table(getDatabaseName('sigmel_gestiones') .'sigmel_usuarios_grupos_trabajos as ug')
            //     ->select('ug.id_equipo_trabajo','li.name')
            //     ->leftJoin('sigmel_sys.users as g', 'ug.id_usuarios_asignados', '=', 'g.id')
            //     ->leftJoin('sigmel_gestiones.sigmel_grupos_trabajos as gr', 'ug.id_equipo_trabajo', '=', 'gr.id')
            //     ->leftJoin('sigmel_sys.users as li', 'gr.lider', '=', 'li.id')
            //     ->where([
            //         ['g.name', $request->nom_usuario_session]
            //     ])
            //     ->get();

            $datos_lider_grupo =DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_grupos_trabajos as sgt')
            ->leftJoin('sigmel_sys.users as ssu', 'ssu.id', '=', 'sgt.lider')
            ->select('ssu.id', 'ssu.name', 'sgt.Id_proceso_equipo')
            ->where([['sgt.Id_proceso_equipo', '=', '1']])->get();

            $informacion_datos_lider_grupo = json_decode(json_encode($datos_lider_grupo, true));
            return response()->json($informacion_datos_lider_grupo);
        }

        // listado de forma de envio
        if ($parametro == "forma_envio") {
            
            $listado_medios_notificacion = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro','Nombre_parametro')
            ->where([
                ['Tipo_lista', '=', 'Medio de Notificacion'],
                ['Estado', '=', 'activo']
            ])
            ->get();
            
            $info_lista_medios_notificacion = json_decode(json_encode($listado_medios_notificacion, true));
            return response()->json($info_lista_medios_notificacion);
        }

        // Listado tipo entidad
        if($parametro == "lista_tipo_entidad"){
            $listado_tipo_entidad = sigmel_lista_entidades::on('sigmel_gestiones')
            ->select('Id_Entidad', 'Tipo_Entidad')
            ->where([
                ['Estado', '=', 'activo']
            ])
            ->get();

            $info_listado_tipo_entidad = json_decode(json_encode($listado_tipo_entidad, true));
            return response()->json($info_listado_tipo_entidad);
        }

        // listado nombre entidad
        if ($parametro == "nombre_entidad") {
            $listado_nombres_entidades = sigmel_informacion_entidades::on("sigmel_gestiones")
            ->select('Id_Entidad', 'Nombre_entidad')
            ->where(
                [['IdTipo_entidad', $request->id_tipo_entidad]]
            )->get();

            $info_listado_nombres_entidades = json_decode(json_encode($listado_nombres_entidades, true));
            return response()->json($info_listado_nombres_entidades);
        }

        //Lista estados notificacion correspondencia
        if($parametro == "EstadosNotificacionCorrespondencia"){
            $datos_status_notificacion_correspondencia = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro','Nombre_parametro')
            ->where([
                ['Tipo_lista', '=', 'Estatus_Correspondencia'],
                ['Estado', '=', 'activo']
            ])
            ->get();

            $datos_status_notificacion_corresp = json_decode(json_encode($datos_status_notificacion_correspondencia, true));
            return response()->json($datos_status_notificacion_corresp);
        }

        if ($parametro == "docs_complementarios") {

            $datos_tipos_documentos_familia = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_lista_documentos as sld')
            ->leftJoin('sigmel_gestiones.sigmel_registro_documentos_eventos as srde', 'sld.Id_Documento', '=', 'srde.Id_Documento')
            ->select('sld.Nro_documento', 'sld.Nombre_documento')
            ->where([
                ['srde.ID_evento', $request->evento],
                ['srde.Id_servicio', $request->servicio],
                ['srde.Id_Documento', $request->tipo_correspondencia],
                ['sld.Estado', 'activo']
            ])
            // ->whereIn('srde.Id_Documento', [19, 20, 21, 22, 23])
            ->groupBy('sld.Nro_documento')
            ->get();

            $info_datos_tipos_documentos_familia = json_decode(json_encode($datos_tipos_documentos_familia, true));
            return response()->json($info_datos_tipos_documentos_familia);
        }

    
    }

    //Guardar o actualizar informacion pronunciamiento
    public function guardarInfoServiPronuncia(Request $request){
    
        if(!Auth::check()){
            return redirect('/');
        }
        $datetime = date("Y-m-d h:i:s");
        $date=date("Y-m-d");
        $nombre_usuario = Auth::user()->name;
        $Id_EventoPronuncia = $request->Id_EventoPronuncia;
        $Id_ProcesoPronuncia = $request->Id_ProcesoPronuncia;
        $Id_Asignacion_Pronuncia = $request->Id_Asignacion_Pronuncia;
        // Captura del array de los datos de la tabla
        
        $array_diagnosticos_motivo_calificacion = json_decode($request->datos_finales_diagnosticos_moticalifi);

       /* if(!empty($request->otro_calificador)){
            sigmel_informacion_entidades::on('sigmel_gestiones')->insert([
                'IdTipo_entidad' => 6,
            ]);
        }*/

        // Iteración para extraer los datos de la tabla y adicionar los datos de Id evento, Id asignacion y Id proceso
        //Valida que no este vacio el CIE10
        if(!empty($array_diagnosticos_motivo_calificacion)){
            $array_datos_organizados = [];
            foreach ($array_diagnosticos_motivo_calificacion as $subarray_datos) {

                array_unshift($subarray_datos, $request->Id_ProcesoPronuncia);
                array_unshift($subarray_datos, $request->Id_Asignacion_Pronuncia);
                array_unshift($subarray_datos, $request->Id_EventoPronuncia);

                $subarray_datos[] = $nombre_usuario;
                $subarray_datos[] = $date;

                array_push($array_datos_organizados, $subarray_datos);
            }
            // Creación de array con los campos de la tabla: sigmel_informacion_diagnosticos_eventos
            $array_tabla_diagnosticos_motivo_calificacion = ['ID_evento','Id_Asignacion','Id_proceso',
            'CIE10','Nombre_CIE10','Lateralidad_CIE10','Origen_CIE10','Deficiencia_motivo_califi_condiciones',
            'Nombre_usuario','F_registro'];
            // Combinación de los campos de la tabla con los datos
            $array_datos_con_keys = [];
            foreach ($array_datos_organizados as $subarray_datos_organizados) {
                array_push($array_datos_con_keys, array_combine($array_tabla_diagnosticos_motivo_calificacion, $subarray_datos_organizados));
            }

        }
        //Proceso para subir archivo
        if($request->file('DocPronuncia') <> ""){
            $archivo = $request->file('DocPronuncia');
            $path = public_path('Documentos_Eventos/'.$Id_EventoPronuncia);
            $mode = 0777;
            $tipo_archivo = "Documento Pronunciamiento";
            $nombre_lista_documento = str_replace(' ', '_', $tipo_archivo);

            if (!File::exists($path)) {
                File::makeDirectory($path, $mode, true, true);
                chmod($path, $mode);
            }

            $nombre_final_documento_en_carpeta = $nombre_lista_documento."_IdEvento_".$Id_EventoPronuncia.".".$archivo->extension();
            Storage::putFileAs($Id_EventoPronuncia, $archivo, $nombre_final_documento_en_carpeta);
        }else{
            //Consulta Nombre archivo
            $Archivo_Actual = sigmel_informacion_pronunciamiento_eventos::on('sigmel_gestiones')
            ->select('Archivo_pronuncia')
            ->where([
                ['ID_evento', '=', $request->Id_EventoPronuncia],
                ['Id_Asignacion', '=', $request->Id_Asignacion_Pronuncia]
            ])->get();
            if(count($Archivo_Actual)>0){
                $nombre_final_documento_en_carpeta=$Archivo_Actual[0]->Archivo_pronuncia;
            }else{
                $nombre_final_documento_en_carpeta='N/A';
            }
        }

        if ($request->destinatario_principal == "Si") {
            $destinatario_principal = "Si";
            $tipo_entidad = $request->tipo_entidad;
            $nombre_entidad = $request->nombre_entidad;
        }else{
            $destinatario_principal = "No";
            $tipo_entidad = null;
            $nombre_entidad = null;
        }
        if ($request->copia_afiliado == 'undefined') {
            $copia_afiliado = null;            
        } else {
            $copia_afiliado = $request->copia_afiliado;            
        }
        if ($request->copia_empleador == 'undefined') {
            $copia_empleador = null;                        
        } else {
            $copia_empleador = $request->copia_empleador;            
        }
        if ($request->copia_eps == 'undefined') {
            $copia_eps = null;                        
        } else {         
            $copia_eps = $request->copia_eps;
        }
        if ($request->copia_afp == 'undefined') {
            $copia_afp = null;                        
        } else {         
            $copia_afp = $request->copia_afp;
        }
        if ($request->copia_afp == 'undefined') {
            $copia_afp = null;                        
        } else {         
            $copia_afp = $request->copia_afp;
        }
        if ($request->copia_arl == 'undefined') {
            $copia_arl = null;                        
        } else {         
            $copia_arl = $request->copia_arl;
        }
        if (empty($request->copia_afp_conocimiento)) {
            $copia_afp_conocimiento = null;                        
            $copy_afp_conocimiento = null;
        } else {      
            // traemos la informacion de las copias dependiendo de cuantas entidades de conocimiento hay
            $copy_afp_conocimiento = 'AFP_Conocimiento';
            $str_entidades = $this->globalService->retornarStringCopiasEntidadConocimiento($Id_EventoPronuncia);
            $copia_afp_conocimiento = $str_entidades;

        }
        if ($request->junta_regional == 'undefined') {
            $junta_regional = null;                        
        } else {         
            $junta_regional = $request->junta_regional;
        }
        if ($junta_regional == null) {
            $cual =  null;
        } else {
            $cual =  $request->junta_regional_cual;
        }        
        if ($request->junta_nacional == 'undefined') {
            $junta_nacional = null;                        
        } else {         
            $junta_nacional = $request->junta_nacional;
        }

        // Agrupa las variables en un array
        $variables = array($copia_afiliado, $copia_empleador, $copia_eps, $copia_afp, $copia_arl, $copia_afp_conocimiento, $junta_regional, $junta_nacional);

        // Filtra los elementos nulos del array
        $variables_filtradas = array_filter($variables, function($valor) {
            return $valor !== null;
        });

        // Verifica si el array resultante está vacío
        if (!empty($variables_filtradas)) {
            // Si hay elementos en el array, los concatenamos con comas
            $agregar_copias_comu = implode(',', $variables_filtradas);
        } else {
            // Si el array está vacío, asignamos una cadena vacía
            $agregar_copias_comu = '';
        }
        
        $radicado = $this->disponible($request->n_radicado, $Id_EventoPronuncia)->getRadicado('pcl', $Id_EventoPronuncia);


        /* Se completan los siguientes datos para lo del tema del pbs 014 */

        // el nombre del destinatario principal dependerá del la selección del primer calificador
        $id_primer_calificador = $request->primer_calificador;

        // Caso 1: Arl, Caso 2: Afp, Caso 3: Eps
        switch ($id_primer_calificador) {
            case '1': $Destinatario = 'Arl'; break;

            case '2': $Destinatario = 'Afp'; break;

            case '3': $Destinatario = 'Eps'; break;

            default: $Destinatario = 'N/A'; break;
        }
        if(!$nombre_entidad){
            $id_dest_principal = $request->nombre_calificador;
        }
        else{
            switch ($request->tipo_entidad) {
                case '1':
                    $Destinatario = 'Arl';
                break;
    
                case '2':
                    $Destinatario = 'Afp';
                break;
    
                case '3':
                    $Destinatario = 'Eps';
                break;
                
                default:
                    $Destinatario = 'N/A';
                break;
            }
            $id_dest_principal = $nombre_entidad;
        }

        // validacion para guardar el tipo de descarga
        if ($request->decision_pr == 'Acuerdo') {
            $tipo_descargapro = 'ACUERDO PCL';
        } else if ($request->decision_pr == 'Desacuerdo') {
            $tipo_descargapro = 'DESACUERDO PCL';            
        } else {
            $tipo_descargapro = $request->decision_pr;
        }
        
        //valida la acción del botón
        if ($request->bandera_pronuncia_guardar_actualizar == 'Guardar') {
            //Se asignan los IDs de destinatario por cada posible destinatario
            $ids_destinatarios = $this->globalService->asignacionConsecutivoIdDestinatario();
        
            $datos_info_pronunciamiento_eventos = [
                'ID_Evento' => $Id_EventoPronuncia,
                'Id_proceso' => $Id_ProcesoPronuncia,
                'Id_Asignacion' => $Id_Asignacion_Pronuncia,
                'Id_primer_calificador' => $request->primer_calificador,
                'Id_nombre_calificador' => $request->nombre_calificador,
                'Nit_calificador' => $request->nit_calificador,
                'Dir_calificador' => $request->dir_calificador,
                'Email_calificador' => $request->mail_calificador,
                'Telefono_calificador' => $request->telefono_calificador,
                'Depar_calificador' =>  $request->depar_calificador,
                'Ciudad_calificador' => $request->ciudad_calificador,
                'Id_tipo_pronunciamiento' => $request->tipo_pronunciamiento,
                'Id_tipo_evento' => $request->tipo_evento,
                'Id_tipo_origen' => $request->tipo_origen,
                'Fecha_evento' => $request->fecha_evento,
                'Dictamen_calificador' => $request->dictamen_calificador,
                'Fecha_calificador' => $request->fecha_calificador,
                'N_siniestro' => $request->n_siniestro,
                'Fecha_estruturacion' => $request->fecha_estruturacion,
                'Porcentaje_pcl' => $request->porcentaje_pcl,
                'Rango_pcl' => $request->rango_pcl,
                'Decision' => $request->decision_pr,
                'Fecha_pronuncia' => $datetime,
                'Asunto_cali' => $request->asunto_cali,
                'Sustenta_cali' => $request->sustenta_cali,
                'Destinatario_principal' => $destinatario_principal,
                'Tipo_entidad' => $tipo_entidad,
                'Nombre_entidad' => $nombre_entidad,
                'Copia_afiliado' => $copia_afiliado,
                'Copia_empleador' => $copia_empleador,
                'Copia_eps' => $copia_eps,
                'Copia_afp' => $copia_afp,
                'Copia_arl' => $copia_arl,
                'Copia_Afp_Conocimiento' => $copy_afp_conocimiento,
                'Copia_junta_regional' => $junta_regional,
                'Copia_junta_nacional' => $junta_nacional,
                'Junta_regional_cual' => $cual,
                'N_anexos' => $request->n_anexos,
                'Elaboro_pronuncia' => $request->elaboro,
                'Reviso_pronuncia' => $request->reviso,
                'Ciudad_correspon' => $request->ciudad_correspon,
                'N_radicado' => $radicado,
                'Firmar' => $request->firmar,
                'Fecha_correspondencia' => $request->fecha_correspon,
                'Archivo_pronuncia' => $nombre_final_documento_en_carpeta,
                'created_at' => $datetime,
            ];
            $datos_info_comunicado_eventos = [
                'ID_Evento' => $Id_EventoPronuncia,
                'Id_proceso' => $Id_ProcesoPronuncia,
                'Id_Asignacion' => $Id_Asignacion_Pronuncia,
                'Ciudad' => $request->ciudad_correspon,
                'F_comunicado' => $date,
                'N_radicado' => $radicado,
                'Cliente' => $request->primer_calificador,
                'Nombre_afiliado' => $request->nombre_afiliado,
                'T_documento' => 'N/A',
                'N_identificacion' => $request->identificacion,
                'Destinatario' => $Destinatario,
                'Nombre_destinatario' => $id_dest_principal ? $id_dest_principal : 'N/A',
                'Nit_cc' => 'N/A',
                'Direccion_destinatario' => 'N/A',
                'Telefono_destinatario' => '001',
                'Email_destinatario' => 'N/A',
                'Id_departamento' => '001',
                'Id_municipio' => '001',
                'Asunto'=> $request->asunto_cali,
                'Cuerpo_comunicado' => $request->sustenta_cali,
                'Forma_envio' => '0',
                'Elaboro' => $request->elaboro,
                'Reviso' => '0',
                'Agregar_copia' => $agregar_copias_comu,
                'Anexos' => $request->n_anexos,
                'Forma_envio' => $request->forma_envio,
                'Tipo_descarga' => $tipo_descargapro,
                'Reemplazado' => 0,
                'Otro_destinatario' => 1,
                'Modulo_creacion' => 'pronunciamientoPCL',
                'N_siniestro' => $request->n_siniestro,
                'Id_Destinatarios' => $ids_destinatarios,
                'Nombre_usuario' => $nombre_usuario,
                'F_registro' => $date,
            ];
            sigmel_informacion_pronunciamiento_eventos::on('sigmel_gestiones')->insert($datos_info_pronunciamiento_eventos);
            sleep(2);

            //Actualización del N_siniestro del evento, el cual pidieron fuera "Global"
            $dato_actualizar_n_siniestro = [
                'N_siniestro' => $request->n_siniestro
            ];
            sigmel_informacion_eventos::on('sigmel_gestiones')
            ->where([['ID_evento',$Id_EventoPronuncia]])
            ->update($dato_actualizar_n_siniestro);

            sleep(2);

            if($request->decision_pr != 'Silencio'){
                $Id_Comunicado = sigmel_informacion_comunicado_eventos::on('sigmel_gestiones')->insertGetId($datos_info_comunicado_eventos);
                sleep(2);
            }
            // REGISTRO ACTIVIDAD PARA AUDITORIA //
            $Id_Pronuncia = sigmel_informacion_pronunciamiento_eventos::on('sigmel_gestiones')->select('Id_Pronuncia')->latest('Id_Pronuncia')->first();
            $accion_realizada = "Registro de Pronuciamiento {$Id_Pronuncia['Id_Pronuncia']}";
            $registro_actividad = [
                'Id_Pronuncia' => $Id_Pronuncia['Id_Pronuncia'],
                'ID_Evento' => $Id_EventoPronuncia,
                'Id_proceso' => $Id_ProcesoPronuncia,
                'Id_Asignacion' => $Id_Asignacion_Pronuncia,
                'Id_primer_calificador' => $request->primer_calificador,
                'Id_nombre_calificador' => $request->nombre_calificador,
                'Nit_calificador' => $request->nit_calificador,
                'Dir_calificador' => $request->dir_calificador,
                'Email_calificador' => $request->mail_calificador,
                'Telefono_calificador' => $request->telefono_calificador,
                'Depar_calificador' =>  $request->depar_calificador,
                'Ciudad_calificador' => $request->ciudad_calificador,
                'Id_tipo_pronunciamiento' => $request->tipo_pronunciamiento,
                'Id_tipo_evento' => $request->tipo_evento,
                'Id_tipo_origen' => $request->tipo_origen,
                'Fecha_evento' => $request->fecha_evento,
                'Dictamen_calificador' => $request->dictamen_calificador,
                'Fecha_calificador' => $request->fecha_calificador,
                'N_siniestro' => $request->n_siniestro,
                'Fecha_estruturacion' => $request->fecha_estruturacion,
                'Porcentaje_pcl' => $request->porcentaje_pcl,
                'Rango_pcl' => $request->rango_pcl,
                'Decision' => $request->decision_pr,
                'Fecha_pronuncia' => $datetime,
                'Asunto_cali' => $request->asunto_cali,
                'Sustenta_cali' => $request->sustenta_cali,
                'Destinatario_principal' => $destinatario_principal,
                'Tipo_entidad' => $tipo_entidad,
                'Nombre_entidad' => $nombre_entidad,
                'Copia_afiliado' => $copia_afiliado,
                'Copia_empleador' => $copia_empleador,
                'Copia_eps' => $copia_eps,
                'Copia_afp' => $copia_afp,
                'Copia_arl' => $copia_arl,
                'Copia_junta_regional' => $junta_regional,
                'Copia_junta_nacional' => $junta_nacional,
                'Junta_regional_cual' => $cual,
                'N_anexos' => $request->n_anexos,
                'Elaboro_pronuncia' => $request->elaboro,
                'Reviso_pronuncia' => $request->reviso,
                'Ciudad_correspon' => $request->ciudad_correspon,
                'N_radicado' => $radicado,
                'Firmar' => $request->firmar,
                'Fecha_correspondencia' => $request->fecha_correspon,
                'Archivo_pronuncia' => $nombre_final_documento_en_carpeta,
                'id_usuario_sesion' => Auth::id(),
                'nombre_usuario_sesion' => Auth::user()->name,
                'acccion_realizada' => $accion_realizada,
                'fecha_registro_accion' => $datetime
            ];

            // Actualizacion del profesional calificador
            $datos_profesional_calificador = [
                'Id_calificador' => Auth::user()->id,
                'Nombre_calificador' => Auth::user()->name,
                'F_calificacion' => $date
            ];
        
            sigmel_informacion_asignacion_eventos::on('sigmel_gestiones')
            ->where('Id_Asignacion', $Id_Asignacion_Pronuncia)->update($datos_profesional_calificador);
            
            sigmel_auditorias_pronunciamiento_eventos::on('sigmel_auditorias')->insert($registro_actividad);
            if(!empty($array_diagnosticos_motivo_calificacion)){
                // Inserción de la información
                foreach ($array_datos_con_keys as $insertar_diagnostico) {
                    sigmel_informacion_diagnosticos_eventos::on('sigmel_gestiones')->insert($insertar_diagnostico);
                } 
            }
            $mensajes = array(
                "parametro" => 'agregar_pronunciamiento',
                "parametro2" => 'guardo',
                "mensaje" => 'Información guardada satisfactoriamente.',
                "Id_Comunicado" => $Id_Comunicado
            ); 

            return json_decode(json_encode($mensajes, true));

        }elseif($request->bandera_pronuncia_guardar_actualizar == 'Actualizar'){

            if ($request->tipo_evento == 2) {
                $Fecha_evento = null;
            } else {
                $Fecha_evento = $request->fecha_evento;
            }           

            $datos_info_pronunciamiento_eventos = [
                'Id_primer_calificador' => $request->primer_calificador,
                'Id_nombre_calificador' => $request->nombre_calificador,
                'Nit_calificador' => $request->nit_calificador,
                'Dir_calificador' => $request->dir_calificador,
                'Email_calificador' => $request->mail_calificador,
                'Telefono_calificador' => $request->telefono_calificador,
                'Depar_calificador' =>  $request->depar_calificador,
                'Ciudad_calificador' => $request->ciudad_calificador,
                'Id_tipo_pronunciamiento' => $request->tipo_pronunciamiento,
                'Id_tipo_evento' => $request->tipo_evento,
                'Id_tipo_origen' => $request->tipo_origen,
                'Fecha_evento' => $Fecha_evento,
                'Dictamen_calificador' => $request->dictamen_calificador,
                'Fecha_calificador' => $request->fecha_calificador,
                'N_siniestro' => $request->n_siniestro,
                'Fecha_estruturacion' => $request->fecha_estruturacion,
                'Porcentaje_pcl' => $request->porcentaje_pcl,
                'Rango_pcl' => $request->rango_pcl,
                'Decision' => $request->decision_pr,
                'Fecha_pronuncia' => $datetime,
                'Asunto_cali' => $request->asunto_cali,
                'Sustenta_cali' => $request->sustenta_cali,
                'Destinatario_principal' => $destinatario_principal,
                'Tipo_entidad' => $tipo_entidad,
                'Nombre_entidad' => $nombre_entidad,
                'Copia_afiliado' => $copia_afiliado,
                'Copia_empleador' => $copia_empleador,
                'Copia_eps' => $copia_eps,
                'Copia_afp' => $copia_afp,
                'Copia_arl' => $copia_arl,
                'Copia_Afp_Conocimiento' => $copy_afp_conocimiento,
                'Copia_junta_regional' => $junta_regional,
                'Copia_junta_nacional' => $junta_nacional,
                'Junta_regional_cual' => $cual,
                'N_anexos' => $request->n_anexos,
                'Elaboro_pronuncia' => $request->elaboro,
                'Reviso_pronuncia' => $request->reviso,
                'Ciudad_correspon' => $request->ciudad_correspon,
                'Firmar' => $request->firmar,
                'Fecha_correspondencia' => $request->fecha_correspon,
                'Archivo_pronuncia' => $nombre_final_documento_en_carpeta,
                'updated_at' => $datetime,
            ];
            sigmel_informacion_pronunciamiento_eventos::on('sigmel_gestiones')
            ->where([['ID_Evento', $Id_EventoPronuncia], ['Id_Asignacion',$Id_Asignacion_Pronuncia]])->update($datos_info_pronunciamiento_eventos);
            sleep(2);

            //Actualización del N_siniestro del evento, el cual pidieron fuera "Global"
            $dato_actualizar_n_siniestro = [
                'N_siniestro' => $request->n_siniestro
            ];
            sigmel_informacion_eventos::on('sigmel_gestiones')
            ->where([['ID_evento',$Id_EventoPronuncia]])
            ->update($dato_actualizar_n_siniestro);

            sleep(2);

            $datos_info_comunicado_eventos = [
                'ID_Evento' => $Id_EventoPronuncia,
                'Id_proceso' => $Id_ProcesoPronuncia,
                'Id_Asignacion' => $Id_Asignacion_Pronuncia,
                'Ciudad' => $request->ciudad_correspon,
                'F_comunicado' => $date,
                'N_radicado' => $request->Id_Comunicado == "null" ? $radicado : $request->n_radicado,
                'Cliente' => $request->primer_calificador,
                'Nombre_afiliado' => $request->nombre_afiliado,
                'T_documento' => 'N/A',
                'N_identificacion' => $request->identificacion,
                'Destinatario' => $Destinatario,
                'Nombre_destinatario' => $id_dest_principal ? $id_dest_principal : 'N/A',
                'Nit_cc' => 'N/A',
                'Direccion_destinatario' => 'N/A',
                'Telefono_destinatario' => '001',
                'Email_destinatario' => 'N/A',
                'Id_departamento' => '001',
                'Id_municipio' => '001',
                'Asunto'=> $request->asunto_cali,
                'Cuerpo_comunicado' => $request->sustenta_cali,
                'Forma_envio' => '0',
                'Elaboro' => $request->elaboro,
                'Reviso' => '0',
                'Anexos' => $request->n_anexos,
                'Forma_envio' => $request->forma_envio,
                'Agregar_copia' => $agregar_copias_comu,
                'Tipo_descarga' => $tipo_descargapro,
                'Modulo_creacion' => 'pronunciamientoPCL',
                'Reemplazado' => 0,
                //En pronunciamientos el destinatario es el primer calificador
                'Otro_destinatario' => 1,
                'N_siniestro' => $request->n_siniestro,
                'Nombre_usuario' => $nombre_usuario,
                'F_registro' => $date,
            ];
            // dd($request->decision_pr);
            if($request->decision_pr != 'Silencio' && $request->Id_Comunicado){
                $Id_Comunicado = $request->Id_Comunicado;
                sigmel_informacion_comunicado_eventos::on('sigmel_gestiones')->where([
                    ['ID_evento', $Id_EventoPronuncia],
                    ['Id_Asignacion', $Id_Asignacion_Pronuncia],
                    ['Id_Comunicado', $Id_Comunicado]
                ])->update($datos_info_comunicado_eventos);
                sleep(2);

                $mensajes = array(
                    "parametro" => 'update_pronunciamiento',
                    "parametro2" => 'guardo',
                    "mensaje2" => 'Información actualizada satisfactoriamente.',
                    "Id_Comunicado" => $Id_Comunicado
                );
            }
            else if($request->decision_pr == 'Silencio' && $request->Id_Comunicado){
                sigmel_informacion_comunicado_eventos::on('sigmel_gestiones')->where('Id_Comunicado', $request->Id_Comunicado)->delete();
                $archivos_a_eliminar = [
                    "PCL_ACUERDO_{$Id_Asignacion_Pronuncia}_{$request->identificacion}.pdf",
                    "PCL_DESACUERDO_{$Id_Asignacion_Pronuncia}_{$request->identificacion}.docx"
                ];
                
                foreach ($archivos_a_eliminar as $archivo) {
                    $ruta_archivo = "Documentos_Eventos/{$Id_EventoPronuncia}/{$archivo}";
                    $path = public_path($ruta_archivo);
                    if (File::exists($path)) {
                        File::delete($path);
                    }
                }
                sleep(2);

                $mensajes = array(
                    "parametro" => 'update_pronunciamiento',
                    "parametro2" => 'guardo',
                    "mensaje2" => 'Información actualizada satisfactoriamente.',                    
                );
            }
            if($request->decision_pr != 'Silencio' && $request->Id_Comunicado == "null"){
                //Se asignan los IDs de destinatario por cada posible destinatario
                $ids_destinatarios = $this->globalService->asignacionConsecutivoIdDestinatario();
                $datos_info_comunicado_eventos['Id_Destinatarios'] = $ids_destinatarios;

                $Id_Comunicado = sigmel_informacion_comunicado_eventos::on('sigmel_gestiones')->insertGetId($datos_info_comunicado_eventos);
                sleep(2);

                $mensajes = array(
                    "parametro" => 'update_pronunciamiento',
                    "parametro2" => 'guardo',
                    "mensaje2" => 'Información actualizada satisfactoriamente.',
                    "Id_Comunicado" => $Id_Comunicado
                );
            }
            // REGISTRO ACTIVIDAD PARA AUDITORIA //
            $Id_Pronuncia = sigmel_informacion_pronunciamiento_eventos::on('sigmel_gestiones')->select('Id_Pronuncia','Id_Asignacion')->latest('Id_Pronuncia')->first();
            $accion_realizada = "Actualiza Pronuciamiento {$Id_Pronuncia['Id_Pronuncia']}";
            $registro_actividad = [
                'Id_Pronuncia' => $Id_Pronuncia['Id_Pronuncia'],
                'ID_Evento' => $Id_EventoPronuncia,
                'Id_proceso' => $Id_ProcesoPronuncia,
                'Id_Asignacion' => $Id_Pronuncia['Id_Asignacion'],
                'Id_primer_calificador' => $request->primer_calificador,
                'Id_nombre_calificador' => $request->nombre_calificador,
                'Nit_calificador' => $request->nit_calificador,
                'Dir_calificador' => $request->dir_calificador,
                'Email_calificador' => $request->mail_calificador,
                'Telefono_calificador' => $request->telefono_calificador,
                'Depar_calificador' =>  $request->depar_calificador,
                'Ciudad_calificador' => $request->ciudad_calificador,
                'Id_tipo_pronunciamiento' => $request->tipo_pronunciamiento,
                'Id_tipo_evento' => $request->tipo_evento,
                'Id_tipo_origen' => $request->tipo_origen,
                'Fecha_evento' => $Fecha_evento,
                'Dictamen_calificador' => $request->dictamen_calificador,
                'Fecha_calificador' => $request->fecha_calificador,
                'N_siniestro' => $request->n_siniestro,
                'Fecha_estruturacion' => $request->fecha_estruturacion,
                'Porcentaje_pcl' => $request->porcentaje_pcl,
                'Rango_pcl' => $request->rango_pcl,
                'Decision' => $request->decision_pr,
                'Fecha_pronuncia' => $datetime,
                'Asunto_cali' => $request->asunto_cali,
                'Sustenta_cali' => $request->sustenta_cali,
                'Destinatario_principal' => $destinatario_principal,
                'Tipo_entidad' => $tipo_entidad,
                'Nombre_entidad' => $nombre_entidad,
                'Copia_afiliado' => $copia_afiliado,
                'Copia_empleador' => $copia_empleador,
                'Copia_eps' => $copia_eps,
                'Copia_afp' => $copia_afp,
                'Copia_arl' => $copia_arl,
                'Copia_junta_regional' => $junta_regional,
                'Copia_junta_nacional' => $junta_nacional,
                'Junta_regional_cual' => $cual,
                'N_anexos' => $request->n_anexos,
                'Elaboro_pronuncia' => $request->elaboro,
                'Reviso_pronuncia' => $request->reviso,
                'Ciudad_correspon' => $request->ciudad_correspon,
                'N_radicado' =>  $request->Id_Comunicado == "null" ? $radicado : $request->n_radicado,
                'Firmar' => $request->firmar,
                'Fecha_correspondencia' => $request->fecha_correspon,
                'Archivo_pronuncia' => $nombre_final_documento_en_carpeta,
                'id_usuario_sesion' => Auth::id(),
                'nombre_usuario_sesion' => Auth::user()->name,
                'acccion_realizada' => $accion_realizada,
                'fecha_registro_accion' => $datetime
            ];

            $datos_info_comunicado_eventos = [
                'Agregar_copia' => $agregar_copias_comu,
                'Nombre_usuario' => $nombre_usuario,
                'F_registro' => $date,
            ];   
                
            sigmel_informacion_comunicado_eventos::on('sigmel_gestiones')
            ->where([                
                ['N_radicado',$radicado]
            ])->update($datos_info_comunicado_eventos);
            
            sigmel_auditorias_pronunciamiento_eventos::on('sigmel_auditorias')->insert($registro_actividad);
            if(!empty($array_diagnosticos_motivo_calificacion)){
                // Inserción de la información
                foreach ($array_datos_con_keys as $insertar_diagnostico) {
                    sigmel_informacion_diagnosticos_eventos::on('sigmel_gestiones')->insert($insertar_diagnostico);
                } 
            }
            
            return json_decode(json_encode($mensajes, true));

        } 


    }

    //Generar PDF de proformas pronunciamiento pcl Acuerdo y desacuerdo
    public function generarPdfProformaPro(Request $request) {
        if (!Auth::check()) {
            return redirect('/');
        }
        $time = time();
        $date = date("Y-m-d", $time);
        $nombre_usuario = Auth::user()->name;
        $cargo_profesional = Auth::user()->cargo;

        $Id_comunicado = $request->id_comunicado;
        $fecha = $request->fecha;
        $nro_radicado = $request->nro_radicado;
        $Id_Evento_pronuncia_corre = $request->Id_Evento_pronuncia_corre;
        $Asignacion_Pronuncia_corre = $request->Asignacion_Pronuncia_corre;
        $Id_Proceso_pronuncia_corre = $request->Id_Proceso_pronuncia_corre;
        $Nombre_afiliado_corre = $request->Nombre_afiliado_corre;
        $Iden_afiliado_corre = $request->Iden_afiliado_corre;
        $Firma_corre = $request->Firma_corre;
        $desicion_proforma = $request->desicion_proforma;
        $N_siniestro = $request->N_siniestro;

        $datos = $Id_Evento_pronuncia_corre;
        // Codigo QR y Logo del Header
        $codigoQR = QrCode::size(110)->margin(0.5)->generate($datos);   

        // Captura de datos para logo del cliente y informacion de las entidades

        $array_datos_info_entidad_cali = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_eventos as sie')
        ->leftJoin('sigmel_gestiones.sigmel_clientes as sc', 'sc.Id_cliente', '=', 'sie.Cliente')
        ->select('sie.ID_evento', 'sie.Cliente', 'sc.Nombre_cliente', 'sc.Nit', 'sc.Telefono_principal', 'sc.Direccion', 'sc.Email_principal')
        ->where([['sie.ID_evento',$Id_Evento_pronuncia_corre]])->get();                
        
        $Cliente = $array_datos_info_entidad_cali[0]->Cliente;
           
        $info_afiliado = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_afiliado_eventos as siae')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp', 'slp.Id_Parametro', '=', 'siae.Tipo_documento')
        ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sldm.Id_municipios', '=', 'siae.Id_municipio')
        ->select('siae.Nombre_afiliado', 'siae.Nro_identificacion', 'siae.Tipo_documento', 'slp.Nombre_parametro as Tipo_documento',
        'siae.Direccion', 'siae.Telefono_contacto', 'siae.Id_departamento', 'sldm.Nombre_departamento', 'siae.Id_municipio',
        'sldm.Nombre_municipio')
        ->where([['siae.Nro_identificacion', $Iden_afiliado_corre], ['siae.Nombre_afiliado',$Nombre_afiliado_corre]])->get();

        $Direccion = $info_afiliado[0]->Direccion;
        $Telefono_contacto = $info_afiliado[0]->Telefono_contacto;
        $Nombre_departamento = $info_afiliado[0]->Nombre_departamento;
        $Nombre_municipio = $info_afiliado[0]->Nombre_municipio;
        $Tipo_documento_afi = $info_afiliado[0]->Tipo_documento;

        $info_pronunciamiento= DB::table(getDatabaseName('sigmel_gestiones') .'sigmel_informacion_pronunciamiento_eventos as pr')
        ->select('pr.ID_evento','pr.Id_primer_calificador','c.Tipo_Entidad','pr.Id_nombre_calificador','e.Nombre_entidad as Nombre_calificador'
        ,'pr.Nit_calificador','pr.Dir_calificador','pr.Email_calificador','pr.Telefono_calificador','pr.Depar_calificador','pr.Ciudad_calificador'
        ,'pr.Id_tipo_pronunciamiento','p.Nombre_parametro as Tpronuncia','pr.Id_tipo_evento','ti.Nombre_evento','pr.Id_tipo_origen','or.Nombre_parametro as T_origen'
        ,'pr.Fecha_evento','pr.Dictamen_calificador','pr.Fecha_calificador','pr.Fecha_estruturacion','pr.Porcentaje_pcl','pr.Rango_pcl'
        ,'pr.Decision','pr.Fecha_pronuncia','pr.Asunto_cali','pr.Sustenta_cali','pr.Destinatario_principal','pr.Tipo_entidad', 
        'pr.Nombre_entidad as Id_Nombre_entidad', 'e.Nombre_entidad as Nombre_entidades', 'e.Emails as Email_entidad','e.Direccion', 'e.Telefonos', 'e.Id_Ciudad', 
        'sldm.Nombre_municipio as Nombre_ciudad', 'sldm.Id_departamento', 'sldm.Nombre_departamento', 'pr.Copia_afiliado','pr.copia_empleador',
        'pr.Copia_eps' ,'pr.Copia_afp','pr.Copia_arl','pr.Copia_junta_regional','pr.Copia_junta_nacional','pr.Junta_regional_cual',
        'j.Ciudad_Junta' ,'pr.N_anexos','pr.Elaboro_pronuncia','pr.Reviso_Pronuncia','pr.Ciudad_correspon','pr.N_radicado','pr.Firmar',
        'pr.Fecha_correspondencia','pr.Archivo_pronuncia')
        ->leftJoin('sigmel_gestiones.sigmel_lista_entidades as c', 'c.Id_Entidad', '=', 'pr.Id_primer_calificador')
        ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as e', 'e.Id_Entidad', '=', 'pr.Id_nombre_calificador')
        ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as en', 'en.Id_Entidad', '=', 'pr.Nombre_entidad')
        ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sldm.Id_municipios', '=', 'e.Id_Ciudad')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as p', 'p.Id_Parametro', '=', 'pr.Id_tipo_pronunciamiento')
        ->leftJoin('sigmel_gestiones.sigmel_lista_tipo_eventos as ti', 'ti.Id_Evento', '=', 'pr.Id_tipo_evento')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as or', 'or.Id_Parametro', '=', 'pr.Id_tipo_origen')
        ->leftJoin('sigmel_gestiones.sigmel_lista_regional_juntas as j', 'j.Id_juntaR', '=', 'pr.Junta_regional_cual')
        ->where([
            ['pr.ID_evento', '=', $Id_Evento_pronuncia_corre],
            ['pr.Id_Asignacion', '=', $Asignacion_Pronuncia_corre]
        ])
        ->get();

        $Ciudad_correspon = $info_pronunciamiento[0]->Ciudad_correspon;
        $Fecha_correspondencia = $info_pronunciamiento[0]->Fecha_correspondencia;
        $N_radicado = $info_pronunciamiento[0]->N_radicado;
        $Destinatario_principal = $info_pronunciamiento[0]->Destinatario_principal;
        $Decision = $info_pronunciamiento[0]->Decision;

        $Asunto_cali = $info_pronunciamiento[0]->Asunto_cali;

        $Dictamen_calificador = $info_pronunciamiento[0]->Dictamen_calificador;
        $Fecha_calificador = $info_pronunciamiento[0]->Fecha_calificador;
        $Fecha_calificador = date("d/m/Y", strtotime($Fecha_calificador));
        $Porcentaje_pcl = $info_pronunciamiento[0]->Porcentaje_pcl;
        $Tipo_evento = $info_pronunciamiento[0]->Nombre_evento;
        $T_origen = $info_pronunciamiento[0]->T_origen;
        $Fecha_estruturacion = $info_pronunciamiento[0]->Fecha_estruturacion;
        $Fecha_estruturacion = date("d/m/Y", strtotime($Fecha_estruturacion));

        $Sustenta_cali = $request->Sustenta_cali;
        $N_anexos = $info_pronunciamiento[0]->N_anexos;
        $Elaboro_pronuncia = $info_pronunciamiento[0]->Elaboro_pronuncia;
        
        /* El siguiente bloque de código no aplica ya debido a que se reestructurará basandose en
            la información del primer Calificador
        */

        // Destinatario Principal si y Decision Acuerdo: Se saca la informacion de la entidad
        // Destinatario Principal no y Decision Acuerdo: Se saca la informacion del afiliado
        // Destinatario Principal si y Decision Desacuerdo: Se saca la informacion de la entidad.
        // Destinatario Principal no y Decision Desacuerdo: Se saca la informacion del Calificador.

        /* if ($Destinatario_principal == 'Si' && $Decision == 'Acuerdo') {
            $Nombre_entidades = $info_pronunciamiento[0]->Nombre_entidades;  
            $Email_enti = $info_pronunciamiento[0]->Email_entidad;     
            $Direccion_enti = $info_pronunciamiento[0]->Direccion;
            $Telefonos_enti = $info_pronunciamiento[0]->Telefonos;
            $Nombre_ciudad_enti = $info_pronunciamiento[0]->Nombre_ciudad;
            $Nombre_departamento_enti = $info_pronunciamiento[0]->Nombre_departamento;            
        } elseif($Destinatario_principal == 'No' && $Decision == 'Acuerdo') {
            // $Nombre_entidades = $Nombre_afiliado_corre;       
            // $Direccion_enti = $Direccion;
            // $Telefonos_enti = $Telefono_contacto;
            // $Nombre_ciudad_enti = $Nombre_municipio;
            // $Nombre_departamento_enti = $Nombre_departamento;

            $datos = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_afiliado_eventos as siae')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as sie', 'siae.Id_afp', '=', 'sie.Id_Entidad')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sie.Id_Ciudad', '=', 'sldm.Id_municipios')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm1', 'sie.Id_Departamento', '=', 'sldm1.Id_departamento')
            ->select('sie.Nombre_entidad', 'sie.Direccion', 'sie.Telefonos', 'sie.Emails as Email_entidad', 'sldm.Nombre_municipio as Nombre_ciudad', 'sldm1.Nombre_departamento')
            ->where([['siae.ID_evento','=', $Id_Evento_pronuncia_corre]])
            ->get();

            $array_datos = json_decode(json_encode($datos), true);
            if (count($array_datos) > 0) {
                $Nombre_entidades = $array_datos[0]["Nombre_entidad"];
                $Email_enti = $array_datos[0]["Email_entidad"];      
                $Direccion_enti = $array_datos[0]["Direccion"];
                $Telefonos_enti = $array_datos[0]["Telefonos"];
                $Nombre_ciudad_enti = $array_datos[0]["Nombre_ciudad"];
                $Nombre_departamento_enti = $array_datos[0]["Nombre_departamento"];
            }else{
                $Nombre_entidades = "";       
                $Direccion_enti = "";
                $Email_enti = "";
                $Telefonos_enti = "";
                $Nombre_ciudad_enti = "";
                $Nombre_departamento_enti = "";
            }

        }elseif($Destinatario_principal == 'Si' && $Decision == 'Desacuerdo') {
            $Email_calificador = $info_pronunciamiento[0]->Email_calificador;
            $Entidad_calificador = $info_pronunciamiento[0]->Nombre_entidades;       
            $Dir_calificador = $info_pronunciamiento[0]->Direccion;
            $Telefono_calificador = $info_pronunciamiento[0]->Telefonos;
            $Ciudad_calificador = $info_pronunciamiento[0]->Nombre_ciudad;
            $Departamento_calificador = $info_pronunciamiento[0]->Nombre_departamento;
            $Nombre_departamento_enti = $info_pronunciamiento[0]->Nombre_departamento;  
        }elseif($Destinatario_principal == 'No' && $Decision == 'Desacuerdo') {
            $Email_calificador = $info_pronunciamiento[0]->Email_calificador;
            $Entidad_calificador = $info_pronunciamiento[0]->Nombre_calificador;
            $Dir_calificador = $info_pronunciamiento[0]->Dir_calificador;
            $Telefono_calificador = $info_pronunciamiento[0]->Telefono_calificador;
            $Ciudad_calificador = $info_pronunciamiento[0]->Ciudad_calificador; 
            $Departamento_calificador = $info_pronunciamiento[0]->Depar_calificador;
        }
        */

        // Traemos los datos de la entidad
        // print_r($info_pronunciamiento[0]->Nombre_entidades);
        $Nombre_entidad = strtoupper($info_pronunciamiento[0]->Nombre_entidades);  
        $Email_entidad = $info_pronunciamiento[0]->Email_entidad;     
        $Direccion_entidad = $info_pronunciamiento[0]->Direccion;
        $Telefonos_entidad = $info_pronunciamiento[0]->Telefonos;
        $Dpto_Ciudad_entidad = $info_pronunciamiento[0]->Nombre_departamento == 'Bogota D.C.' ? 'BOGOTÁ D.C.' : $info_pronunciamiento[0]->Nombre_departamento." - ".$info_pronunciamiento[0]->Nombre_ciudad;

         // Extraemos toda la información del afiliado para realizar validaciones del asunto y demás
        $array_datos_info_afiliado = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_afiliado_eventos as siae')
         ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp', 'slp.Id_Parametro', '=', 'siae.Tipo_documento')
         ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slpa', 'slpa.Id_Parametro', '=', 'siae.Nivel_escolar')
         ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slpar', 'slpar.Id_Parametro', '=', 'siae.Estado_civil')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as slde', 'slde.Id_departamento', '=', 'siae.Id_departamento')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sldm.Id_municipios', '=', 'siae.Id_municipio')
         ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slpara', 'slpara.Id_Parametro', '=', 'siae.Tipo_documento_benefi')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldep', 'sldep.Id_departamento', '=', 'siae.Id_departamento_benefi')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldmu', 'sldmu.Id_municipios', '=', 'siae.Id_municipio_benefi')
         ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as sie', 'sie.Id_Entidad', '=', 'siae.Id_eps')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldepa', 'sldepa.Id_departamento', '=', 'sie.Id_Departamento')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldmun', 'sldmun.Id_municipios', '=', 'sie.Id_Ciudad')
         ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as sien', 'sien.Id_Entidad', '=', 'siae.Id_afp')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldepar', 'sldepar.Id_departamento', '=', 'sien.Id_Departamento')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldmuni', 'sldmuni.Id_municipios', '=', 'sien.Id_Ciudad')
         ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as sient', 'sient.Id_Entidad', '=', 'siae.Id_arl')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldepart', 'sldepart.Id_departamento', '=', 'sient.Id_Departamento')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldmunic', 'sldmunic.Id_municipios', '=', 'sient.Id_Ciudad')
         ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slparam', 'slparam.Id_Parametro', '=', 'siae.Tipo_documento_apoderado')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldeparta', 'sldeparta.Id_departamento', '=', 'siae.Id_departamento_apoderado')
         ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldmunici', 'sldmunici.Id_municipios', '=', 'siae.Id_municipio_apoderado')
         ->select('siae.ID_evento', 'siae.Nombre_afiliado', 'siae.Tipo_documento', 'slp.Nombre_parametro as T_documento', 
         'siae.Nro_identificacion', 'siae.F_nacimiento', 'siae.Edad', 'siae.Genero', 'siae.Email', 'siae.Telefono_contacto', 
         'siae.Estado_civil', 'slpar.Nombre_parametro as Estado_civi', 'siae.Nivel_escolar', 'slpa.Nombre_parametro as Escolaridad', 
         'siae.Apoderado', 'siae.Nombre_apoderado', 'siae.Email_apoderado', 'siae.Telefono_apoderado', 'siae.Direccion_apoderado', 
         'siae.Nro_identificacion_apoderado', 'siae.Tipo_documento_apoderado', 'slparam.Nombre_parametro as Tipo_documento_apodera',
         'siae.Id_departamento_apoderado', 'sldeparta.Nombre_departamento as Nombre_departamento_apoderado', 'siae.Id_municipio_apoderado', 
         'sldmunici.Nombre_municipio as Nombre_municipio_apoderado', 'siae.Id_dominancia', 'siae.Direccion', 
         'siae.Id_departamento', 'slde.Nombre_departamento as Nombre_departamento', 'siae.Id_municipio', 'sldm.Nombre_municipio as Nombre_municipio', 
         'siae.Ocupacion', 'siae.Tipo_afiliado', 'siae.Ibc', 'siae.Id_eps', 'sie.Nombre_entidad as Entidad_eps', 'sie.Direccion as Direccion_eps', 
         'sie.Telefonos as Telefono_eps', 'sie.Emails as Email_eps', 'sie.Id_Departamento', 'sldepa.Nombre_departamento as Nombre_departamento_eps', 'sie.Id_Ciudad', 
         'sldmun.Nombre_municipio as Nombre_municipio_eps', 'siae.Id_afp', 'sien.Nombre_entidad as Entidad_afp', 
         'sien.Direccion as Direccion_afp', 'sien.Telefonos as Telefono_afp', 'sien.Emails as Email_afp', 'sien.Id_Departamento', 
         'sldepar.Nombre_departamento as Nombre_departamento_afp', 'sien.Id_Ciudad', 
         'sldmuni.Nombre_municipio as Nombre_municipio_afp', 'siae.Id_arl', 'sient.Nombre_entidad as Entidad_arl', 
         'sient.Direccion as Direccion_arl', 'sient.Telefonos as Telefono_arl', 'sient.Emails as Email_arl','sient.Id_Departamento', 
         'sldepart.Nombre_departamento as Nombre_departamento_arl', 'sient.Id_Ciudad',
         'sldmunic.Nombre_municipio as Nombre_municipio_arl',
         'siae.Activo',
         'siae.Medio_notificacion', 'siae.Nombre_afiliado_benefi', 'siae.Tipo_documento_benefi', 'slpara.Nombre_parametro as Tipo_documento_benfi',         
         'siae.Nro_identificacion_benefi', 'siae.Telefono_benefi', 'siae.Email_benefi', 'siae.Direccion_benefi', 'siae.Id_departamento_benefi', 
         'sldep.Nombre_departamento as Nombre_departamento_benefi', 'siae.Id_municipio_benefi', 
         'sldmu.Nombre_municipio as Nombre_municipio_benefi', 'siae.Nombre_usuario', 'siae.F_registro', 'F_actualizacion')
         ->where([['ID_Evento',$Id_Evento_pronuncia_corre]])->limit(1)->get();

        // Extraemos el tipo de afiliado
        $Tipo_afiliado = $array_datos_info_afiliado[0]->Tipo_afiliado;

        // Extraccción de datos del afiliado/beneficiario
        $Nombre_afiliado = $array_datos_info_afiliado[0]->Nombre_afiliado;
        $Direccion_afiliado = $array_datos_info_afiliado[0]->Direccion;
        $Email_afiliado = $array_datos_info_afiliado[0]->Email;
        $Telefono_afiliado = $array_datos_info_afiliado[0]->Telefono_contacto;
        $tipo_doc_afiliado = $array_datos_info_afiliado[0]->T_documento;            
        $nro_identificacion_afiliado = $array_datos_info_afiliado[0]->Nro_identificacion;
        $Departamento_afiliado = $array_datos_info_afiliado[0]->Nombre_departamento;            
        $Ciudad_afiliado = $array_datos_info_afiliado[0]->Nombre_municipio;

        // Extracción de datos cuando se llena la sección Información del Afiliado (es decir cuando el tipo de afiliado es beneficiario)
        $Nombre_afiliado_noti_benefi = $array_datos_info_afiliado[0]->Nombre_afiliado_benefi;
        $Direccion_afiliado_notibenefi = $array_datos_info_afiliado[0]->Direccion_benefi;
        $Email_afiliado_notibenefi = $array_datos_info_afiliado[0]->Email_benefi;
        $Telefono_afiliado_notibenefi = $array_datos_info_afiliado[0]->Telefono_benefi;
        $T_documento_notibenefi = $array_datos_info_afiliado[0]->Tipo_documento_benfi;            
        $NroIden_afiliado_notibenefi = $array_datos_info_afiliado[0]->Nro_identificacion_benefi;
        $Departamento_afiliado_notibenefi = $array_datos_info_afiliado[0]->Nombre_departamento_benefi;            
        $Ciudad_afiliado_notibenefi = $array_datos_info_afiliado[0]->Nombre_municipio_benefi;
        
        // Captura de info para los CIE10
        $array_diagnosticosPcl = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_diagnosticos_eventos as side')
        ->leftJoin('sigmel_gestiones.sigmel_lista_cie_diagnosticos as slcd', 'slcd.Id_Cie_diagnostico', '=', 'side.CIE10')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp', 'slp.Id_Parametro', '=', 'side.Origen_CIE10')
        ->select('side.CIE10', 'slcd.CIE10 as Codigo_cie10', 'side.Nombre_CIE10', 'side.Origen_CIE10', 'slp.Nombre_parametro as Nombre_origen')
        ->where([['ID_Evento',$Id_Evento_pronuncia_corre], ['Id_Asignacion',$Asignacion_Pronuncia_corre], ['side.Estado_Recalificacion', 'Activo']])->get(); 
        
        if(count($array_diagnosticosPcl) > 0){
            // Obtener el array de nombres CIE10 y codigo cie10
            $NombresCIE10 = $array_diagnosticosPcl->map(function ($item) {
                return '(<b>'.$item->Codigo_cie10.'</b>) '.strtoupper($item->Nombre_CIE10).' de origen '.$item->Nombre_origen.'';
            })->toArray();
                
            // Obtener el número de elementos en el array
            $num_elementos = count($NombresCIE10);
            // Si hay más de un elemento en el array
            if ($num_elementos > 1) {
                // Separar el último elemento del resto
                $ultimo_elemento = array_pop($NombresCIE10);
                $resto_elementos = implode(', ', $NombresCIE10);

                // Concatenar los elementos con "y"
                $CIE10Nombres = $resto_elementos . ' y ' . $ultimo_elemento;
            } else {
                // Si solo hay un elemento, no es necesario cambiar nada
                $CIE10Nombres = reset($NombresCIE10);
            }
        }else{
            $CIE10Nombres = '';
        }
                
        // Validamos si los checkbox esta marcados
        $final_copia_afiliado = isset($request->copia_afiliado) ? 'Afiliado' : '';
        $final_copia_empleador = isset($request->copia_empleador) ? 'Empleador' : '';
        $final_copia_eps = isset($request->copia_eps) ? 'EPS' : '';
        $final_copia_afp = isset($request->copia_afp) ? 'AFP' : '';
        $final_copia_arl = isset($request->copia_arl) ? 'ARL' : '';
        $final_copia_afp_conocimiento = isset($request->copia_afp_conocimiento) ? 'AFP_Conocimiento' : '';

        $total_copias = array_filter(array(
            'copia_afiliado' => $final_copia_afiliado,
            'copia_empleador' => $final_copia_empleador,
            'copia_eps' => $final_copia_eps,
            'copia_afp' => $final_copia_afp,
            'copia_arl' => $final_copia_arl,
            'copia_afp_conocimiento' => $final_copia_afp_conocimiento
        )); 

        
        sleep(2);
        
        // Conversión de las key en variables con sus respectivos datos
        extract($total_copias);
        $Agregar_copias = [];
        if (isset($copia_afiliado)) {

            // $AfiliadoData = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_afiliado_eventos as siae')
            // ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'siae.Id_departamento', '=', 'sldm.Id_departamento')
            // ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm2', 'siae.Id_municipio', '=', 'sldm2.Id_municipios')
            // ->select('siae.Nombre_afiliado', 'siae.Direccion', 'siae.Telefono_contacto', 'sldm.Nombre_departamento as Nombre_ciudad', 'sldm2.Nombre_municipio', 'siae.Email')
            // ->where([['siae.Nro_identificacion', $Iden_afiliado_corre],['siae.ID_evento', $Id_Evento_pronuncia_corre]])
            // ->get();
            // $nombreAfiliado = $AfiliadoData[0]->Nombre_afiliado;
            // $direccionAfiliado = $AfiliadoData[0]->Direccion;
            // $emailAfiliado = $AfiliadoData[0]->Email;      
            // $telefonoAfiliado = $AfiliadoData[0]->Telefono_contacto;
            // $ciudadAfiliado = $AfiliadoData[0]->Nombre_ciudad;
            // $municipioAfiliado = $AfiliadoData[0]->Nombre_municipio;
            
            
            // Si el tipo de afiliado es alguno de estos tres: Cotizante o Subsidiado o Pensionado entonces el destinatario principal será los datos del afiliado.
            if($Tipo_afiliado == 26 || $Tipo_afiliado == 28 || $Tipo_afiliado == 29){
                $nombreAfiliado = "<b>".$Nombre_afiliado."</b>";
                $direccionAfiliado = $Direccion_afiliado;//$datos_beneficiario[0]->Direccion_benefi;
                $emailAfiliado = $Email_afiliado;
                $telefonoAfiliado = $Telefono_afiliado;
                $departamentoAfiliado = $Departamento_afiliado; //$datos_beneficiario[0]->Nombre_departamento;
                $ciudadAfiliado = $Ciudad_afiliado;

            }elseif ($Tipo_afiliado == 27){ // si el tipo de afiliado es Beneficiario entonces el destinatario principal serán los datos de la sección Información del Afiliado
                $nombreAfiliado = "<b>".$Nombre_afiliado_noti_benefi."</b>";
                $direccionAfiliado = $Direccion_afiliado_notibenefi;//$datos_beneficiario[0]->Direccion_benefi;
                $emailAfiliado = $Email_afiliado_notibenefi;
                $telefonoAfiliado = $Telefono_afiliado_notibenefi;
                $departamentoAfiliado = $Departamento_afiliado_notibenefi; //$datos_beneficiario[0]->Nombre_departamento;
                $ciudadAfiliado = $Ciudad_afiliado_notibenefi;
            }

            $Agregar_copias['Afiliado'] = $nombreAfiliado."; ".$direccionAfiliado."; ".$emailAfiliado."; ".$telefonoAfiliado."; ".$departamentoAfiliado."; ".$ciudadAfiliado."."; 
        }

        if(isset($copia_empleador)){

            $datos_empleador = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_laboral_eventos as sile')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sile.Id_departamento', '=', 'sldm.Id_departamento')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm2', 'sile.Id_municipio', '=', 'sldm2.Id_municipios')
            ->select('sile.Empresa', 'sile.Direccion', 'sile.Telefono_empresa', 'sile.Email','sldm.Nombre_departamento as Nombre_ciudad', 'sldm2.Nombre_municipio')
            ->where([['sile.Nro_identificacion', $Iden_afiliado_corre],['sile.ID_evento', $Id_Evento_pronuncia_corre]])
            ->get();

            
            if (preg_match("/&/", $datos_empleador[0]->Empresa)) {
                $nombre_empleador = htmlspecialchars(preg_replace('/&/', '&amp;', $datos_empleador[0]->Empresa));
            } else {
                $nombre_empleador = $datos_empleador[0]->Empresa;
            }
            
            $direccion_empleador = $datos_empleador[0]->Direccion;
            $telefono_empleador = $datos_empleador[0]->Telefono_empresa;
            $ciudad_empleador = $datos_empleador[0]->Nombre_ciudad;
            $email_empleador = $datos_empleador[0]->Email;
            $municipio_empleador = $datos_empleador[0]->Nombre_municipio;

            $Agregar_copias['Empleador'] = $nombre_empleador."; ".$direccion_empleador."; ".$email_empleador."; ".$telefono_empleador."; ".$ciudad_empleador."; ".$municipio_empleador.".";   
        }

        if (isset($copia_eps)) {
            $datos_eps = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_afiliado_eventos as siae')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as sie', 'siae.Id_eps', '=', 'sie.Id_Entidad')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sie.Id_Departamento', '=', 'sldm.Id_departamento')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm2', 'sie.Id_Ciudad', '=', 'sldm2.Id_municipios')
            ->select('sie.Nombre_entidad as Nombre_eps', 'sie.Direccion', 'sie.Telefonos', 'sie.Emails as Email','sie.Otros_Telefonos', 
            'sldm.Nombre_departamento as Nombre_ciudad', 'sldm2.Nombre_municipio')
            ->where([['Nro_identificacion', $Iden_afiliado_corre],['ID_evento', $Id_Evento_pronuncia_corre]])
            ->get();

            $nombre_eps = $datos_eps[0]->Nombre_eps;
            $direccion_eps = $datos_eps[0]->Direccion;
            $email_eps = $datos_eps[0]->Email;
            if ($datos_eps[0]->Otros_Telefonos != "") {
                $telefonos_eps = $datos_eps[0]->Telefonos.",".$datos_eps[0]->Otros_Telefonos;
            } else {
                $telefonos_eps = $datos_eps[0]->Telefonos;
            }
            $ciudad_eps = $datos_eps[0]->Nombre_ciudad;
            $minucipio_eps = $datos_eps[0]->Nombre_municipio;

            $Agregar_copias['EPS'] = $nombre_eps."; ".$direccion_eps."; ".$email_eps."; ".$telefonos_eps."; ".$ciudad_eps."; ".$minucipio_eps;
        }

        if (isset($copia_afp)) {
            $datos_afp = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_afiliado_eventos as siae')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as sie', 'siae.Id_afp', '=', 'sie.Id_Entidad')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sie.Id_Departamento', '=', 'sldm.Id_departamento')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm2', 'sie.Id_Ciudad', '=', 'sldm2.Id_municipios')
            ->select('sie.Nombre_entidad as Nombre_afp', 'sie.Direccion', 'sie.Telefonos', 'sie.Emails as Email','sie.Otros_Telefonos',
            'sldm.Nombre_departamento as Nombre_ciudad', 'sldm2.Nombre_municipio')
            ->where([['Nro_identificacion', $Iden_afiliado_corre],['ID_evento', $Id_Evento_pronuncia_corre]])
            ->get();

            $nombre_afp = $datos_afp[0]->Nombre_afp;
            $direccion_afp = $datos_afp[0]->Direccion;
            $email_afp = $datos_afp[0]->Email;
            if ($datos_afp[0]->Otros_Telefonos != "") {
                $telefonos_afp = $datos_afp[0]->Telefonos.",".$datos_afp[0]->Otros_Telefonos;
            } else {
                $telefonos_afp = $datos_afp[0]->Telefonos;
            }
            $ciudad_afp = $datos_afp[0]->Nombre_ciudad;
            $minucipio_afp = $datos_afp[0]->Nombre_municipio;

            $Agregar_copias['AFP'] = $nombre_afp."; ".$direccion_afp."; ".$email_afp."; ".$telefonos_afp."; ".$ciudad_afp."; ".$minucipio_afp;
        }

        if(isset($copia_arl)){
            $datos_arl = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_afiliado_eventos as siae')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades as sie', 'siae.Id_arl', '=', 'sie.Id_Entidad')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sie.Id_Departamento', '=', 'sldm.Id_departamento')
            ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm2', 'sie.Id_Ciudad', '=', 'sldm2.Id_municipios')
            ->select('sie.Nombre_entidad as Nombre_arl', 'sie.Direccion', 'sie.Telefonos', 'sie.Emails as Email', 'sie.Otros_Telefonos',
            'sldm.Nombre_departamento as Nombre_ciudad', 'sldm2.Nombre_municipio')
            ->where([['Nro_identificacion', $Iden_afiliado_corre],['ID_evento', $Id_Evento_pronuncia_corre]])
            ->get();

            $nombre_arl = $datos_arl[0]->Nombre_arl;
            $direccion_arl = $datos_arl[0]->Direccion;
            $email_arl = $datos_arl[0]->Email;
            if ($datos_arl[0]->Otros_Telefonos != "") {
                $telefonos_arl = $datos_arl[0]->Telefonos.",".$datos_arl[0]->Otros_Telefonos;
            } else {
                $telefonos_arl = $datos_arl[0]->Telefonos;
            }
            
            $ciudad_arl = $datos_arl[0]->Nombre_ciudad;
            $minucipio_arl = $datos_arl[0]->Nombre_municipio;

            $Agregar_copias['ARL'] = $nombre_arl."; ".$direccion_arl."; ".$email_arl."; ".$telefonos_arl."; ".$ciudad_arl."; ".$minucipio_arl;
        }
        
        if (isset($copia_afp_conocimiento)) {
            if($desicion_proforma == "proforma_acuerdo"){
                $datos_entidades_conocimiento = $this->globalService->informacionEntidadesConocimientoEvento($Id_Evento_pronuncia_corre, 'pdf');
            }else{
                $datos_entidades_conocimiento = $this->globalService->informacionEntidadesConocimientoEvento($Id_Evento_pronuncia_corre, 'pdf');
            }
            $Agregar_copias['AFP_Conocimiento'] = $datos_entidades_conocimiento;
        }

        // validamos la firma esta marcado para la Captura de la firma del cliente           
        if ($Firma_corre == 'firmar') {            
            $idcliente = sigmel_clientes::on('sigmel_gestiones')->select('Id_cliente', 'Nombre_cliente')
            ->where('Id_cliente', $Cliente)->get();
    
            $firmaclientecompleta = sigmel_informacion_firmas_clientes::on('sigmel_gestiones')->select('Firma')
            ->where('Id_cliente', $idcliente[0]->Id_cliente)->get();

            if(count($firmaclientecompleta) > 0){
                $Firma_cliente = $firmaclientecompleta[0]->Firma;
            }else{
                $Firma_cliente = 'No firma';
            }
            
        }else{
            $Firma_cliente = 'No firma';
        }

        // Logo cliente del Header
        $dato_logo_header = sigmel_clientes::on('sigmel_gestiones')
        ->select('Logo_cliente')
        ->where([['Id_cliente', $Cliente]])
        ->limit(1)->get();

        if (count($dato_logo_header) > 0) {
            $logo_header = $dato_logo_header[0]->Logo_cliente;
            $ruta_logo = "/logos_clientes/{$Cliente}/{$logo_header}";
        } else {
            $logo_header = "Sin logo";
            $ruta_logo = "";
        }  

        //Footer
        $dato_logo_footer = sigmel_clientes::on('sigmel_gestiones')
        ->select('Footer_cliente')
        ->where([['Id_cliente', $Cliente]])
        ->limit(1)->get();
        
        if (count($dato_logo_footer) > 0 && $dato_logo_footer[0]->Footer_cliente != null) {
            $footer = $dato_logo_footer[0]->Footer_cliente;
            $ruta_logo_footer = "/footer_clientes/{$Cliente}/{$footer}";
        } else {
            $footer = null;
            $ruta_logo_footer = null;
        }
        //  Extraemos los datos del footer 
        // $datos_footer = sigmel_clientes::on('sigmel_gestiones')
        // ->select('footer_dato_1', 'footer_dato_2', 'footer_dato_3', 'footer_dato_4', 'footer_dato_5')
        // ->where('Id_cliente',  $Cliente)->get();

        // if(count($datos_footer) > 0){
        //     $footer_dato_1 = $datos_footer[0]->footer_dato_1;
        //     $footer_dato_2 = $datos_footer[0]->footer_dato_2;
        //     $footer_dato_3 = $datos_footer[0]->footer_dato_3;
        //     $footer_dato_4 = $datos_footer[0]->footer_dato_4;
        //     $footer_dato_5 = $datos_footer[0]->footer_dato_5;

        // }else{
        //     $footer_dato_1 = "";
        //     $footer_dato_2 = "";
        //     $footer_dato_3 = "";
        //     $footer_dato_4 = "";
        //     $footer_dato_5 = "";
        // }

        if ($desicion_proforma == 'proforma_acuerdo') {

            $data = [
                'logo_header' => $logo_header,
                'footer' => $footer,
                'id_cliente' => $Cliente,
                'Ciudad_correspon' => $Ciudad_correspon,
                'Fecha_correspondencia' => fechaFormateada($Fecha_correspondencia),
                'Nombre_entidad' => $Nombre_entidad,
                'Email_entidad' => $Email_entidad,
                'Direccion_entidad' => $Direccion_entidad,
                'Telefonos_entidad' => $Telefonos_entidad,
                'Dpto_Ciudad_entidad' => $Dpto_Ciudad_entidad,
                'Asunto_cali' => $Asunto_cali,
                'Sustenta_cali' => $Sustenta_cali,
                'Agregar_copia' => $Agregar_copias,
                'Tipo_afiliado' => $Tipo_afiliado,
                'Nombre_afiliado' => $Nombre_afiliado,
                'Direccion_afiliado' => $Direccion_afiliado,
                'Email_afiliado' => $Email_afiliado,
                'Telefono_afiliado' => $Telefono_afiliado,
                'tipo_doc_afiliado' => $tipo_doc_afiliado,
                'nro_identificacion_afiliado' => $nro_identificacion_afiliado,
                'Departamento_afiliado' => $Departamento_afiliado,
                'Ciudad_afiliado' => $Ciudad_afiliado,
                'Nombre_afiliado_noti_benefi' => $Nombre_afiliado_noti_benefi,
                'Direccion_afiliado_noti_benefi' => $Direccion_afiliado_notibenefi,
                'Email_afiliado_noti_benefi' => $Email_afiliado_notibenefi,
                'Telefono_afiliado_noti_benefi' => $Telefono_afiliado_notibenefi,
                'T_documento_noti_benefi' => $T_documento_notibenefi,
                'NroIden_afiliado_noti_benefi' => $NroIden_afiliado_notibenefi,
                'Departamento_afiliado_noti_benefi' => $Departamento_afiliado_notibenefi,
                'Ciudad_afiliado_noti_benefi' => $Ciudad_afiliado_notibenefi,
                'N_radicado' => $N_radicado,
                'N_siniestro' => $N_siniestro,
                'N_dictamen' => $Dictamen_calificador,
                'Fecha_dictamen' => $Fecha_calificador,
                'PCL_Porcentaje' => $Porcentaje_pcl,
                'Tipo_evento' => $Tipo_evento,
                'Origen' => $T_origen,
                'F_estructuracion' => $Fecha_estruturacion,
            ];
            // $data = [
            //     'codigoQR' => $codigoQR,
            //     'logo_header' => $logo_header,
            //     'id_cliente' => $Cliente,
            //     'ID_evento' => $Id_Evento_pronuncia_corre,
            //     'Id_Asignacion' => $Asignacion_Pronuncia_corre,
            //     'Id_proceso' => $Id_Proceso_pronuncia_corre,
            //     'Nombre_afiliado_corre' => $Nombre_afiliado_corre,
            //     'Tipo_documento_afi' => $Tipo_documento_afi,
            //     'Iden_afiliado_corre' => $Iden_afiliado_corre,
            //     'Ciudad_correspon' => $Ciudad_correspon,
            //     'Fecha_correspondencia' => fechaFormateada($Fecha_correspondencia),
            //     'N_radicado' => $N_radicado,
            //     'Nombre_entidades' => $Nombre_entidades,
            //     'Direccion_enti' => $Direccion_enti,
            //     'Telefonos_enti' => $Telefonos_enti,
            //     'Email_enti' => $Email_enti,
            //     'Nombre_ciudad_enti' => $Nombre_ciudad_enti,
            //     'Nombre_departamento_enti' => $Nombre_departamento_enti,
            //     'Asunto_cali' => $Asunto_cali,
            //     'Nombre_calificador' => $Nombre_calificador,
            //     'Fecha_calificador' => $Fecha_calificador,
            //     'Porcentaje_pcl' => $Porcentaje_pcl,
            //     'Fecha_estruturacion' => $Fecha_estruturacion,
            //     'Sustenta_cali' => $Sustenta_cali,
            //     'Firma_cliente' => $Firma_cliente,
            //     'N_anexos' => $N_anexos,
            //     'Elaboro_pronuncia' => $Elaboro_pronuncia,            
            //     'Agregar_copia' => $Agregar_copias,
            //     'footer' => $footer,
            //     'N_siniestro' => $N_siniestro
            //     // 'footer_dato_1' => $footer_dato_1,
            //     // 'footer_dato_2' => $footer_dato_2,
            //     // 'footer_dato_3' => $footer_dato_3,
            //     // 'footer_dato_4' => $footer_dato_4,
            //     // 'footer_dato_5' => $footer_dato_5,
            // ];
    
            // Crear una instancia de Dompdf
            $pdf = app('dompdf.wrapper');
            $pdf->loadView('/Proformas/Proformas_Prev/PCL/oficio_pro_acuerdo', $data);  

            $indicativo = time();

            // $nombre_pdf = "PCL_ACUERDO_{$Asignacion_Pronuncia_corre}_{$Iden_afiliado_corre}.pdf";
            $nombre_pdf = "PCL_ACUERDO_{$Asignacion_Pronuncia_corre}_{$Iden_afiliado_corre}_{$indicativo}.pdf";

            //Obtener el contenido del PDF
            $output = $pdf->output();
            //Guardar el PDF en un archivo

            file_put_contents(public_path("Documentos_Eventos/{$Id_Evento_pronuncia_corre}/{$nombre_pdf}"), $output);
            $actualizar_nombre_documento = [
                'Nombre_documento' => $nombre_pdf
            ];

            sigmel_informacion_comunicado_eventos::on('sigmel_gestiones')->where('Id_Comunicado', $Id_comunicado)
            ->update($actualizar_nombre_documento);
            /* Inserción del registro de que fue descargado */
            // Extraemos el id del servicio asociado
            // $dato_id_servicio = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_asignacion_eventos as siae')
            // ->select('siae.Id_servicio')
            // ->where([
            //     ['siae.Id_Asignacion', $Asignacion_Pronuncia_corre],
            //     ['siae.ID_evento', $Id_Evento_pronuncia_corre],
            //     ['siae.Id_proceso', $Id_Proceso_pronuncia_corre],
            // ])->get();

            // $Id_servicio = $dato_id_servicio[0]->Id_servicio;

            // // Se pregunta por el nombre del documento si ya existe para evitar insertarlo más de una vez
            // $verficar_documento = sigmel_registro_descarga_documentos::on('sigmel_gestiones')
            // ->select('Nombre_documento')
            // ->where([
            //     ['Nombre_documento', $nombre_pdf],
            // ])->get();
            
            // if(count($verficar_documento) == 0){

            //     // Se valida si antes de insertar la info del doc de acuerdo ya hay un doc de desacuerdo
            //     $nombre_docu_desacuerdo = "PCL_DESACUERDO_{$Asignacion_Pronuncia_corre}_{$Iden_afiliado_corre}.docx";
            //     $verificar_docu_desacuerdo = sigmel_registro_descarga_documentos::on('sigmel_gestiones')
            //     ->select('Nombre_documento')
            //     ->where([
            //         ['Nombre_documento', $nombre_docu_desacuerdo],
            //     ])->get();

            //     // Si no existe info del documento de desacuerdo, inserta la info del documento de acuerdo
            //     // De lo contrario hace una actualización de la info
            //     if (count($verificar_docu_desacuerdo) == 0) {
            //         $info_descarga_documento = [
            //             'Id_Asignacion' => $Asignacion_Pronuncia_corre,
            //             'Id_proceso' => $Id_Proceso_pronuncia_corre,
            //             'Id_servicio' => $Id_servicio,
            //             'ID_evento' => $Id_Evento_pronuncia_corre,
            //             'Nombre_documento' => $nombre_pdf,
            //             'N_radicado_documento' => $nro_radicado,
            //             'F_elaboracion_correspondencia' => $fecha,
            //             'F_descarga_documento' => $date,
            //             'Nombre_usuario' => $nombre_usuario,
            //         ];
                    
            //         sigmel_registro_descarga_documentos::on('sigmel_gestiones')->insert($info_descarga_documento);
            //     }else{
            //         $info_descarga_documento = [
            //             'Id_Asignacion' => $Asignacion_Pronuncia_corre,
            //             'Id_proceso' => $Id_Proceso_pronuncia_corre,
            //             'Id_servicio' => $Id_servicio,
            //             'ID_evento' => $Id_Evento_pronuncia_corre,
            //             'Nombre_documento' => $nombre_pdf,
            //             'N_radicado_documento' => $nro_radicado,
            //             'F_elaboracion_correspondencia' => $fecha,
            //             'F_descarga_documento' => $date,
            //             'Nombre_usuario' => $nombre_usuario,
            //         ];
            //         sigmel_registro_descarga_documentos::on('sigmel_gestiones')
            //         ->where([
            //             ['Id_Asignacion', $Asignacion_Pronuncia_corre],
            //             ['N_radicado_documento', $nro_radicado],
            //             ['ID_evento', $Id_Evento_pronuncia_corre]
            //         ])
            //         ->update($info_descarga_documento);
            //     }

            // }

            // return $pdf->download($nombre_pdf);   

            $datos = [
                'indicativo' => $indicativo,
                'pdf' => base64_encode($pdf->download($nombre_pdf)->getOriginalContent())
            ];
            
            return response()->json($datos);
        } 
        else{
            $data = [
                'logo_header' => $logo_header,
                'footer' => $footer,
                'id_cliente' => $Cliente,
                'Ciudad_correspon' => $Ciudad_correspon,
                'Fecha_correspondencia' => fechaFormateada($Fecha_correspondencia),
                'Nombre_entidad' => $Nombre_entidad,
                'Email_entidad' => $Email_entidad,
                'Direccion_entidad' => $Direccion_entidad,
                'Telefonos_entidad' => $Telefonos_entidad,
                'Dpto_Ciudad_entidad' => $Dpto_Ciudad_entidad,
                'Asunto_cali' => $Asunto_cali,
                'Sustenta_cali' => $Sustenta_cali,
                'Agregar_copia' => $Agregar_copias,
                'Tipo_afiliado' => $Tipo_afiliado,
                'Nombre_afiliado' => $Nombre_afiliado,
                'Direccion_afiliado' => $Direccion_afiliado,
                'Email_afiliado' => $Email_afiliado,
                'Telefono_afiliado' => $Telefono_afiliado,
                'tipo_doc_afiliado' => $tipo_doc_afiliado,
                'nro_identificacion_afiliado' => $nro_identificacion_afiliado,
                'Departamento_afiliado' => $Departamento_afiliado,
                'Ciudad_afiliado' => $Ciudad_afiliado,
                'Nombre_afiliado_noti_benefi' => $Nombre_afiliado_noti_benefi,
                'Direccion_afiliado_noti_benefi' => $Direccion_afiliado_notibenefi,
                'Email_afiliado_noti_benefi' => $Email_afiliado_notibenefi,
                'Telefono_afiliado_noti_benefi' => $Telefono_afiliado_notibenefi,
                'T_documento_noti_benefi' => $T_documento_notibenefi,
                'NroIden_afiliado_noti_benefi' => $NroIden_afiliado_notibenefi,
                'Departamento_afiliado_noti_benefi' => $Departamento_afiliado_notibenefi,
                'Ciudad_afiliado_noti_benefi' => $Ciudad_afiliado_notibenefi,
                'N_radicado' => $N_radicado,
                'N_siniestro' => $N_siniestro,
                'CIE10Nombres' => $CIE10Nombres,
                'Dictamen_calificador' => $Dictamen_calificador,
                'Fecha_calificador' => $Fecha_calificador,
                'Porcentaje_pcl' => $Porcentaje_pcl,
                'Tipo_evento' => $Tipo_evento,
                'T_origen' => $T_origen,
                'Fecha_estruturacion' => $Fecha_estruturacion,
            ];

            // Crear una instancia de Dompdf
            $pdf = app('dompdf.wrapper');
            $pdf->loadView('/Proformas/Proformas_Prev/PCL/oficio_pro_desacuerdo', $data);  

            $indicativo = time();

            $nombre_pdf = "PCL_DESACUERDO_{$Asignacion_Pronuncia_corre}_{$Iden_afiliado_corre}_{$indicativo}.pdf";

            //Obtener el contenido del PDF
            $output = $pdf->output();
            //Guardar el PDF en un archivo

            file_put_contents(public_path("Documentos_Eventos/{$Id_Evento_pronuncia_corre}/{$nombre_pdf}"), $output);
            $actualizar_nombre_documento = [
                'Nombre_documento' => $nombre_pdf
            ];

            sigmel_informacion_comunicado_eventos::on('sigmel_gestiones')->where('Id_Comunicado', $Id_comunicado)
            ->update($actualizar_nombre_documento);

            $datos = [
                'indicativo' => $indicativo,
                'pdf' => base64_encode($pdf->download($nombre_pdf)->getOriginalContent())
            ];
            
            return response()->json($datos);
        }
        
    }

}
function reemplazarStyleImg($html, $nuevoStyle)
{
    // Utilizar expresiones regulares para encontrar y reemplazar el atributo style
    $patron = '/<img([^>]*)style="[^"]*"[^>]*>/';
    $htmlModificado = preg_replace_callback($patron, function ($coincidencia) use ($nuevoStyle) {
        $imgTag = $coincidencia[0];
        $imgTagModificado = preg_replace('/style="[^"]*"/', $nuevoStyle, $imgTag);
        return $imgTagModificado;
    }, $html);

    return $htmlModificado;
}