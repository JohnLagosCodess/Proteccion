<?php

namespace App\Http\Controllers\Consulta;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

/* Importamos la vista */
use App\Models\cnvista_reportes_trazabilidad_pcls;
/* Importando todo lo necesario de php spread sheet para el excel */
use PhpOffice\PhpSpreadsheet\SpreadSheet;
use PhpOffice\PhpSpreadsheet\IOFactory as IOFactoryExcel;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;

class ReporteTrazabilidadPclController extends Controller
{
    public function show(){
        if(!Auth::check()){
            return redirect('/');
        }
        $user = Auth::user();
        return view('consulta.reporteTrazabilidadPcl', compact('user'));
    }

    /* Función para consultar el reporte de trazabilidad pcl */
    public function consultaReporteTrazabilidadPcl(Request $request){
        if(!Auth::check()){
            return redirect('/');
        }
    
        /* Captura de variables */
        $fecha_desde = $request->fecha_desde;
        $fecha_hasta = $request->fecha_hasta;

        $parametro = $request->parametro;

        /* Consulta la vista acorde a las fechas desde y hasta teniendo en cuenta
            las siguientes validaciones:

            1: Fecha desde está vacío y Fecha hasta tiene dato = No hay reporte.
            2: Fecha desde tiene dato y Fecha hasta está vació = No hay reporte.
            3. Fecha desde y Fecha hasta están vacíos = No hay reporte.
            4. Fecha desde y Fecha hasta tienen datos = se consulta el total de datos.

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

            $reporte_trazabilidad_pcl = cnvista_reportes_trazabilidad_pcls::on('sigmel_gestiones')
            ->select(
                'Servicio',
                'Tipo_documentos',
                'N_identificacion',
                'Nombre_completo',
                'Activador',
                'N_radicado_siniestro',
                'N_solicitud_evento',
                'Conducta_actual',
                DB::raw("date_format(F_ultima_accion, '%d/%m/%Y') as F_ultima_accion"),
                'ultima_accion',
                DB::raw("date_format(F_radicacion, '%d/%m/%Y') as F_radicacion"),
                DB::raw("date_format(F_asignacion_gestion, '%d/%m/%Y') as F_asignacion_gestion"),
                'Dias_control_asignacion',
                'Control_asignacion',
                DB::raw("date_format(F_emision_1ra_conducta, '%d/%m/%Y') as F_emision_1ra_conducta"),
                'Dias_control_1ra_conducnta',
                'Control_1ra_conducta',
                DB::raw("date_format(Nueva_F_radicacion, '%d/%m/%Y') as Nueva_F_radicacion"),
                'Complementos',
                DB::raw("date_format(F_sol_complementos, '%d/%m/%Y') as F_sol_complementos"),
                'Medio_envio_complementos',
                'Estado_entrega_complementos',
                DB::raw("date_format(F_noti_efectiva_complementos, '%d/%m/%Y') as F_noti_efectiva_complementos"),
                'Guia_complementos_afiliado',
                'Prorroga',
                DB::raw("date_format(F_prorroga, '%d/%m/%Y') as F_prorroga"),
                'Estado_prorroga',
                DB::raw("date_format(F_aporte_complementos, '%d/%m/%Y') as F_aporte_complementos"),
                'Aportado_correcto',
                DB::raw("date_format(F_asignacion_cita, '%d/%m/%Y') as F_asignacion_cita"),
                DB::raw("date_format(F_1ra_cita, '%d/%m/%Y') as F_1ra_cita"),
                'Cita_reprogramada',
                'Causal_incumpli_1ra_cita',
                DB::raw("date_format(F_asignacion_2da_cita, '%d/%m/%Y') as F_asignacion_2da_cita"),
                DB::raw("date_format(F_2da_cita, '%d/%m/%Y') as F_2da_cita"),
                'Cierre_2da_cita',
                'Causal_incumpli_2da_cita',
                DB::raw("date_format(F_emision_dml, '%d/%m/%Y') as F_emision_dml"),
                'Porcentaje_pcl',
                DB::raw("date_format(F_estructuracion, '%d/%m/%Y') as F_estructuracion"),
                'Origen',
                'Requirere_recalificacion',
                'Requiere_revision_pension',
                'Medio_envio_noti_afi',
                'Estado_general_noti',
                DB::raw("date_format(F_noti_efectiva_afi, '%d/%m/%Y') as F_noti_efectiva_afi"),
                'Guia_afiliado',
                DB::raw("date_format(F_noti_efectiva_emp, '%d/%m/%Y') as F_noti_efectiva_emp"),
                'Guia_empleador',
                DB::raw("date_format(F_noti_efectiva_eps, '%d/%m/%Y') as F_noti_efectiva_eps"),
                'Guia_eps',
                DB::raw("date_format(F_noti_arl, '%d/%m/%Y') as F_noti_arl"),
                'Guia_arl',
                DB::raw("date_format(F_noti_efectiva_entidades_conocimiento, '%d/%m/%Y') as F_noti_efectiva_entidades_conocimiento"),
                'Guia_noti_efectiva_entidades_conocimiento',
                'Causal_cierre',
                'Medio_envio_comunicado_cierre',
                'Estado_envio_comunicado_cierre',
                DB::raw("date_format(F_noti_efectiva_comuni_cierre, '%d/%m/%Y') as F_noti_efectiva_comuni_cierre"),
                'Guia_comuni_cierre_afi'
            )
            ->whereRaw('DATE(F_ultima_accion) BETWEEN ? AND ?', [$fecha_desde, $fecha_hasta])
            ->get();
            
            /* 
                Acorde al parametro se realizará lo siguiente
                parametro = cantidad_reg entonces solo se consulta la cantidad de registros para mostrar en el blade
                parametro = descarga: Realiza la consulta y posterior creación del reporte.
            */

            if ($parametro == "cantidad_reg") {
                $mensajes = array(
                    "parametro" => 'todo_ok',
                    "cantidad" => count($reporte_trazabilidad_pcl)
                );
                return json_decode(json_encode($mensajes, true));

            } else {
                
                $array_reporte_trazabilidad_pcl = json_decode(json_encode($reporte_trazabilidad_pcl, true));

                /* Importamos y cargamos la plantilla de excel para el reporte */
                $file_name = 'Plantilla_Reporte_Trazabilidad_Pcl/plantilla_repor_traza_pcl.xlsx';
                $spreadsheet = IOFactoryExcel::load($file_name);
        
                /* Indicamos que se va a trabajar sobre la hoja actual de la plantilla */
                $worksheet_reporte_trazabilidad = $spreadsheet->getActiveSheet();
        
                /* Generamos el array del Alfabeto para insertar y así saber que columnas se        necesitan para realizar la inserción de los datos 
                */
                $letra_inicial = "A";
                $cantidad_columnas = 61;
                $array_alfabeto = $this->creacion_alfabeto_excel($letra_inicial, $cantidad_columnas);

                /* Llamamos los estilos aplicados */
                $estilos_reporte = $this->estilos();

                /* Realizamos la inserción dinámica de los datos en la plantilla */
                $fila_inicial = 3; 
                $this->insertar_datos($fila_inicial, $array_reporte_trazabilidad_pcl, $array_alfabeto, $estilos_reporte, $worksheet_reporte_trazabilidad);

                /* Creamos el nombre que llevará el archivo. */
                $fecha_descarga = date("Y-m-d", time());
                $nombre_reporte = "{$fecha_descarga}_TRAZABILIDADPCL_SIGMEL_({$fecha_desde}_{$fecha_hasta}).xlsx";
            
                /* Retornamos la información necesaria para descargar el reporte */
                return response()->streamDownload(function () use ($spreadsheet) {
                    $writer = IOFactoryExcel::createWriter($spreadsheet, 'Xlsx');
                    $writer->save('php://output');
                }, $nombre_reporte, [
                    'Content-Type' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                    'Content-Disposition' => 'attachment; filename="Reporte_Trazabilidad_Pcl.xlsx"',
                ]);

            }
            

        }
    }
    
    /* 
        Función para crear el alfabeto de manera dinámica
        $letra: letra en donde empezará a crearse el alfabeto
        $numero_letras: cantidad de letras de alfabetos a crear
    */
    public function creacion_alfabeto_excel($letra, $numero_columnas){
        $array_alfabeto = array();
        $letra_iterar = $letra;
        for ($i=1; $i < $numero_columnas; $i++) { 
            array_push($array_alfabeto, $letra_iterar++);
        }
        return $array_alfabeto;
    }

    /* 
        Función para insertar los datos a la hoja de excel 
        $fila_inicial: Desde donde se iniciarán a insertar los datos.
        $array_datos: Data de la vista.
        $array_alfabeto: Alfabeto creado para saber en que columnas se insertarán los datos
        $worksheet: Hoja de cálculo creada para el reporte

    */
    public function insertar_datos($fila_inicial, $array_datos, $alfabeto, $estilos, $worksheet){
        foreach ($array_datos as $fila => $objeto) {
            $numero_fila = $fila_inicial + $fila; 
            $columnas = array_values((array)$objeto);

            for ($i = 0; $i < count($columnas); $i++) {
                $celdas_dimension = "{$alfabeto[$i]}{$numero_fila}";
                $worksheet->getCell($celdas_dimension)->setValue($columnas[$i]);
                $worksheet->getStyle($celdas_dimension)->applyFromArray($estilos);
            }

        }
    }

    /* Función para los estilos */
    public function estilos(){
        $estilos = [
            'alignment' => [
                'horizontal' => Alignment::HORIZONTAL_LEFT,
            ],
            'borders' => [
                'outline' => [
                    'borderStyle' => Border::BORDER_THIN,
                    'color' => ['argb' => '00000000'],
                ],
            ]
        ];

        return $estilos;    
    }
}
