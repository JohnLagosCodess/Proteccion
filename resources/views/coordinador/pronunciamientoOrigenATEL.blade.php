@extends('adminlte::page')
@section('title', 'Pronunciamiento Oirgen')
@section('content_header') 
    <div class='row mb-2'>
        <div class='col-sm-6'>
        </div>
    </div>
@stop
@section('content')
    <div class="row">
        <div class="col-8">
            <div>
                <a href="{{route("bandejaOrigen")}}" class="btn btn-info" type="button"><i class="fas fa-archive"></i> Regresar Bandeja</a>
                <a onclick="document.getElementById('botonEnvioVista').click();" style="cursor:pointer;" class="btn btn-success" type="button"><i class="fa fa-arrow-left"></i> Módulo OrigenATEL</a>
                <p>
                    <h5>Los campos marcados con <span style="color:red;">(*)</span> son Obligatorios</h5>
                </p>
            </div>
        </div>
    </div>
    <div class="card-info" style="border: 1px solid black;">
        <div class="card-header text-center">
            <h4>Calificación Origen ATEL - Evento: {{$array_datos_pronunciamientoOrigen[0]->ID_evento}}</h4>
            <h5 style="font-style: italic;">Pronunciamiento</h5>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-12">
                    <form id="form_CaliPronuncia" method="POST" enctype="multipart/form-data">
                        @csrf
                        <!-- Informacion Afiliado-->
                        <div class="card-info">
                            <div class="card-header text-center" style="border: 1.5px solid black;">
                                <h5>Información del afiliado</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="nombre_afiliado">Nombre de afiliado</label>
                                            <input type="text" class="form-control" name="nombre_afiliado" id="nombre_afiliado" value="{{$array_datos_pronunciamientoOrigen[0]->Nombre_afiliado}}" readonly>
                                            <input hidden="hidden" type="text" name="Id_Evento_pronuncia" id="Id_Evento_pronuncia" value="{{$array_datos_pronunciamientoOrigen[0]->ID_evento}}">
                                            <input hidden="hidden" type="text" name="Id_Proceso_pronuncia" id="Id_Proceso_pronuncia" value="{{$array_datos_pronunciamientoOrigen[0]->Id_proceso}}">
                                            <input hidden="hidden" type="text" name="Asignacion_Pronuncia" id="Asignacion_Pronuncia" value="{{$array_datos_pronunciamientoOrigen[0]->Id_Asignacion}}">
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="identificacion">N° Identificación</label>
                                            <input type="text" class="form-control" name="identificacion" id="identificacion" value="{{$array_datos_pronunciamientoOrigen[0]->Nro_identificacion}}" readonly>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="id_evento">ID evento</label>
                                            <input type="text" class="form-control" name="id_evento" id="id_evento" value="{{$array_datos_pronunciamientoOrigen[0]->ID_evento}}" disabled>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Información de la entidad calificadora -->
                        <div class="card-info">
                            <div class="card-header text-center" style="border: 1.5px solid black;">
                                <h5>Información de la entidad calificadora</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="primer_calificador">Primer Calificador<span style="color: red;">(*)</span></label>
                                            <select class="custom-select primer_calificador" name="primer_calificador" id="primer_calificador" required>
                                                @if (!empty($info_pronuncia[0]->Id_primer_calificador))
                                                    <option value="{{$info_pronuncia[0]->Id_primer_calificador}}" selected>{{$info_pronuncia[0]->Tipo_Entidad}}</option>
                                                 @else
                                                    <option value="">Seleccione una opción</option>
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="nombre_calificador">Nombre de entidad calificadora<span style="color: red;">(*)</span></label>
                                            <select class="custom-select nombre_calificador" name="nombre_calificador" id="nombre_calificador" disabled required>
                                                @if (!empty($info_pronuncia[0]->Id_nombre_calificador))
                                                    <option value="{{$info_pronuncia[0]->Id_nombre_calificador}}" selected>{{$info_pronuncia[0]->Nombre_entidad}}</option>
                                                 @else
                                                    <option value="">Seleccione una opción</option>
                                                 @endif
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="nit_calificador">NIT<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Nit_calificador))
                                                <input type="text" class="form-control" name="nit_calificador" id="nit_calificador" value="{{$info_pronuncia[0]->Nit_calificador}}" readonly>
                                            @else
                                                <input type="text" class="form-control" name="nit_calificador" id="nit_calificador" readonly>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="dir_calificador">Dirección<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Dir_calificador))
                                                <input type="text" class="form-control" name="dir_calificador" id="dir_calificador" value="{{$info_pronuncia[0]->Dir_calificador}}" readonly>
                                            @else
                                                <input type="text" class="form-control" name="dir_calificador" id="dir_calificador" value="" readonly>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="mail_calificador">E-mail<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Email_calificador))
                                                <input type="text" class="form-control" name="mail_calificador" id="mail_calificador" value="{{$info_pronuncia[0]->Email_calificador}}" readonly>
                                            @else
                                                <input type="text" class="form-control" name="mail_calificador" id="mail_calificador" value="" readonly>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="telefono_calificador">Teléfonos<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Telefono_calificador))
                                                <input type="text" class="form-control" name="telefono_calificador" id="telefono_calificador" value="{{$info_pronuncia[0]->Telefono_calificador}}" readonly>
                                            @else
                                                <input type="text" class="form-control" name="telefono_calificador" id="telefono_calificador" value="" readonly>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="depar_calificador">Departamento<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Depar_calificador))
                                                <input type="text" class="form-control" name="depar_calificador" id="depar_calificador" value="{{$info_pronuncia[0]->Depar_calificador}}" readonly>
                                            @else
                                                <input type="text" class="form-control" name="depar_calificador" id="depar_calificador" value="" readonly>
                                            @endif

                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="ciudad_calificador">Ciudad<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Ciudad_calificador))
                                                <input type="text" class="form-control" name="ciudad_calificador" id="ciudad_calificador" value="{{$info_pronuncia[0]->Ciudad_calificador}}" readonly>
                                            @else
                                                <input type="text" class="form-control" name="ciudad_calificador" id="ciudad_calificador" value="" readonly>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Información de la calificacion -->
                        <div class="card-info">
                            <div class="card-header text-center" style="border: 1.5px solid black;">
                                <h5>Información de la Calificación</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="tipo_pronunciamiento">Tipo de pronunciamiento<span style="color: red;">(*)</span></label>
                                            <select class="custom-select tipo_pronunciamiento" name="tipo_pronunciamiento" id="tipo_pronunciamiento" required>
                                                @if (!empty($info_pronuncia[0]->Id_tipo_pronunciamiento))
                                                    <option value="{{$info_pronuncia[0]->Id_tipo_pronunciamiento}}" selected>{{$info_pronuncia[0]->Tpronuncia}}</option>
                                                 @else
                                                    <option value="222">Determinación de Origen</option>
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="tipo_evento">Tipo de evento<span style="color: red;">(*)</span></label>
                                            <select class="custom-select tipo_evento" name="tipo_evento" id="tipo_evento" required>
                                                @if (!empty($info_pronuncia[0]->Id_tipo_evento))
                                                    <option value="{{$info_pronuncia[0]->Id_tipo_evento}}" selected>{{$info_pronuncia[0]->Nombre_evento}}</option>
                                                 @else
                                                    <option value="">Seleccione una opción</option>
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="tipo_origen">Origen<span style="color: red;">(*)</span></label>
                                            <select class="custom-select tipo_origen" name="tipo_origen" id="tipo_origen" required>
                                                @if (!empty($info_pronuncia[0]->Id_tipo_origen))
                                                    <option value="{{$info_pronuncia[0]->Id_tipo_origen}}" selected>{{$info_pronuncia[0]->T_origen}}</option>
                                                 @else
                                                    <option value="">Seleccione una opción</option>
                                                @endif
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-4 m_fecha_evento" style="display:none">
                                        <div class="form-group">
                                            <label for="fecha_evento">Fecha del evento<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Fecha_evento))
                                                <input type="date" class="form-control" id="fecha_evento" name="fecha_evento" value="{{$info_pronuncia[0]->Fecha_evento}}">
                                            @else
                                                <input type="date" class="form-control" id="fecha_evento" name="fecha_evento" max="{{date("Y-m-d")}}"/>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="dictamen_calificador">N° dictamen primer calificador<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Dictamen_calificador))
                                                <input type="number" class="form-control" id="dictamen_calificador" name="dictamen_calificador"  value="{{$info_pronuncia[0]->Dictamen_calificador}}" required>
                                            @else
                                                <input type="number" class="form-control soloNumeros" id="dictamen_calificador" name="dictamen_calificador" required />
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="fecha_calificador">Fecha dictamen primer calificador<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Fecha_calificador))
                                                <input type="date" class="form-control" id="fecha_calificador" name="fecha_calificador" value="{{$info_pronuncia[0]->Fecha_calificador}}" required>
                                            @else
                                                <input type="date" class="form-control" id="fecha_calificador" name="fecha_calificador" max="{{date("Y-m-d")}}" required/>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Diagnósticos motivo de calificación -->
                        <div class="card-info">
                            <div class="card-header text-center" style="border: 1.5px solid black;">
                                <h5>Diagnósticos motivo de calificación</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <div class="alert alert-warning mensaje_confirmacion_cargar_evento" role="alert">
                                                <i class="fas fa-info-circle"></i> <strong>Importante:</strong> Al momento de agregar una fila nueva es necesario
                                                que diligencie en su totalidad los campos.
                                            </div>
                                            <div class="alert d-none" id="resultado_insercion_cie10" role="alert">
                                            </div>
                                            <div class="table-responsive">
                                                <table id="listado_diagnostico_cie10" class="table table-striped table-bordered" width="100%">
                                                    <thead>
                                                        <tr class="bg-info">
                                                            <th>CIE10</th>
                                                            <th>Nombre CIE10</th>
                                                            <th>Origen CIE10</th>
                                                            <th class="centrar"><a href="javascript:void(0);" id="btn_agregar_cie10_fila"><i class="fas fa-plus-circle" style="font-size:24px; color:white;"></i></a></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    @foreach ($array_datos_diagnostico_motcalifi as $diagnostico)
                                                        <tr class="fila_diagnosticos_{{$diagnostico->Id_Diagnosticos_motcali}}" id="datos_diagnostico">
                                                            <td>{{$diagnostico->Codigo}}</td>
                                                            <td>{{$diagnostico->Nombre_CIE10}}</td>
                                                            <td>{{$diagnostico->Nombre_parametro}}</td>
                                                            <td>
                                                                <div style="text-align:center;"><a href="javascript:void(0);" id="btn_remover_diagnosticos_moticalifi{{$diagnostico->Id_Diagnosticos_motcali}}" data-id_fila_quitar="{{$diagnostico->Id_Diagnosticos_motcali}}" data-clase_fila="fila_diagnosticos_{{$diagnostico->Id_Diagnosticos_motcali}}" class="text-info"><i class="fas fa-minus-circle" style="font-size:24px;"></i></a></div>
                                                            </td>
                                                        </tr> 
                                                        @endforeach
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Pronunciamiento ante la calificación -->
                        <div class="card-info">
                            <div class="card-header text-center" style="border: 1.5px solid black;">
                                <h5>Pronunciamiento ante la calificación </h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-1">
                                        <div class="form-group">
                                            <label for="decision">Decisión:</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="form-group">
                                            <div class="form-check custom-control custom-radio">
                                                <input class="form-check-input custom-control-input custom-control-input-info" type="radio" name="decision_pr" id="di_acuerdo_pr" value="Acuerdo" <?php if(!empty($info_pronuncia[0]->Decision) && $info_pronuncia[0]->Decision=='Acuerdo'){ ?> checked <?php } ?>>
                                                <label class="form-check-label custom-control-label" for="di_acuerdo_pr"><strong>Acuerdo</strong></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="form-group">
                                            <div class="form-check custom-control custom-radio">
                                                <input class="form-check-input custom-control-input custom-control-input-info" type="radio" name="decision_pr" id="di_desacuerdo_pr" value="Desacuerdo" <?php if(!empty($info_pronuncia[0]->Decision) && $info_pronuncia[0]->Decision=='Desacuerdo'){ ?> checked <?php } ?>>
                                                <label class="form-check-label custom-control-label" for="di_desacuerdo_pr"><strong>Desacuerdo</strong></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="form-group">
                                            <div class="form-check custom-control custom-radio">
                                                <input class="form-check-input custom-control-input custom-control-input-info" type="radio" name="decision_pr" id="di_silencio_pr" value="Silencio" <?php if(!empty($info_pronuncia[0]->Decision) && $info_pronuncia[0]->Decision=='Silencio'){ ?> checked <?php } ?>>
                                                <label class="form-check-label custom-control-label" for="di_silencio_pr"><strong>Silencio</strong></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-group">
                                            <label for="fecha_pronuncia">Fecha de pronunciamiento:</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="form-group">
                                            @if (!empty($info_pronuncia[0]->Fecha_pronuncia))
                                                <p>{{$info_pronuncia[0]->Fecha_pronuncia}}</p>
                                            @else
                                                <p>{{now()->format('Y-m-d')}}</p>
                                            @endif
                                            <input hidden="hidden" class="form-control" type="date" name="fecha_pronuncia" id="fecha_pronuncia2" value="{{now()->format('Y-m-d')}}">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="asunto_cali">Asunto<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Asunto_cali))
                                                <input type="text" class="mayus_general form-control" name="asunto_cali" id="asunto_cali" value="{{$info_pronuncia[0]->Asunto_cali}}" required>
                                            @else
                                                <input type="text" class="mayus_general form-control" name="asunto_cali" id="asunto_cali" value="" required>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="sustenta_cali">Sustentación<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Sustenta_cali))
                                                <textarea class="mayus_general form-control" name="sustenta_cali" id="sustenta_cali" cols="30" rows="5" style="resize: none;">{{$info_pronuncia[0]->Sustenta_cali}}</textarea>
                                            @else
                                                <textarea class="mayus_general form-control" name="sustenta_cali" id="sustenta_cali" cols="30" rows="5" style="resize: none;"></textarea>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-info row_correspondencia" @if (!empty($info_pronuncia[0]->Decision) && $info_pronuncia[0]->Decision <>'Silencio') style="display:block" @else style="display:none" @endif>
                            <div class="card-header text-center" style="border: 1.5px solid black;">
                                <h5>Correspondecia</h5>
                            </div>
                            <div class="card-body">
                                <div class="row text-center">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="decision">Copia partes interesadas</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-3">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox" id="copia_afiliado" name="copia_afiliado" value="Afiliado" @if (!empty($info_pronuncia[0]->Copia_afiliado) && $info_pronuncia[0]->Copia_afiliado=='Afiliado') checked @endif>
                                                    <label for="copia_afiliado" class="custom-control-label">Afiliado</label>                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox" id="copia_empleador" name="copia_empleador" value="Empleador" @if (!empty($info_pronuncia[0]->copia_empleador) && $info_pronuncia[0]->copia_empleador=='Empleador') checked @endif>
                                                    <label for="copia_empleador" class="custom-control-label">Empleador</label>                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox" id="copia_eps" name="copia_eps" value="EPS" @if (!empty($info_pronuncia[0]->Copia_eps) && $info_pronuncia[0]->Copia_eps=='EPS') checked @endif>
                                                    <label for="copia_eps" class="custom-control-label">EPS</label>                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox" id="copia_afp" name="copia_afp" value="AFP" @if (!empty($info_pronuncia[0]->Copia_afp) && $info_pronuncia[0]->Copia_afp=='AFP') checked @endif>
                                                    <label for="copia_afp" class="custom-control-label">AFP</label>                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox" id="copia_arl" name="copia_arl" value="ARL" @if (!empty($info_pronuncia[0]->Copia_arl) && $info_pronuncia[0]->Copia_arl=='ARL') checked @endif>
                                                    <label for="copia_arl" class="custom-control-label">ARL</label>                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox" id="junta_regional" name="junta_regional" value="junta_regi" @if (!empty($info_pronuncia[0]->Copia_junta_regional) && $info_pronuncia[0]->Copia_junta_regional=='junta_regi') checked @endif>
                                                    <label for="junta_regional" class="custom-control-label">Junta Regional de Calificación de invalidez</label>                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" type="checkbox" id="junta_nacional" name="junta_nacional" value="junta_naci" @if (!empty($info_pronuncia[0]->Copia_junta_nacional) && $info_pronuncia[0]->Copia_junta_nacional=='junta_naci') checked @endif>
                                                    <label for="junta_nacional" class="custom-control-label">Junta Nacional de Calificación de invalidez</label>                 
                                            </div>
                                        </div>
                                    </div>
                                    <div id="contenedor_cual_ciudad" @if (!empty($info_pronuncia[0]->Junta_regional_cual) && $info_pronuncia[0]->Copia_junta_regional <>'undefined') class="col-4" @else class="col-4 d-none" @endif>
                                        <div class="form-group">
                                            <label for="junta_regional_cual">¿Cuál?<span style="color: red;">(*)</span></label>
                                            <select class="custom-select" name="junta_regional_cual" id="junta_regional_cual">
                                                @if (!empty($info_pronuncia[0]->Junta_regional_cual)  && $info_pronuncia[0]->Copia_junta_regional <>'undefined')
                                                    <option value="{{$info_pronuncia[0]->Junta_regional_cual}}" selected>{{$info_pronuncia[0]->Ciudad_Junta}}</option>
                                                 @else
                                                    <option value="">Seleccione una opción</option>
                                                 @endif
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="n_anexos">N° Anexos</label>
                                            @if (!empty($info_pronuncia[0]->N_anexos))
                                                <input type="number" class="form-control soloNumeros" name="n_anexos" id="n_anexos" value="{{$info_pronuncia[0]->N_anexos}}">
                                            @else
                                                <input type="number" class="form-control soloNumeros" name="n_anexos" id="n_anexos" value="">
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="elaboro">Elaboró</label>
                                            @if (!empty($info_pronuncia[0]->Elaboro_pronuncia))
                                                <input type="text" class="form-control" name="elaboro" id="elaboro" value="{{$info_pronuncia[0]->Elaboro_pronuncia}}" readonly>
                                            @else
                                                <input type="text" class="form-control" name="elaboro" id="elaboro" value="" readonly>
                                            @endif
                                                <input hidden="hidden" class="form-control" type="text" name="elaboro_data" id="elaboro_data" value="{{$user->name}}">
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="reviso">Revisó<span style="color: red;">(*)</span></label>
                                            <select class="reviso custom-select" name="reviso" id="reviso" style="width: 100%;">
                                                @if (!empty($info_pronuncia[0]->Reviso_Pronuncia))
                                                    <option value="{{$info_pronuncia[0]->Reviso_Pronuncia}}" selected>{{$info_pronuncia[0]->Reviso_Pronuncia}}</option>
                                                 @else
                                                    <option value="">Seleccione una opción</option>
                                                @endif                                        
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="ciudad_correspon">Ciudad<span style="color: red;">(*)</span></label>
                                            @if (!empty($info_pronuncia[0]->Ciudad_correspon))
                                                <input type="text" class="form-control" name="ciudad_correspon" id="ciudad_correspon" value="{{$info_pronuncia[0]->Ciudad_correspon}}" required>
                                            @else
                                                <input type="text" class="form-control" name="ciudad_correspon" id="ciudad_correspon" value="Bogotá D.C" required>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="fecha_correspon">Fecha</label>
                                            @if (!empty($info_pronuncia[0]->Fecha_correspondencia))
                                                <input type="date" class="form-control" name="fecha_correspon" id="fecha_correspon" value="{{$info_pronuncia[0]->Fecha_correspondencia}}" readonly>
                                            @else
                                                <input type="date" class="form-control" name="fecha_correspon" id="fecha_correspon" value="{{now()->format('Y-m-d')}}" readonly>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-group">
                                            <label for="n_radicado">N° Radicado</label>
                                            @if (!empty($info_pronuncia[0]->Fecha_correspondencia))
                                                <input type="text" class="form-control" name="n_radicado" id="n_radicado" value="{{$info_pronuncia[0]->N_radicado}}" readonly>
                                            @else
                                                <input type="text" class="form-control" name="n_radicado" id="n_radicado" value="{{$consecutivo}}" readonly>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-1">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox">
                                                <br>
                                                <input class="custom-control-input" type="checkbox" id="firmar" name="firmar" value="firmar" @if (!empty($info_pronuncia[0]->Firmar) && $info_pronuncia[0]->Firmar=='firmar') checked @endif>
                                                <label for="firmar" class="custom-control-label">Firmar</label>                 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="n_radicado">Cargue Documento Pronunciamiento:</label>
                                    @if (!empty($info_pronuncia[0]->Archivo_pronuncia) && $info_pronuncia[0]->Archivo_pronuncia <>'N/A')
                                        <input hidden="hidden" type="text" name="nom_archivo" id="nom_archivo" value="{{$info_pronuncia[0]->Archivo_pronuncia}}">
                                        <a href="{{route('VerDocumentoPronuncia', ['Id_evento' => $info_pronuncia[0]->ID_evento,'nom_archivo' => $info_pronuncia[0]->Archivo_pronuncia])}}">Ver documento ya cargado</a>
                                    @endif
                                    <input type="file" class="form-control select-doc" name="DocPronuncia" id="DocPronuncia" aria-describedby="Carguedocumentos" aria-label="Upload"/>
                                </div>
                            </div>
                            <div id="div_alerta_archivo" class="col-12 d-none">
                                <div class="form-group">
                                    <div class="alerta_archivo alert alert-danger mt-2 mr-auto" role="alert"></div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-warning mensaje_confirmacion_cargar_evento" role="alert">
                                        <i class="fas fa-info-circle"></i> <strong>Importante:</strong> Para guardar la información es necesario dar clic en el botón guardar.
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        @if (!empty($info_pronuncia[0]->ID_evento))
                                            <input type="submit" id="ActualizarPronuncia" name="ActualizarPronuncia" class="btn btn-info" value="Actualizar">
                                            <input hidden="hidden" type="text" id="bandera_pronuncia_guardar_actualizar" value="Actualizar">
                                        @else
                                            <input type="submit" id="GuardarPronuncia" name="GuardarPronuncia" class="btn btn-info" value="Guardar">                                                
                                            <input hidden="hidden" type="text" id="bandera_pronuncia_guardar_actualizar" value="Guardar">
                                        @endif
                                    </div>
                                </div>
                                <div id="div_alerta_pronuncia" class="col-12 d-none">
                                    <div class="form-group">
                                        <div class="alerta_pronucia alert alert-success mt-2 mr-auto" role="alert"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--Retonar al modulo Origen -->
   <form action="{{route('calificacionOrigen')}}" id="formularioEnvio" method="POST">            
        @csrf
        <input hidden="hidden" type="text" name="newIdEvento" id="newIdEvento" value="{{$array_datos_pronunciamientoOrigen[0]->ID_evento}}">
        <input hidden="hidden" type="text" name="newIdAsignacion" id="newIdAsignacion" value="{{$array_datos_pronunciamientoOrigen[0]->Id_Asignacion}}">
        <button type="submit" id="botonEnvioVista" style="display:none !important;"></button>
    </form> 
@stop
@section('js')
    <script type="text/javascript">
        document.getElementById('botonEnvioVista').addEventListener('click', function(event) {
            event.preventDefault();
            // Realizar las acciones que quieres al hacer clic en el botón
            document.getElementById('formularioEnvio').submit();
        });
        $(document).ready(function(){
            //SCRIPT PARA INSERTAR O ELIMINAR FILAS DINAMICAS DEL DATATABLES DE DIAGNOSTCO CIE10
            $(".centrar").css('text-align', 'center');
            var listado_diagnostico_cie10 = $('#listado_diagnostico_cie10').DataTable({
                "responsive": true,
                "info": false,
                "searching": false,
                "ordering": false,
                "scrollCollapse": true,
                "scrollY": "30vh",
                "paging": false,
                "language":{
                    "emptyTable": "No se encontró información"
                }
            });

            autoAdjustColumns(listado_diagnostico_cie10);

            var contador_cie10 = 0;
            $('#btn_agregar_cie10_fila').click(function(){
                $('#Generar_correspondencia').removeClass('d-none');

                contador_cie10 = contador_cie10 + 1;
                var nueva_fila_cie10 = [
                    '<select id="lista_Cie10_fila_'+contador_cie10+'" class="custom-select lista_Cie10_fila_'+contador_cie10+'" name="lista_Cie10"><option></option></select>',
                    '<input type="text" class="form-control" id="nombre_cie10_fila_'+contador_cie10+'" name="nombre_cie10"/>',
                    '<select id="lista_origenCie10_fila_'+contador_cie10+'" class="custom-select lista_origenCie10_fila_'+contador_cie10+'" name="lista_origenCie10"><option></option></select>',
                    '<div style="text-align:center;"><a href="javascript:void(0);" id="btn_remover_cie10_fila" class="text-info" data-fila="fila_'+contador_cie10+'"><i class="fas fa-minus-circle" style="font-size:24px;"></i></a></div>',
                    'fila_'+contador_cie10
                ];

                var agregar_cie10_fila = listado_diagnostico_cie10.row.add(nueva_fila_cie10).draw().node();
                $(agregar_cie10_fila).addClass('fila_'+contador_cie10);
                $(agregar_cie10_fila).attr("id", 'fila_'+contador_cie10);

                // Esta función realiza los controles de cada elemento por fila (está dentro del archivo calificacionpcl.js)
                funciones_elementos_fila_diagnosticos(contador_cie10);
            });
            $(document).on('click', '#btn_remover_cie10_fila', function(){
                var nombre_cie10_fila = $(this).data("fila");
                listado_diagnostico_cie10.row("."+nombre_cie10_fila).remove().draw();
            });
            
            $(document).on('click', "a[id^='btn_remover_diagnosticos_moticalifi']", function(){
                var nombre_cie10_fila = $(this).data("clase_fila");
                listado_diagnostico_cie10.row("."+nombre_cie10_fila).remove().draw();
            });
            
        });
    </script>
    <script type="text/javascript" src="/js/pronunciamientoOrigen.js"></script>
    <script type="text/javascript" src="/js/funciones_helpers.js"></script>
@stop