<?php

use App\Http\Controllers\Administrador\AccionesController;
use App\Models\sigmel_lista_departamentos_municipios;
use App\Models\sigmel_informacion_entidades;
use App\Models\sigmel_informacion_afiliado_eventos;
use App\Models\sigmel_auditorias_informacion_accion_eventos;
use App\Models\sigmel_informacion_accion_eventos;
use App\Models\sigmel_informacion_asignacion_eventos;
use App\Models\sigmel_lista_procesos_servicios;
use App\Models\sigmel_informacion_comite_interdisciplinario_eventos;
use App\Models\sigmel_informacion_controversia_juntas_eventos;
use App\Models\sigmel_informacion_decreto_eventos;
use App\Models\sigmel_informacion_laboral_eventos;
use App\Models\sigmel_informacion_eventos;
use App\Models\sigmel_informacion_pronunciamiento_eventos;
use Illuminate\Support\Facades\DB;
use App\Models\sigmel_informacion_registro_advance;
use Illuminate\Support\Facades\Log;

return [
    "tools" => [
        "get_municipio" => function ($dane) {
            return sigmel_lista_departamentos_municipios::on('sigmel_gestiones')->select('Id_municipios', 'Id_departamento')->where('codigo_dane', $dane)->first();
        },
        "entidades_disponibles" => function ($tipo_entidad) {
            $resultado = sigmel_informacion_entidades::on('sigmel_gestiones')->select('Nit_entidad', 'Nit_simple')->where('IdTipo_entidad', $tipo_entidad)->get();

            $nit_entidades = $resultado->pluck('Nit_entidad')->toArray();
            $nit_simples = $resultado->pluck('Nit_simple')->toArray();

            $response = array_merge($nit_entidades, $nit_simples);
            Log::channel('log_api')->info("Listado entidades ", [
                "resultado" => $response
            ]);
            return $response;
        },
        "info_entidad" => function ($nit_entidad) {
            return sigmel_informacion_entidades::on('sigmel_gestiones')->select('Id_Entidad', 'Nombre_entidad')
                ->where('Nit_entidad', $nit_entidad)->orWhere('Nit_simple', $nit_entidad)->first();
        },
        "afiliado" => function ($obtener, $evento) {
            return sigmel_informacion_afiliado_eventos::on('sigmel_gestiones')
            ->leftJoin('sigmel_gestiones.sigmel_lista_parametros','Id_Parametro','Tipo_documento')
            ->select($obtener)->where('ID_evento', $evento)->first();
        },
        "laboral" => function ($obtener, $evento) {
            return sigmel_informacion_laboral_eventos::on('sigmel_gestiones')->select($obtener)->where('ID_evento', $evento)->first();
        },
        "evento" => function ($obtener, $evento) {
            return sigmel_informacion_eventos::on('sigmel_gestiones')->select($obtener)->where('ID_evento', $evento)->first();
        },
        "calificacion_pcl" => function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            return DB::selectOne('CALL psrcalificacionpcl(?)', array($id_asignacion));
        },
        "accion_ejecutada" => function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            return sigmel_auditorias_informacion_accion_eventos::on('sigmel_auditorias')->select($seleccionar)->where('Aud_Id_Asignacion', $id_servicio)->first();
        },
        "ultima_accion" => function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            return AccionesController::getUltimaAccion($id_evento, $id_servicio);
        },
        "servicio" => function ($seleccionar, $id_evento, $id_servicio) {
            return sigmel_lista_procesos_servicios::on('sigmel_gestiones')->select($seleccionar)->where('Id_Servicio', $id_servicio)->first();
        },
        "asignacion" => function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            return sigmel_informacion_asignacion_eventos::on('sigmel_gestiones')->select($seleccionar)->where('Id_Asignacion', $id_asignacion)->first();
        },
        "comite" =>  function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            return sigmel_informacion_comite_interdisciplinario_eventos::on('sigmel_gestiones')->select($seleccionar)->where('Id_Asignacion', $id_asignacion)->first() ?? "";
        },
        "pronunciamiento_pcl" =>  function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            return sigmel_informacion_pronunciamiento_eventos::on('sigmel_gestiones')->select($seleccionar)->where('Id_Asignacion', $id_asignacion)->first() ?? "";
        },
        "decretos" =>  function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            return sigmel_informacion_decreto_eventos::on('sigmel_gestiones')->select($seleccionar)->where('Id_Asignacion', $id_asignacion)->first();
        },
        "origen_decreto" =>  function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            $decreto = sigmel_informacion_decreto_eventos::on('sigmel_gestiones')
                ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp', 'slp.Id_Parametro', 'Origen')
                ->leftJoin('sigmel_gestiones.sigmel_lista_tipo_eventos as sltp', 'sltp.Id_Evento', 'Tipo_evento')
                ->select('slp.Nombre_parametro as Nombre_origen', 'sltp.Nombre_evento')->where('Id_Asignacion', $id_asignacion)->first();

            return !empty($decreto) ? "{$decreto->Nombre_evento} {$decreto->Nombre_origen}" : "";
        },
        "origen_pronunciamiento" =>  function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            $pronunciamiento = sigmel_informacion_pronunciamiento_eventos::on('sigmel_gestiones')
                ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp', 'slp.Id_Parametro', 'Id_tipo_origen')
                ->leftJoin('sigmel_gestiones.sigmel_lista_tipo_eventos as sltp', 'sltp.Id_Evento', 'Id_tipo_evento')
                ->select('slp.Nombre_parametro as Nombre_origen', 'sltp.Nombre_evento')->where('Id_Asignacion', $id_asignacion)->first();

            return !empty($pronunciamiento) ? "{$pronunciamiento->Nombre_evento} {$pronunciamiento->Nombre_origen}" : "";
        },
        "origen_jrci" =>  function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            $evento = DB::table('sigmel_gestiones.sigmel_informacion_controversia_juntas_eventos as ije')
                ->leftJoin('sigmel_gestiones.sigmel_informacion_eventos as sie','sie.ID_evento','ije.ID_evento')
                ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp', 'slp.Id_Parametro', 'origen_jrci_emitido')
                ->leftJoin('sigmel_gestiones.sigmel_lista_tipo_eventos as sltp', 'sltp.Id_Evento', 'sie.Tipo_evento')
                ->select('slp.Nombre_parametro as Nombre_origen', 'sltp.Nombre_evento')
                ->where('ije.Id_Asignacion', $id_asignacion)->first();

            return !empty($evento) ? "{$evento->Nombre_evento} {$evento->Nombre_origen}" : "";
        },
        "origen_jnci" =>  function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            $evento = DB::table('sigmel_gestiones.sigmel_informacion_controversia_juntas_eventos as ije')
                ->leftJoin('sigmel_gestiones.sigmel_informacion_eventos as sie','sie.ID_evento','ije.ID_evento')
                ->leftJoin('sigmel_gestiones.sigmel_lista_parametros as slp', 'slp.Id_Parametro', 'origen_jnci_emitido')
                ->leftJoin('sigmel_gestiones.sigmel_lista_tipo_eventos as sltp', 'sltp.Id_Evento', 'sie.Tipo_evento')
                ->select('slp.Nombre_parametro as Nombre_origen', 'sltp.Nombre_evento')
                ->where('ije.Id_Asignacion', $id_asignacion)->first();

            return !empty($evento) ? "{$evento->Nombre_evento} {$evento->Nombre_origen}" : "";
        },
        "juntas" => function ($seleccionar, $id_evento, $id_servicio, $id_asignacion) {
            return sigmel_informacion_controversia_juntas_eventos::on('sigmel_gestiones')->select($seleccionar)->where('Id_Asignacion', $id_asignacion)->first();
        },
        "aval_ips" => function($seleccionar, $id_evento, $id_servicio, $id_asignacion){
            $decision = sigmel_informacion_controversia_juntas_eventos::on('sigmel_gestiones')->select($seleccionar)->where('Id_Asignacion', $id_asignacion)->first();
            if(!empty($decision)) $resultado = $decision->$seleccionar == 'Acuerdo' ? 1 : ($decision->$seleccionar == 'Desacuerdo' ? 0 : '');

            return $resultado ?? '';
        },
        "desencadenador" => function($seleccionar, $id_evento, $id_servicio, $id_asignacion){
            $ultima_accion = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_historial_accion_eventos as sihae')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_acciones as sia', 'sia.Id_Accion', '=', 'sihae.Id_accion')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_parametrizaciones_clientes','Servicio_asociado','sihae.Id_servicio')
            ->select('sihae.ID_evento', 'sihae.Id_proceso', 'sihae.Id_servicio', 'sihae.Id_accion', 'sihae.Id_Asignacion','sia.Accion','Id_parametrizacion')
            ->where([['sihae.Id_Asignacion', $id_asignacion],["Id_servicio",$id_servicio],])->whereNotNull('Estado_Firmeza');
    
            return $ultima_accion->orderBy('sihae.F_accion', 'desc')->first() ?? "";
        },
        "advance" => function($seleccionar, $id_evento, $id_servicio, $id_asignacion){
            $ultima_accion = DB::table(getDatabaseName('sigmel_gestiones') . 'sigmel_informacion_historial_accion_eventos as sihae')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_acciones as sia', 'sia.Id_Accion', '=', 'sihae.Id_accion')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_parametrizaciones_clientes','Servicio_asociado','sihae.Id_servicio')
            ->select('Firmeza','Estado_Firmeza','Dictamen_Firme')
            ->where([['sihae.Id_Asignacion', $id_asignacion],["Id_servicio",$id_servicio],])->whereNotNull('Estado_Firmeza');
            $ultima_accion = $ultima_accion->orderBy('sihae.F_accion', 'desc')->first();

            return $ultima_accion->$seleccionar ?? '';
        },
        "evaluar_porcentajes" => function($seleccionar = null, $id_evento, $id_servicio, $id_asignacion){
            $porcentajes_juntas = sigmel_informacion_controversia_juntas_eventos::on('sigmel_gestiones')->select('porcentaje_pcl_jnci_emitido','porcentaje_pcl_jrci_emitido')->where('Id_Asignacion', $id_asignacion)->first();

            if(!empty($porcentajes_juntas)){
                return !empty($porcentajes_juntas->porcentaje_pcl_jnci_emitido) ? $porcentajes_juntas->porcentaje_pcl_jnci_emitido : (!empty($porcentajes_juntas->porcentaje_pcl_jrci_emitido) ? $porcentajes_juntas->porcentaje_pcl_jrci_emitido : '');
            }else{
                return '';
            }
        },
        "evaluar_modelo_juntas" => function($seleccionar = null, $id_evento, $id_servicio, $id_asignacion){
            $dictamines = sigmel_informacion_controversia_juntas_eventos::on('sigmel_gestiones')->select('F_dictamen_jnci_emitido','F_dictamen_jrci_emitido')->where('Id_Asignacion', $id_asignacion)->first();

            if(!empty($dictamines)){
                return !empty($dictamines->F_dictamen_jnci_emitido) ? $dictamines->F_dictamen_jnci_emitido : (!empty($dictamines->F_dictamen_jrci_emitido) ? $dictamines->F_dictamen_jrci_emitido : '');
            }else{
                return '';
            }
        },
        'notificacion_afiliado' => function($seleccionar = null, $id_evento, $id_servicio, $id_asignacion){
            $controversia = sigmel_informacion_controversia_juntas_eventos::on('sigmel_gestiones')->select('Id_Asignacion_Servicio_Anterior')
            ->where('Id_Asignacion',$id_asignacion)->first();
            
            $array_fecha_notificacion = DB::table(getDatabaseName('sigmel_gestiones').'sigmel_informacion_correspondencia_eventos as sicore')
            ->leftJoin('sigmel_gestiones.sigmel_informacion_comunicado_eventos as sicome', 'sicore.Id_comunicado', '=', 'sicome.Id_Comunicado')
            ->select('sicore.F_notificacion')
            ->where([
                ['sicore.Id_Asignacion', $controversia->Id_Asignacion_Servicio_Anterior],
                ['sicore.Tipo_correspondencia', 'Afiliado'],
                ['sicome.Tipo_descarga', 'Oficio'],
            ])->first();

            return !empty($controversia->F_notificacion) ? $controversia->F_notificacion : (!empty($array_fecha_notificacion) && !empty($array_fecha_notificacion->F_notificacion) ? $array_fecha_notificacion->F_notificacion : '');
        },
        'entidades_juntas' => function($seleccionar, $id_evento, $id_servicio, $id_asignacion){
            $controversia = sigmel_informacion_controversia_juntas_eventos::on('sigmel_gestiones')->select("Nombre_entidad as $seleccionar")
            ->leftJoin('sigmel_gestiones.sigmel_informacion_entidades','Id_Entidad',$seleccionar)
            ->where('Id_Asignacion',$id_asignacion)->first();

            return $controversia->{$seleccionar} ?? '';
        },
    ]
];
