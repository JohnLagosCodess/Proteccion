<?php

namespace App\Http\Controllers\Coordinador;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\sigmel_lista_tipo_eventos;
use App\Models\sigmel_lista_motivo_solicitudes;
use App\Models\sigmel_informacion_afiliado_eventos;
use App\Models\sigmel_lista_parametros;
use App\Models\sigmel_informacion_documentos_solicitados_eventos;
use App\Models\sigmel_lista_cie_diagnosticos;
use App\Models\sigmel_informacion_examenes_interconsultas_eventos;
use App\Models\sigmel_informacion_dto_atel_eventos;
use App\Models\sigmel_informacion_diagnosticos_eventos;
use App\Models\sigmel_informacion_pericial_eventos;
use App\Models\sigmel_informacion_eventos;
use App\Models\cndatos_eventos;

class DeterminacionOrigenATEL extends Controller
{
    public function mostrarVistaDtoATEL(Request $request){
        if(!Auth::check()){
            return redirect('/');
        }
        $user = Auth::user();
        $Id_evento_dto_atel = $request->Id_evento_calitec;
        $Id_asignacion_dto_atel = $request->Id_asignacion_calitec;
        $Id_proceso_dto_atel = $request->Id_proceso_calitec;

        $array_datos_calificacion_origen = DB::select('CALL psrcalificacionOrigen(?)', array($Id_asignacion_dto_atel));

        $consecutivo_dto_atel = sigmel_informacion_dto_atel_eventos::on('sigmel_gestiones')
        ->max('Numero_dictamen');
        
        if ($consecutivo_dto_atel > 0) {
            $numero_consecutivo = $consecutivo_dto_atel + 1;
        }else{
            $numero_consecutivo = 0000000 + 1;
        }

        // Formatear el número consecutivo a 7 dígitos
        $numero_consecutivo = str_pad($numero_consecutivo, 7, "0", STR_PAD_LEFT);

        // Obtenemos la informaciópn de  la tabla sigmel_informacion_dto_atel_eventos
        $datos_bd_DTO_ATEL = sigmel_informacion_dto_atel_eventos::on('sigmel_gestiones')
        ->where('ID_evento', $Id_evento_dto_atel)->get();

        // obtenemos el nombre del evento
        if (count($datos_bd_DTO_ATEL) > 0) {
            $id_evento_guardado_dto_atel = $datos_bd_DTO_ATEL[0]->Tipo_evento;
            $array_nombre_del_evento_guardado = sigmel_lista_tipo_eventos::on('sigmel_gestiones')
            ->select('Nombre_evento')
            ->where('Id_Evento', $id_evento_guardado_dto_atel)->get();
            $nombre_del_evento_guardado = $array_nombre_del_evento_guardado[0]->Nombre_evento;
        }else{
            $nombre_del_evento_guardado = "";
        }
        

        //Traer Motivo de solicitud,
        $motivo_solicitud_actual = cndatos_eventos::on('sigmel_gestiones')
        ->select('Id_motivo_solicitud','Nombre_solicitud')
        ->where('ID_evento', $Id_evento_dto_atel)
        ->get();

        //Traer Información apoderado 
        $datos_apoderado_actual = sigmel_informacion_afiliado_eventos::on('sigmel_gestiones')
        ->select('Nombre_apoderado','Nro_identificacion_apoderado')
        ->where('ID_evento', $Id_evento_dto_atel)
        ->get();

        // Traer Información laboral
        $array_datos_info_laboral=DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_laboral_eventos as sile')
        ->leftJoin('sigmel_gestiones.sigmel_lista_arls as sla', 'sla.Id_arl', '=', 'sile.Id_arl')
        ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sldm.Id_departamento', '=', 'sile.Id_departamento')
        ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldms', 'sldms.Id_municipios', '=', 'sile.Id_municipio')
        ->leftJoin('sigmel_gestiones.sigmel_lista_actividad_economicas as slae', 'slae.Id_ActEco', '=', 'sile.Id_actividad_economica')
        ->leftJoin('sigmel_gestiones.sigmel_lista_clase_riesgos as slcr', 'slcr.Id_Riesgo', '=', 'sile.Id_clase_riesgo')
        ->leftJoin('sigmel_gestiones.sigmel_lista_ciuo_codigos as slcc', 'slcc.Id_Codigo', '=', 'sile.Id_codigo_ciuo')
        ->select('sile.ID_evento', 'sile.Tipo_empleado','sile.Id_arl', 'sla.Nombre_arl', 'sile.Empresa', 'sile.Nit_o_cc', 'sile.Telefono_empresa',
        'sile.Email', 'sile.Direccion', 'sile.Id_departamento', 'sldm.Nombre_departamento', 'sile.Id_municipio', 
        'sldms.Nombre_municipio', 'sile.Id_actividad_economica', 'slae.Nombre_actividad', 'sile.Id_clase_riesgo', 
        'slcr.Nombre_riesgo', 'sile.Persona_contacto', 'sile.Telefono_persona_contacto', 'sile.Id_codigo_ciuo', 'slcc.Nombre_ciuo', 
        'sile.F_ingreso', 'sile.Cargo', 'sile.Funciones_cargo', 'sile.Antiguedad_empresa', 'sile.Antiguedad_cargo_empresa', 
        'sile.F_retiro', 'sile.Descripcion')
        ->where([['sile.ID_evento','=', $Id_evento_dto_atel]])
        ->orderBy('sile.F_registro', 'desc')
        ->limit(1)
        ->get();

        //Trae Documentos Solicitados del proceso origen solamente
        $listado_documentos_solicitados = sigmel_informacion_documentos_solicitados_eventos::on('sigmel_gestiones')
        ->select('Id_Documento_Solicitado', 'F_solicitud_documento', 'Nombre_documento', 
        'Descripcion', 'Nombre_solicitante', 'F_recepcion_documento')
        ->where([
            ['ID_evento',$Id_evento_dto_atel],
            ['Estado','Activo'],
            ['Id_proceso','1']
         ])
        ->get();

        //Trae si ya marco Articulo 12
        $dato_articulo_12= DB::table(getDatabaseName('sigmel_gestiones') .'sigmel_informacion_documentos_solicitados_eventos')
       ->select('Articulo_12')
       ->where([
                ['ID_evento', $Id_evento_dto_atel],
                ['Id_Asignacion', $Id_asignacion_dto_atel], 
                ['Id_proceso', '1'], 
                ['Articulo_12','=','No_mas_seguimiento']
            ])
        ->orderBy('Id_Documento_Solicitado', 'desc')
        ->limit(1)
        ->get();

        // TRAER DATOS EXAMENES E INTERCONSULTAS
        $array_datos_examenes_interconsultas = sigmel_informacion_examenes_interconsultas_eventos::on('sigmel_gestiones')
        ->where([
            ['ID_evento',$Id_evento_dto_atel],
            ['Id_Asignacion',$Id_asignacion_dto_atel],
            ['Id_proceso',$Id_proceso_dto_atel],
            ['Estado', 'Activo']
        ])
        ->get();

        // TRAER DATOS CIE10 (Diagnóstico motivo de calificación)
        $array_datos_diagnostico_motcalifi =DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_diagnosticos_eventos as side')
        ->leftJoin('sigmel_gestiones.sigmel_lista_cie_diagnosticos as slcd', 'slcd.Id_Cie_diagnostico', '=', 'side.CIE10')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp', 'slp.Id_Parametro', '=', 'side.Origen_CIE10')
        ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp2', 'slp2.Id_Parametro', '=', 'side.Lateralidad_CIE10')
        ->select('side.Id_Diagnosticos_motcali', 'side.ID_evento', 'side.CIE10', 'slcd.CIE10 as Codigo', 'side.Nombre_CIE10', 'side.Origen_CIE10', 
        'slp.Nombre_parametro as Nombre_parametro_origen', 'side.Deficiencia_motivo_califi_condiciones', 'side.Lateralidad_CIE10', 'slp2.Nombre_parametro as Nombre_parametro_lateralidad', 'side.Principal')
        ->where([['side.ID_evento',$Id_evento_dto_atel],
            ['side.Id_Asignacion',$Id_asignacion_dto_atel],
            ['side.Id_proceso',$Id_proceso_dto_atel],
            ['side.Estado', '=', 'Activo']
        ])->get(); 

        // echo "<pre>";
        // print_r($array_datos_diagnostico_motcalifi);
        // echo "</pre>";
       
        // TRAER DATOS DE HISTORICO LABORAL (APLICA SOLAMENTE PARA EL FORMULARIO DE ENFERMEDAD)
        $array_datos_historico_laboral = DB::table(getDatabaseName('sigmel_gestiones') .'sigmel_historico_empresas_afiliados as shea')
        ->leftJoin('sigmel_gestiones.sigmel_lista_arls as slarl', 'slarl.Id_Arl', '=', 'shea.Id_arl')
        ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm', 'sldm.Id_departamento', '=', 'shea.Id_departamento') 
        ->leftJoin('sigmel_gestiones.sigmel_lista_departamentos_municipios as sldm1', 'sldm1.Id_municipios', '=', 'shea.Id_municipio') 
        ->leftJoin('sigmel_gestiones.sigmel_lista_actividad_economicas as slae', 'slae.Id_ActEco', '=', 'shea.Id_actividad_economica')
        ->leftJoin('sigmel_gestiones.sigmel_lista_clase_riesgos as slcr', 'slcr.Id_Riesgo', '=', 'shea.Id_clase_riesgo')
        ->leftJoin('sigmel_gestiones.sigmel_lista_ciuo_codigos as slcc', 'slcc.Id_Codigo', '=', 'shea.Id_codigo_ciuo')
        ->select(
            'shea.Tipo_empleado',
            'shea.Id_arl',
            'slarl.Nombre_arl',
            'shea.Empresa',
            'shea.Nit_o_cc',
            'shea.Telefono_empresa',
            'shea.Email',
            'shea.Direccion',
            'shea.Id_departamento',
            'sldm.Nombre_departamento',
            'shea.Id_municipio',
            'sldm1.Nombre_municipio',
            'shea.Id_actividad_economica',
            'slae.id_codigo',
            'slae.Nombre_actividad',
            DB::raw("CONCAT(slae.id_codigo,' - ',slae.Nombre_actividad) as full_actividad_economica"),
            'shea.Id_clase_riesgo',
            'slcr.Nombre_riesgo',
            'shea.Persona_contacto',
            'shea.Telefono_persona_contacto',
            'shea.Id_codigo_ciuo',
            'slcc.id_codigo_ciuo',
            'slcc.Nombre_ciuo',
            DB::raw("CONCAT(slcc.id_codigo_ciuo,' - ',slcc.Nombre_ciuo) as full_ciuo"),
            'shea.F_ingreso',
            'shea.Cargo',
            'shea.Funciones_cargo',
            'shea.Antiguedad_empresa',
            'shea.Antiguedad_cargo_empresa',
            'shea.F_retiro',
            'shea.Descripcion'
        )
        ->where([
            ['shea.Nro_identificacion', '=', $array_datos_calificacion_origen[0]->Nro_identificacion]
        ])
        ->distinct()
        ->get();

        return view('coordinador.determinacionOrigenATEL', compact('user', 'array_datos_calificacion_origen', 'numero_consecutivo', 
        'motivo_solicitud_actual', 'datos_apoderado_actual', 
        'array_datos_info_laboral', 'listado_documentos_solicitados', 
        'dato_articulo_12', 'array_datos_diagnostico_motcalifi',
        'array_datos_examenes_interconsultas', 'array_datos_historico_laboral', 'datos_bd_DTO_ATEL', 'nombre_del_evento_guardado'));
    }

    public function cargueListadoSelectoresDTOATEL(Request $request){
        $parametro = $request->parametro;

        if ($parametro == "tipo_de_evento_si") {
            $listado_tipos_evento = sigmel_lista_tipo_eventos::on('sigmel_gestiones')
            ->select('Id_Evento', 'Nombre_evento')
            ->where('Estado', 'activo')
            ->whereNotIn('Nombre_evento', ['Sin Cobertura'])
            ->get();

            $info_tipos_evento = json_decode(json_encode($listado_tipos_evento, true));
            return response()->json($info_tipos_evento);
        }
        if ($parametro == "tipo_de_evento_no") {
            $listado_tipos_evento = sigmel_lista_tipo_eventos::on('sigmel_gestiones')
            ->select('Id_Evento', 'Nombre_evento')
            ->where('Estado', 'activo')
            ->whereNotIn('Id_Evento', [1,2,3])
            ->get();

            $info_tipos_evento = json_decode(json_encode($listado_tipos_evento, true));
            return response()->json($info_tipos_evento);
        }
        if ($parametro == "motivo_solicitud") {
            $listado_motivos_solicitud = sigmel_lista_motivo_solicitudes::on('sigmel_gestiones')
            ->select('Id_Solicitud', 'Nombre_solicitud')
            ->where('Estado', 'activo')
            ->get();

            $info_motivos_solicitud = json_decode(json_encode($listado_motivos_solicitud, true));
            return response()->json($info_motivos_solicitud);
        }

        if($parametro == "tipo_accidente"){
            $listado_tipos_accidente = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([['Tipo_lista', '=', 'Tipo de accidiente'], ['Estado', '=' ,'activo']])
            ->get();

            $info_tipos_accidente = json_decode(json_encode($listado_tipos_accidente, true));
            return response()->json($info_tipos_accidente);
        }

        if($parametro == "grado_severidad"){
            $listado_grado_severidad = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([['Tipo_lista', '=', 'Grado de Severidad'], ['Estado', '=' ,'activo']])
            ->get();

            $info_grado_severidad = json_decode(json_encode($listado_grado_severidad, true));
            return response()->json($info_grado_severidad);
        }

        if ($parametro == "factor_riesgo") {
            $listado_factor_riesgo = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([['Tipo_lista', '=', 'Factor de Riesgo'], ['Estado', '=' ,'activo']])
            ->get();

            $info_factor_riesgo = json_decode(json_encode($listado_factor_riesgo, true));
            return response()->json($info_factor_riesgo);
        }

        if ($parametro == "tipo_lesion") {
            $listado_tipo_lesion = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([['Tipo_lista', '=', 'Tipo de Lesion'], ['Estado', '=' ,'activo']])
            ->get();
        
            $info_tipo_lesion = json_decode(json_encode($listado_tipo_lesion, true));
            return response()->json($info_tipo_lesion);
        }

        if ($parametro == "parte_cuerpo_afectada") {
            $listado_parte_cuerpo_afectada = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([['Tipo_lista', '=', 'Parte Cuerpo Afectada'], ['Estado', '=' ,'activo']])
            ->get();
        
            $info_parte_cuerpo_afectada = json_decode(json_encode($listado_parte_cuerpo_afectada, true));
            return response()->json($info_parte_cuerpo_afectada);
        }

        // Listado cie diagnosticos motivo calificacion
        if ($parametro == 'listado_CIE10') {
            $listado_cie_diagnostico = sigmel_lista_cie_diagnosticos::on('sigmel_gestiones')
            ->select('Id_Cie_diagnostico', 'CIE10')
            ->where([
                ['Estado', '=', 'activo']
            ])
            ->get();

            $info_listado_cie_diagnostico = json_decode(json_encode($listado_cie_diagnostico, true));
            return response()->json($info_listado_cie_diagnostico);
        }

        // Listado Origen CIE10 diagnosticos motivo calificacion
        if ($parametro == 'listado_OrigenCIE10') {
            $listado_Origen_CIE10 = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([
                ['Tipo_lista', '=', 'Origen Cie10'],
                ['Estado', '=', 'activo']
            ])
            ->get();

            $info_listado_Origen_CIE10 = json_decode(json_encode($listado_Origen_CIE10, true));
            return response()->json($info_listado_Origen_CIE10);
        }

        // Listado Lateralidad CIE10 diagnosticos motivo calificacion
        if ($parametro == 'listado_LateralidadCIE10') {
            $listado_Lateralidad_CIE10 = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([
                ['Tipo_lista', '=', 'Lateralidad Cie10'],
                ['Estado', '=', 'activo']
            ])
            ->get();

            $info_listado_Lateralidad_CIE10 = json_decode(json_encode($listado_Lateralidad_CIE10, true));
            return response()->json($info_listado_Lateralidad_CIE10);
        }

        //Nombre diagnostico CIE10
        $Id_CIE = $request->seleccion;
        
        if ($parametro == 'listado_NombreCIE10') {
            $listado_Nombre_CIE10 = sigmel_lista_cie_diagnosticos::on('sigmel_gestiones')
            ->select('Descripcion_diagnostico')
            ->where([
                ['Id_Cie_diagnostico', '=', $Id_CIE],
                ['Estado', '=', 'activo']
            ])
            ->get();

            $info_listado_Nombre_CIE10 = json_decode(json_encode($listado_Nombre_CIE10, true));
            return response()->json($info_listado_Nombre_CIE10);
            
        }

        // Selector Origen con tipo de evento: Accidente
        if ($parametro == "origen_vali_1") {
            $listado_origen_vali_1 = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([
                ['Tipo_lista', '=', 'Origen DTO ATEL'],
                ['Estado', '=', 'activo']
            ])
            ->whereNotIn('Nombre_parametro', ['Incidente', 'Sin Cobertura'])
            ->get();
            $info_origen_vali_1 = json_decode(json_encode($listado_origen_vali_1, true));
            return response()->json($info_origen_vali_1);
        }

        // Selector Origen con tipo de evento: Incidente
        if ($parametro == "origen_vali_2") {
            $listado_origen_vali_2 = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([
                ['Tipo_lista', '=', 'Origen DTO ATEL'],
                ['Estado', '=', 'activo']
            ])
            ->whereNotIn('Nombre_parametro', ['Común', 'Laboral', 'Sin Origen', 'Sin Cobertura'])
            ->get();
            $info_origen_vali_2 = json_decode(json_encode($listado_origen_vali_2, true));
            return response()->json($info_origen_vali_2);
        }

        // Selector Origen con tipo de evento: Sin Cobertura
        if ($parametro == "origen_vali_3") {
            $listado_origen_vali_3 = sigmel_lista_parametros::on('sigmel_gestiones')
            ->select('Id_Parametro', 'Nombre_parametro')
            ->where([
                ['Tipo_lista', '=', 'Origen DTO ATEL'],
                ['Estado', '=', 'activo']
            ])
            ->whereNotIn('Nombre_parametro', ['Común', 'Laboral', 'Sin Origen', 'Incidente'])
            ->get();
            $info_origen_vali_3 = json_decode(json_encode($listado_origen_vali_3, true));
            return response()->json($info_origen_vali_3);
        }

    }

    public function GuardaroActualizarInfoDTOTAEL(Request $request){
        if(!Auth::check()){
            return redirect('/');
        }
        $time = time();
        $date = date("Y-m-d", $time);
        $nombre_usuario = Auth::user()->name;

        // Paso N°1: Actualizar el motivo de solicitud y tipo de evento
        $datos_actualizar_motivo_solicitud = [
            'Id_motivo_solicitud' => $request->motivo_solicitud
        ];

        sigmel_informacion_pericial_eventos::on('sigmel_gestiones')
        ->where('ID_evento', $request->ID_Evento)->update($datos_actualizar_motivo_solicitud);

        $datos_actualizar_tipo_evento = [
            'Tipo_evento' => $request->Tipo_evento
        ];

        sigmel_informacion_eventos::on('sigmel_gestiones')
        ->where('ID_evento', $request->ID_Evento)->update($datos_actualizar_tipo_evento);

        // Paso N°2: Guardar los datos de Examenes interconsultas

        // Seteo del autoincrement para mantener el primary key siempre consecutivo.
        $max_id = sigmel_informacion_examenes_interconsultas_eventos::on('sigmel_gestiones')
        ->max('Id_Examenes_interconsultas');
        if ($max_id <> "") {
            DB::connection('sigmel_gestiones')
            ->statement("ALTER TABLE sigmel_informacion_examenes_interconsultas_eventos AUTO_INCREMENT = ".($max_id));
        }

        if (!empty($request->Examenes_interconsultas)) {
            if (count($request->Examenes_interconsultas) > 0) {
                // Captura del array de los datos de la tabla
                $array_examenes_interconsultas = $request->Examenes_interconsultas;
    
                // Iteración para extraer los datos de la tabla y adicionar los datos de Id evento, Id asignacion y Id proceso
                $array_datos_organizados_examenes_interconsultas = [];
                foreach ($array_examenes_interconsultas as $subarray_datos) {
    
                    array_unshift($subarray_datos, $request->Id_proceso);
                    array_unshift($subarray_datos, $request->Id_Asignacion);
                    array_unshift($subarray_datos, $request->ID_Evento);
    
                    $subarray_datos[] = $nombre_usuario;
                    $subarray_datos[] = $date;
    
                    array_push($array_datos_organizados_examenes_interconsultas, $subarray_datos);
                }
    
                // Creación de array con los campos de la tabla: sigmel_informacion_examenes_interconsultas_eventos
                $array_tabla_examen_interconsulta = ['ID_evento','Id_Asignacion','Id_proceso',
                'F_examen_interconsulta','Nombre_examen_interconsulta','Descripcion_resultado',
                'Nombre_usuario','F_registro'];
    
                // Combinación de los campos de la tabla con los datos
                $array_datos_con_keys_examenes_interconsultas = [];
                foreach ($array_datos_organizados_examenes_interconsultas as $subarray_datos_organizados_examenes_interconsultas) {
                    array_push($array_datos_con_keys_examenes_interconsultas, array_combine($array_tabla_examen_interconsulta, $subarray_datos_organizados_examenes_interconsultas));
                }
    
                // Inserción de la información
                foreach ($array_datos_con_keys_examenes_interconsultas as $insertar_examen) {
                    sigmel_informacion_examenes_interconsultas_eventos::on('sigmel_gestiones')->insert($insertar_examen);
                } 
            }
        }

        // Paso N°3: Guardar los datos de Diagnosticos motivo de calificacion

        // Seteo del autoincrement para mantener el primary key siempre consecutivo.
        $max_id = sigmel_informacion_diagnosticos_eventos::on('sigmel_gestiones')
        ->max('Id_Diagnosticos_motcali');
        if ($max_id <> "") {
            DB::connection('sigmel_gestiones')
            ->statement("ALTER TABLE sigmel_informacion_diagnosticos_eventos AUTO_INCREMENT = ".($max_id));
        }

        if (!empty($request->Motivo_calificacion)) {
            if (count($request->Motivo_calificacion) > 0) {
                // Captura del array de los datos de la tabla
                $array_diagnosticos_motivo_calificacion = $request->Motivo_calificacion;
                $array_datos_organizados_motivo_calificacion = [];
                foreach ($array_diagnosticos_motivo_calificacion as $subarray_datos_motivo_calificacion) {
    
                    array_unshift($subarray_datos_motivo_calificacion, $request->Id_proceso);
                    array_unshift($subarray_datos_motivo_calificacion, $request->Id_Asignacion);
                    array_unshift($subarray_datos_motivo_calificacion, $request->ID_Evento);
    
                    $subarray_datos_motivo_calificacion[] = $nombre_usuario;
                    $subarray_datos_motivo_calificacion[] = $date;
    
                    array_push($array_datos_organizados_motivo_calificacion, $subarray_datos_motivo_calificacion);
                }
    
                // Creación de array con los campos de la tabla: sigmel_informacion_diagnosticos_eventos
                $array_tabla_diagnosticos_motivo_calificacion = ['ID_evento','Id_Asignacion','Id_proceso',
                'CIE10','Nombre_CIE10', 'Deficiencia_motivo_califi_condiciones', 'Lateralidad_CIE10', 'Origen_CIE10', 
                'Principal', 'Nombre_usuario','F_registro'];
                // Combinación de los campos de la tabla con los datos
                $array_datos_con_keys_motivo_calificacion = [];
                foreach ($array_datos_organizados_motivo_calificacion as $subarray_datos_organizados_motivo_calificacion) {
                    array_push($array_datos_con_keys_motivo_calificacion, array_combine($array_tabla_diagnosticos_motivo_calificacion, $subarray_datos_organizados_motivo_calificacion));
                }
    
                // Inserción de la información
                foreach ($array_datos_con_keys_motivo_calificacion as $insertar_diagnostico) {
                    sigmel_informacion_diagnosticos_eventos::on('sigmel_gestiones')->insert($insertar_diagnostico);
                }
            }
        }

        // Paso N° 4: Guardar los datos del formulario dto_atel
        $Tipo_evento = $request->Tipo_evento;

        if (!empty($request->Relacion_documentos)) {
            $total_relacion_documentos = implode(", ", $request->Relacion_documentos);                
        }else{
            $total_relacion_documentos = '';
        }

        // Tipo de formulario: Accidente, Incidente, Sin Cobertura
        if ($Tipo_evento == 1 || $Tipo_evento == 3 || $Tipo_evento == 4) {
            $datos_formulario = [
                'ID_Evento' => $request->ID_Evento,
                'Id_Asignacion' => $request->Id_Asignacion,
                'Id_proceso' => $request->Id_proceso,
                'Activo' => $request->Activo,
                'Tipo_evento' => $request->Tipo_evento,
                'Fecha_dictamen' => $request->Fecha_dictamen,
                'Numero_dictamen' => $request->Numero_dictamen,
                'Tipo_accidente' => $request->Tipo_accidente,
                'Fecha_evento' => $request->Fecha_evento,
                'Hora_evento' => $request->Hora_evento,
                'Grado_severidad' => $request->Grado_severidad,
                'Mortal' => $request->Mortal,
                'Fecha_fallecimiento' => $request->Fecha_fallecimiento,
                'Descripcion_FURAT' => $request->Descripcion_FURAT,
                'Factor_riesgo' => $request->Factor_riesgo,
                'Tipo_lesion' => $request->Tipo_lesion,
                'Parte_cuerpo_afectada' => $request->Parte_cuerpo_afectada,
                'Justificacion_revision_origen' => $request->Justificacion_revision_origen,
                'Relacion_documentos' => $total_relacion_documentos,
                'Otros_relacion_documentos' => $request->Otros_relacion_documentos,
                'Sustentacion' => $request->Sustentacion,
                'Origen' => $request->Origen,
                'Nombre_usuario' => $nombre_usuario,
                'F_registro' => $date,
            ];

        }
        // Tipo de Formulario: Enfermedad
        else if ($Tipo_evento == 2) {
            $datos_formulario = [
                'ID_Evento' => $request->ID_Evento,
                'Id_Asignacion' => $request->Id_Asignacion,
                'Id_proceso' => $request->Id_proceso,
                'Activo' => $request->Activo,
                'Tipo_evento' => $request->Tipo_evento,
                'Fecha_dictamen' => $request->Fecha_dictamen,
                'Numero_dictamen' => $request->Numero_dictamen,
                'Fecha_diagnostico_enfermedad'=>$request->Fecha_diagnostico_enfermedad,
                'Mortal' => $request->Mortal,
                'Fecha_fallecimiento' => $request->Fecha_fallecimiento,
                'Factor_riesgo' => $request->Factor_riesgo,
                'Enfermedad_heredada'=> $request->Enfermedad_heredada,
                'Nombre_entidad_hereda'=> $request->Nombre_entidad_hereda,
                'Justificacion_revision_origen' => $request->Justificacion_revision_origen,
                'Relacion_documentos' => $total_relacion_documentos,
                'Otros_relacion_documentos' => $request->Otros_relacion_documentos,
                'Sustentacion' => $request->Sustentacion,
                'Origen' => $request->Origen,
                'Nombre_usuario' => $nombre_usuario,
                'F_registro' => $date,
            ];
        }

        $Id_Dto_ATEL = $request->Id_Dto_ATEL;
        if ($Id_Dto_ATEL == "") {
            sigmel_informacion_dto_atel_eventos::on('sigmel_gestiones')->insert($datos_formulario);
            $mensaje = 'Información guardada satisfactoriamente.';
        }else{
            sigmel_informacion_dto_atel_eventos::on('sigmel_gestiones')
            ->where('Id_Dto_ATEL', $Id_Dto_ATEL)->update($datos_formulario);
            $mensaje = 'Información actualizada satisfactoriamente.';
        }
        

        $mensajes = array(
            "parametro" => 'agregar_dto_atel',
            "mensaje" => $mensaje
        ); 

        return json_decode(json_encode($mensajes, true));

    }

    public function eliminarExamenInterconsulta(Request $request){
        $id_fila_examen = $request->fila;
        $fila_actualizar = [
            'Estado' => 'Inactivo'
        ];

        sigmel_informacion_examenes_interconsultas_eventos::on('sigmel_gestiones')
        ->where([
            ['Id_Examenes_interconsultas', $id_fila_examen],
            ['ID_evento', $request->Id_evento],
            ['Id_Asignacion', $request->Id_asignacion],
            ['Id_proceso', $request->Id_proceso],
        ])
        ->update($fila_actualizar);

        $total_registros_examen = sigmel_informacion_examenes_interconsultas_eventos::on('sigmel_gestiones')
        ->where([['ID_evento', $request->Id_evento],['Estado', 'Activo']])->count();

        $mensajes = array(
            "parametro" => 'fila_examen_eliminada',
            'total_registros' => $total_registros_examen,
            "mensaje" => 'Exámen e Interconsulta eliminada satisfactoriamente.'
        );

        return json_decode(json_encode($mensajes, true));
    }

    public function eliminarDiagnosticoMotivoCalificacion(Request $request){
        $id_fila_diagnostico = $request->fila;
        $fila_actualizar = [
            'Estado' => 'Inactivo'
        ];

        sigmel_informacion_diagnosticos_eventos::on('sigmel_gestiones')
        ->where([
            ['Id_Diagnosticos_motcali', $id_fila_diagnostico],
            ['ID_evento', $request->Id_evento],
            ['Id_Asignacion', $request->Id_asignacion],
            ['Id_proceso', $request->Id_proceso],
        ])
        ->update($fila_actualizar);

        // Se cambio de Si a No ese Dx Principal
        $fila_actualizar = [
            'Principal' => 'No'
        ];

        sigmel_informacion_diagnosticos_eventos::on("sigmel_gestiones")
        ->where([
            ['Id_Diagnosticos_motcali', $id_fila_diagnostico],
            ['ID_evento', $request->Id_evento],
            ['Id_Asignacion', $request->Id_asignacion],
            ['Id_proceso', $request->Id_proceso]
        ])->update($fila_actualizar);

        $total_registros_diagnostico = sigmel_informacion_diagnosticos_eventos::on('sigmel_gestiones')
        ->where([['ID_evento', $request->Id_evento],['Estado', 'Activo']])->count();

        $mensajes = array(
            "parametro" => 'fila_diagnostico_eliminada',
            'total_registros' => $total_registros_diagnostico,
            "mensaje" => 'Diagnóstico motivo de calificación y Dx Principal eliminados satisfactoriamente.'
        );

        return json_decode(json_encode($mensajes, true));
    }

    public function actualizarDxPrincipalDTOATEL(Request $request){
        $bandera = $request->bandera;
        $Id_evento = $request->Id_evento;
        $Id_Asignacion = $request->Id_Asignacion;
        $Id_proceso = $request->Id_proceso;
        $fila = $request->fila;

        if ($bandera == "Si") {
            $fila_actualizar = [
                'Principal' => 'Si'
            ];

            sigmel_informacion_diagnosticos_eventos::on("sigmel_gestiones")
            ->where([
                ['Id_Diagnosticos_motcali', $fila],
                ['ID_evento', $Id_evento],
                ['Id_Asignacion', $Id_Asignacion],
                ['Id_proceso', $Id_proceso],
                ['Estado', 'Activo']
            ])->update($fila_actualizar);

            $mensaje = "Dx Principal agreagado satisfactoriamente.";

        } else {
            $fila_actualizar = [
                'Principal' => 'No'
            ];

            sigmel_informacion_diagnosticos_eventos::on("sigmel_gestiones")
            ->where([
                ['Id_Diagnosticos_motcali', $fila],
                ['ID_evento', $Id_evento],
                ['Id_Asignacion', $Id_Asignacion],
                ['Id_proceso', $Id_proceso],
                ['Estado', 'Activo']
            ])->update($fila_actualizar);

            $mensaje = "Dx Principal eliminado satisfactoriamente.";
        }

        $mensajes = array(
            "parametro" => 'hecho',
            "mensaje" => $mensaje
        );

        return json_decode(json_encode($mensajes, true)); 
    }
}