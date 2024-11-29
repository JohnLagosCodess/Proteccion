@extends('adminlte::page')
@section('title', 'Reporte Trazabilidad PCL')
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
            <h5 style="font-style: italic;">Reporte Trazabilidad PCL</h5>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <div class="card-info">
                        <div class="card-header text-center" style="border: 1.5px solid black;">
                            <h5>Trazabilidad PCL</h5>
                        </div>
                        <div class="card-body">
                            <form id="form_consulta_repor_traza_pcl" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="" class="col-form-label">Fecha Desde <span style="color: red;">(*)</span></label>
                                            <input type="date" class="form-control" name="fecha_desde" id="fecha_desde" min="{{ date('Y-m-d') }}" required>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="" class="col-form-label">Fecha Hasta <span style="color: red;">(*)</span></label>
                                            <input type="date" class="form-control" name="fecha_hasta" id="fecha_hasta" min="{{ date('Y-m-d') }}" required>
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
                                    <label>Se encontraron <span id="total_registros_reporte"></span> registros.</label>
                                </div>
                            </div>

                            {{-- Generar reporte Excel --}}
                            <form id="descargar_repor_traza_pcl" method="POST">
                                @csrf
                                <br>
                                <div class="row d-none" id="mostrar_boton_descarga">
                                    <div class="col-12">
                                        <div style="float: left;">
                                            <input type="submit" class="btn btn-info" value="Generar Reporte"> 
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('js')
    <script src="/js/reporte_trazabilidad_pcl.js"></script>
@stop