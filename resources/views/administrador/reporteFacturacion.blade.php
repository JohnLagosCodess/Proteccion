@extends('adminlte::page')
@section('title', 'Reporte Facturación')
@section('content_header') 
    <div class='row mb-2'>
        <div class='col-sm-6'>
        </div>
    </div>
@stop

@section('content')
<div class="card-info" style="border: 1px solid black;">
    <div class="card-header text-center">
        <h4>Módulo Reportes</h4>
        <h5 style="font-style: italic;">Reporte Facturación</h5>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-12">
                <div class="card-info">
                    <div class="card-header text-center" style="border: 1.5px solid black;">
                        <h5>Correspondencia</h5>
                    </div>
                    <div class="card-body">
                        <form id="form_consulta_reporte_facturacion" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="" class="col-form-label">Fecha Desde <span style="color: red;">(*)</span></label>
                                        <input type="date" class="form-control" name="fecha_desde" id="fecha_desde" max="{{ date('Y-m-d') }}" required>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="" class="col-form-label">Fecha Hasta <span style="color: red;">(*)</span></label>
                                        <input type="date" class="form-control" name="fecha_hasta" id="fecha_hasta" max="{{ date('Y-m-d') }}" required>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <p>&nbsp;</p>
                                        <input type="submit" id="btn_generar_reporte" class="btn btn-info" value="Consultar">
                                    </div>
                                </div>
                            </div>
                        </form>
                        {{-- DESDE AQUI SE MUESTRA LA INFORMACIÓN DEL REPORTE --}}
                        {{-- Validaciones --}}
                        <div class="col-12">
                            <div class="resultado_validacion alert mt-1 d-none" id="llenar_mensaje_validacion" role="alert">
                                <strong></strong>
                            </div>
                        </div>
                        {{-- Nro de registros --}}
                        <div class="row d-none" id="div_info_numero_registros">
                            <div class="col 12">
                                <label>Se encontraron <span id="total_registros_reporte_facturacion"></span> registros.</label>
                            </div>
                        </div>
                        {{-- Tabla para registrar los datos --}}
                        <div class="row d-none">
                            <div class="col-12">
                                <div class="table table-responsive">
                                    <table id="datos_reporte_facturacion" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr class="bg-info">
                                                <th>Cons</th>
                                                <th>PROCESO</th>{{--NRO_SINIESTRO--}}
                                                <th>SERVICIO</th>{{--ID_TIPO_DOC--}}
                                                <th>ID_EVENTO</th>{{--IDENTIFICACION--}}
                                                <th>NRO_SINIESTRO</th>{{--NOMBRE--}}
                                                <th>TIPO_AFILIADO</th>
                                                <th>IDENTIFICACION</th>{{--FECHA_NOTIFICACION_AFILIADO--}}
                                                <th>NOMBRE</th>{{--FECHA_CONTROVERSIA_AFILIADO--}}
                                                <th>FECHA_RADICACION</th>
                                                <th>FECHA_GESTION</th>{{--FECHA_PLAZO_AFILIADO--}}
                                                <th>TIEMPO_GESTION</th>{{--FECHA_PAGO_HONORARIOS_JR--}}
                                                <th>ANS_DIAS</th>{{--FUENTE_INFORMACION--}}
                                                <th>ESTADO_ANS</th>{{--TIPO_EVENTO--}}
                                                <th>ESTADO_FACTURACION</th>{{--TIPO_CONTROVERSIA--}}
                                                <th>TARIFA_GESTION</th>{{--TIPO_CONTROVERSIA2--}}
                                                <th>TARIFA_NOTIFICACION</th>{{--TIPO_CONTROVERSIA3--}}
                                                <th>TARIFA_ADICIONAL</th>{{--TIPO_CONTROVERSIA4--}}
                                                <th>VALOR_TOTAL</th>{{--TIPO_CONTROVERSIA5--}}
                                                <th>VALOR_GLOSA</th>{{--DX_PRINCIPAL--}}
                                                <th>MODALIDAD</th>{{--DIAGNOSTICO 2--}}
                                                <th>CC_CALIFICADOR</th>{{--DIAGNOSTICO 3--}}
                                                <th>CALIFICADOR</th>{{--DIAGNOSTICO 4--}}
                                                <th>ACCION</th>{{--DIAGNOSTICO 5--}}
                                                <th>OBSERVACIONES</th>{{--DIAGNOSTICO 6--}}
                                            </tr>
                                        </thead>
                                        <tbody id="vaciar_tabla_reporte_facturacion"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        {{-- Generar reporte Excel --}}
                        <br>
                        <div class="row d-none" id="botones_reporte_facturacion">
                            <div class="col-12">
                                <div style="float: left;">
                                    <input type="button" id="btn_expor_datos_reporte_facturacion" class="btn btn-info" value="Generar Reporte"> 
                                </div>
                            </div>
                        </div>
                    </div>
                    <a id="back-to-top" href="#" class="btn btn-primary back-to-top" role="button" aria-label="Scroll to top">
                        <i class="fas fa-chevron-up"></i>
                    </a> 
                </div>
            </div>
        </div>
    </div>
</div>
@stop

@section('js')
    <script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>

    <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.print.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/datatables-buttons-excel-styles@1.2.0/js/buttons.html5.styles.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/datatables-buttons-excel-styles@1.2.0/js/buttons.html5.styles.templates.min.js"></script>
    <script type="text/javascript" src="/js/funciones_helpers.js"></script>
    <script src="/js/reporte_facturacion.js"></script>
@stop