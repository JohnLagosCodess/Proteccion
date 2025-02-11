<?php

namespace App\Http\Controllers\Consulta;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

/* Importamos la vista */
use App\Models\cnvista_reportes_trazabilidad_juntas;
/* Importando todo lo necesario de php spread sheet para el excel */
use PhpOffice\PhpSpreadsheet\SpreadSheet;
use PhpOffice\PhpSpreadsheet\IOFactory as IOFactoryExcel;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;

class ReporteTrazabilidadJuntasController extends Controller
{
    public function show(){
        if(!Auth::check()){
            return redirect('/');
        }
        $user = Auth::user();
        return view('consulta.reporteTrazabilidadJuntas', compact('user'));
    }

    /* Función para consultar el reporte de trazabilidad juntas */
    public function consultaReporteTrazabilidadJuntas(Request $request){
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
            $reporte_trazabilidad_juntas = cnvista_reportes_trazabilidad_juntas::on('sigmel_gestiones')
            ->select(
                'Servicio',
                'Tipo_documento',
                'N_identificacion',
                'Nombre_completo',
                'Activador',
                'N_radicado_siniestro',
                'N_solicitud_evento',
                'Conducta_actual',
                'F_ultima_accion',
                'Ultima_accion',
                'Fecha_radicacion_pcl',
                'F_estructuracion_pcl',
                'Origen',
                'Porcentaje_pcl',
                'F_notificacion_efectiva_afiliado',
                'Notificado_todas_las_partes',
                'F_controversia',
                'Parte_controvierte',
                'Motivo_controversia',
                'F_inicio_gestion_controversia',
                'Dias_notificacion_apelacion',
                'Procede_apelacion',
                'F_max_controversia',
                'Novedades_controversia',
                'Junta_regional',
                'F_solicitud_codess_pago_hono_jrci',
                'F_pago_hono_jrci',
                'Valor_pagado_jrci',
                'F_envio_exp_jrci',
                'F_notificacion_efectiva_envio_jrci',
                'Devolucion_expediente_jrci',
                'F_devolucion_expediente_jrci',
                'Causal_devolucion_expediente_jrci',
                'F_reenvio_expediente_jrci',
                'F_notificacion_efectiva_reenvio_jrci',
                'F_aviso_recoleccion_dictamen_jrci',
                'F_recoleccion_dictamen_jrci',
                'F_dictamen_jrci',
                'Nro_dictamen_jrci',
                'F_estructuracion_jrci',
                'Origen_jrci',
                'Porcentaje_pcl_jrci',
                'Pronunciamiento_jrci',
                'F_pronunciamiento_ante_jrci',
                'F_radicacion_recurso_jrci',
                'F_envio_dp_jrci',
                'F_notificacion_efectiva_dp_jrci',
                'F_reporte_tutela_activa',
                'F_recepcion_acta_ejecutoria',
                'F_firmeza_jrci',
                'F_solicitud_jrci_pago_hono_jnci',
                'F_solicitud_codess_pago_hono_jnci',
                'F_pago_hono_jnci',
                'Valor_pagado_jnci',
                'F_cita_valoracion_jnci',
                'F_recepcion_dictamen_jnci',
                'F_dictamen_jnci',
                'Nro_dictamen_jnci',
                'F_estructuracion_jnci',
                'Origen_jnci',
                'Porcentaje_pcl_jnci',
                'Resultado_dictamen_jnci',
                'Motivo_demora',
                'Suspension_por',
                'Dias_caso_general',
                'Rango',
                'F_finalizacion_jrci'
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
                    "cantidad" => count($reporte_trazabilidad_juntas)
                );
                return json_decode(json_encode($mensajes, true));
            }
            else {
                
                $array_reporte_trazabilidad_juntas = json_decode(json_encode($reporte_trazabilidad_juntas, true));

                /* Importamos y cargamos la plantilla de excel para el reporte */
                $file_name = 'Plantilla_Reporte_Trazabilidad_Juntas/plantilla_repor_traza_juntas.xlsx';
                $spreadsheet = IOFactoryExcel::load($file_name);
        
                /* Indicamos que se va a trabajar sobre la hoja actual de la plantilla */
                $worksheet_reporte_trazabilidad = $spreadsheet->getActiveSheet();
        
                /* Generamos el array del Alfabeto para insertar y así saber que columnas se        necesitan para realizar la inserción de los datos 
                */
                $letra_inicial = "A";
                $cantidad_columnas = 68;
                $array_alfabeto = $this->creacion_alfabeto_excel($letra_inicial, $cantidad_columnas);
                
                /* Llamamos los estilos aplicados */
                $estilos_reporte = $this->estilos();

                /* Realizamos la inserción dinámica de los datos en la plantilla */
                $fila_inicial = 3; 
                $this->insertar_datos($fila_inicial, $array_reporte_trazabilidad_juntas, $array_alfabeto, $estilos_reporte, $worksheet_reporte_trazabilidad);

                /* Ajustar automáticamente el ancho de las columnas */
                foreach ($array_alfabeto as $columna) {
                    $worksheet_reporte_trazabilidad->getColumnDimension($columna)->setAutoSize(true);
                }

                /* Creamos el nombre que llevará el archivo. */
                $fecha_descarga = date("Y-m-d", time());
                $nombre_reporte = "{$fecha_descarga}_TRAZABILIDADJUNTAS_SIGMEL_({$fecha_desde}_{$fecha_hasta}).xlsx";
            
                /* Retornamos la información necesaria para descargar el reporte */
                return response()->streamDownload(function () use ($spreadsheet) {
                    $writer = IOFactoryExcel::createWriter($spreadsheet, 'Xlsx');
                    $writer->save('php://output');
                }, $nombre_reporte, [
                    'Content-Type' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
                    'Content-Disposition' => 'attachment; filename="Reporte_Trazabilidad_Juntas.xlsx"',
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
