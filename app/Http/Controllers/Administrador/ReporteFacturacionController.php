<?php

namespace App\Http\Controllers\Administrador;

use App\Http\Controllers\Controller;
use App\Imports\CargueNotificaciones;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Response;
use Symfony\Component\HttpFoundation\StreamedResponse;
use App\Models\sigmel_numero_orden_eventos;
use Illuminate\Support\Facades\Storage;
use App\Models\cndatos_reportes_notificaciones;
use App\Models\cndatos_reportes_notificaciones_manuales;
use App\Models\cnvista_reportes_notificaciones_uniones;
use App\Models\reporte_facturacion;
use App\Models\sigmel_informacion_historial_cargue_notificaciones;
use App\Models\sigmel_lista_parametros;
use Illuminate\Support\Facades\Log;
use Maatwebsite\Excel\Facades\Excel;
use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use ZipArchive;

class ReporteFacturacionController extends Controller
{
    public function show(){
        if(!Auth::check()){
            return redirect('/');
        }
        $user = Auth::user();
        return view('administrador.reporteFacturacion', compact('user'));
    }

    /* Función para realizar la consulta al reporte de facturacion */
    public function consultaReporteFacturacion(Request $request){
        if(!Auth::check()){
            return redirect('/');
        }

        /* Captura de variables */
        $fecha_desde = $request->fecha_desde;
        $fecha_hasta = $request->fecha_hasta;

        // Validaciones
        /* 
            1: Fecha desde está vacío y Fecha hasta tiene dato = No hay reporte.
            2: Fecha desde tiene dato y Fecha hasta está vació = No hay reporte.
            3. Fecha desde y Fecha hasta están vacíos = Se genera reporte completo sin fechas.
            4. Fecha desde y Fecha hasta tienen datos = Se genera reporte completo dependiendo del rango de fechas seleccionado.
        */

        if (empty($fecha_desde) && !empty($fecha_hasta)) {
            $mensajes = array(
                "parametro" => 'falta_un_parametro',
                "mensaje" => 'Debe seleccionar las dos fechas para realizar la consulta.'
            );
            return json_decode(json_encode($mensajes, true));

        }
        elseif (!empty($fecha_desde) && empty($fecha_hasta)) {
            $mensajes = array(
                "parametro" => 'falta_un_parametro',
                "mensaje" => 'Debe seleccionar las dos fechas para realizar la consulta.'
            );
            return json_decode(json_encode($mensajes, true));

        }
        elseif (empty($fecha_desde) && empty($fecha_hasta)) {

            $mensajes = array(
                "parametro" => 'falta_un_parametro',
                "mensaje" => 'Debe seleccionar las dos fechas para realizar la consulta.'
            );
            return json_decode(json_encode($mensajes, true));
        }
        else if (!empty($fecha_desde) && !empty($fecha_hasta)){
            $reporte_facturacion = reporte_facturacion::on('sigmel_gestiones')
            ->select('Proceso',
                'Servicio',
                'ID_evento',
                'N_siniestro',
                'Tipo_Afiliado',
                'Identificacion',
                'Nombre',
                'Fecha_radicacion',
                'F_gestion',
                'Tiempo_gestion',
                'ANS_dias',
                'Estado_ANS',
                'Estado_Facturacion',
                'Tarifa_gestion',
                'Tarifa_notificacion',
                'Tarifa_adicional',
                'Valor_total',
                'Valor_glosa',
                'Modalidad',
                'Identificacion_calificador',
                'Calificador',
                'Accion',
                'Observaciones'
            )
            ->whereRaw('DATE(Aud_F_accion) BETWEEN ? AND ?', [$fecha_desde, $fecha_hasta])
            ->get()->toArray();
            // dd('RF : ',$reporte_facturacion);
            return response()->json($reporte_facturacion);
        }
    }
}
