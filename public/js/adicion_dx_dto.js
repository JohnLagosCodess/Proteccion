$(document).ready(function(){
    $("#mostrar_ocultar_formularios").slideUp('fast');

    // Incialización selec2 activo o no
    $(".es_activo").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });
    
    // Inicialización de select2 listado tipo de eventos
    $(".tipo_evento").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });
    
    // Inicialización de select2 listado motivo solicitud
    $(".motivo_solicitud").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    // Incialización de select2 ORIGEN DTO ATEL
    $(".origen_dto_atel").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    var token = $('input[name=_token]').val();

    // llenado de selector de motivos de solicitud
    let datos_motivo_solicitud = {
        '_token': token,
        'parametro':"motivo_solicitud"
    };
    $.ajax({
        type:'POST',
        url:'/cargueListadoSelectoresAdicionDx',
        data: datos_motivo_solicitud,
        success:function(data){
            //console.log(data);
            let motivo_solicitud_bd = $('#motivo_solicitud_bd').val();
            $('#motivo_solicitud').append('<option value=""></option>');
            let listado_motivo_solicitud = Object.keys(data);
            for (let i = 0; i < listado_motivo_solicitud.length; i++) {
                if (data[listado_motivo_solicitud[i]]['Nombre_solicitud'] == motivo_solicitud_bd) {                    
                    $('#motivo_solicitud').append('<option value="'+data[listado_motivo_solicitud[i]]['Id_Solicitud']+'" selected>'+data[listado_motivo_solicitud[i]]['Nombre_solicitud']+'</option>');
                }else{
                    $('#motivo_solicitud').append('<option value="'+data[listado_motivo_solicitud[i]]['Id_Solicitud']+'">'+data[listado_motivo_solicitud[i]]['Nombre_solicitud']+'</option>');
                }
            }
        }
    });
    
    // VERIFICACIÓN DEL DATO ACTIVO EN CASO DE QUE EXISTA INFORMACIÓN GUARDADA
    var verificacion_activo = $("#es_activo").val();
        
    if (verificacion_activo != "") {
        if (verificacion_activo == "Si") {
            let datos_tipo_evento = {
                '_token': token,
                'parametro':"tipo_de_evento_si"
            };
            $.ajax({
                type:'POST',
                url:'/cargueListadoSelectoresAdicionDx',
                data: datos_tipo_evento,
                success:function(data){
                    //console.log(data);
                    $('#tipo_evento').prop('disabled', false);
                    $('#tipo_evento').empty();
                    $('#tipo_evento').append('<option value=""></option>');
    
                    let listado_tipo_evento = Object.keys(data);
                    for (let i = 0; i < listado_tipo_evento.length; i++) {
                        if (data[listado_tipo_evento[i]]['Id_Evento'] == $("#bd_tipo_evento").val()) {                    
                            $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'" selected>'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                        }else{
                            $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'">'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                        }
                    }
                }
            });
        }else{
            let datos_tipo_evento = {
                '_token': token,
                'parametro':"tipo_de_evento_no"
            };
            $.ajax({
                type:'POST',
                url:'/cargueListadoSelectoresAdicionDx',
                data: datos_tipo_evento,
                success:function(data){
                    
                    $('#tipo_evento').prop('disabled', false);
                    $('#tipo_evento').empty();
                    $('#tipo_evento').append('<option value=""></option>');
    
                    let listado_tipo_evento = Object.keys(data);
                    for (let i = 0; i < listado_tipo_evento.length; i++) {
                        if (data[listado_tipo_evento[i]]['Id_Evento'] == $("#bd_tipo_evento").val()) {  
                            $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'" selected>'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                        }else{
                            $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'">'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                        }
                    }
                }
            });
        }
    }
    
    // validacion de si es activo o no para llenar el selector de tipo de evento
    $("#es_activo").change(function(){
        let opcion_seleccionada = $(this).val();
        
        if (opcion_seleccionada == "Si") {
            let datos_tipo_evento = {
                '_token': token,
                'parametro':"tipo_de_evento_si"
            };
            $.ajax({
                type:'POST',
                url:'/cargueListadoSelectoresAdicionDx',
                data: datos_tipo_evento,
                success:function(data){
                    //console.log(data);
                    $('#tipo_evento').prop('disabled', false);
                    $('#tipo_evento').empty();
                    $('#tipo_evento').append('<option value=""></option>');
    
                    let listado_tipo_evento = Object.keys(data);
                    for (let i = 0; i < listado_tipo_evento.length; i++) {             
                        // validacion del tipo evento cuando viene de la base de datos de determinacion o adicion
                        if ($("#bd_tipo_evento").val() != "") {
                            if (data[listado_tipo_evento[i]]['Id_Evento'] == $("#bd_tipo_evento").val()) {
                                $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'" selected>'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                            }else{
                                $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'">'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                            }
                        }else{
                            // validacion del tipo evento cuando viene del procedimiento almacenado de calificacionorigen
                            if (data[listado_tipo_evento[i]]['Nombre_evento'] == $("#nombre_evento_gestion_edicion").val()) {
                                $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'" selected>'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                            }else{
                                $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'">'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                            }
                        }             
                    }

                    if ($("#bd_tipo_evento").val() == 1) {
                        var parametro_origen_dto_atel = "origen_vali_1";
                        $("#mostrar_ocultar_formularios").slideUp('slow');
                        $("#mostrar_ocultar_formularios").slideDown('slow');
            
                        // Mostramos los contenedores del formulario accidente
                        $("#contenedor_forms_acci_inci_sincober").removeClass('d-none');
                        $("#contenedor_grado_severidad").removeClass('d-none');
                        $("#contenedor_descrip_FURAT").removeClass('d-none');
                        $("#contenedor_tipo_lesion").removeClass('d-none');
                        $("#contenedor_parte_afectada").removeClass('d-none');
                        $("#contenedor_checkboxes_acci_inci_sincober").removeClass('d-none');
                        
                        
                        $("#contenedor_diag_moti_califi").removeClass('d-none');
                        $("#contenedor_diag_moti_califi_adicional").removeClass('d-none');
            
                        $("#GuardarAdicionDx").removeClass('d-none');
                        $("#ActualizarAdicionDx").removeClass('d-none');

                        $("#btn_agregar_examen_fila").removeClass('d-none');
                        $("a[id^='btn_remover_examen_fila_examenes_']").removeClass('d-none');
                        
                        $("#btn_agregar_cie10_fila").removeClass('d-none');
                        $("a[id^='btn_remover_diagnosticos_moticalifi']").removeClass('d-none');
                        $("a[id^='btn_remover_cie10_fila']").removeClass('d-none');
            
                        // llenado de datos del selector origen acorde a las validaciones
                        let datos_selector_origen_val_1 = {
                            '_token': token,
                            'parametro': parametro_origen_dto_atel
                        };
                        $.ajax({
                            type:'POST',
                            url:'/cargueListadoSelectoresAdicionDx',
                            data: datos_selector_origen_val_1,
                            success:function(data){
                                //console.log(data);
                                $('#origen_dto_atel').empty();
                                $('#origen_dto_atel').append('<option value=""></option>');
                                let listado_origen_dto_atel = Object.keys(data);
                                for (let i = 0; i < listado_origen_dto_atel.length; i++) {
                                    if (data[listado_origen_dto_atel[i]]['Id_Parametro'] == $("#bd_origen").val()) {
                                        $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'" selected>'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                                    } else {
                                        $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'">'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                                    }
                                }
                            }
                        });
                    }
                    
                }
            });
        }else{
            let datos_tipo_evento = {
                '_token': token,
                'parametro':"tipo_de_evento_no"
            };
            $.ajax({
                type:'POST',
                url:'/cargueListadoSelectoresAdicionDx',
                data: datos_tipo_evento,
                success:function(data){
                    //console.log(data);
                    $('#tipo_evento').prop('disabled', false);
                    $('#tipo_evento').empty();
                    $('#tipo_evento').append('<option value=""></option>');
    
                    let listado_tipo_evento = Object.keys(data);
                    for (let i = 0; i < listado_tipo_evento.length; i++) {
                        // validacion del tipo evento cuando viene de la base de datos de determinacion o adicion
                        if ($("#bd_tipo_evento").val() != "") {
                            if (data[listado_tipo_evento[i]]['Id_Evento'] == $("#bd_tipo_evento").val()) {                    
                                $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'" selected>'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                            }else{
                                $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'">'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                            }
                        }else{
                            // validacion del tipo evento cuando viene del procedimiento almacenado de calificacionorigen
                            if (data[listado_tipo_evento[i]]['Nombre_evento'] == $("#nombre_evento_gestion_edicion").val()) {
                                $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'" selected>'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                            }else{
                                $('#tipo_evento').append('<option value="'+data[listado_tipo_evento[i]]['Id_Evento']+'">'+data[listado_tipo_evento[i]]['Nombre_evento']+'</option>');
                            }
                        }             
                    }

                    if ($("#bd_tipo_evento").val() == 4) {
                        var parametro_origen_dto_atel = "origen_vali_3";
                        $("#mostrar_ocultar_formularios").slideUp('slow');
                        $("#mostrar_ocultar_formularios").slideDown('slow');

                        // Mostramos los contenedores del formulario accidente
                        $("#contenedor_forms_acci_inci_sincober").removeClass('d-none');
                        $("#contenedor_grado_severidad").removeClass('d-none');
                        $("#contenedor_descrip_FURAT").removeClass('d-none');
                        $("#contenedor_tipo_lesion").removeClass('d-none');
                        $("#contenedor_parte_afectada").removeClass('d-none');
                        $("#contenedor_checkboxes_acci_inci_sincober").removeClass('d-none');

                        
                        // $("#contenedor_diag_moti_califi").addClass('d-none');
                        // $("#contenedor_diag_moti_califi_adicional").addClass('d-none');

                        $("#GuardarAdicionDx").addClass('d-none');
                        $("#ActualizarAdicionDx").addClass('d-none');
                        
                        $("#btn_agregar_examen_fila").addClass('d-none');
                        $("a[id^='btn_remover_examen_fila_examenes_']").addClass('d-none');
                        
                        $("#btn_agregar_cie10_fila").addClass('d-none');
                        $("a[id^='btn_remover_diagnosticos_moticalifi']").addClass('d-none');
                        $("a[id^='btn_remover_cie10_fila']").addClass('d-none');
                        
                        // llenado de datos del selector origen acorde a las validaciones
                        let datos_selector_origen_val_1 = {
                            '_token': token,
                            'parametro': parametro_origen_dto_atel
                        };
                        $.ajax({
                            type:'POST',
                            url:'/cargueListadoSelectoresAdicionDx',
                            data: datos_selector_origen_val_1,
                            success:function(data){
                                //console.log(data);
                                $('#origen_dto_atel').empty();
                                $('#origen_dto_atel').append('<option value=""></option>');
                                let listado_origen_dto_atel = Object.keys(data);
                                for (let i = 0; i < listado_origen_dto_atel.length; i++) {
                                    if (data[listado_origen_dto_atel[i]]['Id_Parametro'] == $("#bd_origen").val()) {
                                        $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'" selected>'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                                    } else {
                                        $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'">'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                                    }
                                }
                            }
                        });
                    }
                }
            });
        }
    });

    var intervalo = setInterval(() => {
        var activo = $("#es_activo").val();
        var verificacion_tipo_evento = $("#tipo_evento option:selected").text();

        // Validacion N°1: Activo = Si y Tipo de Evento = Accidente
        if (activo == "Si" && verificacion_tipo_evento == "Accidente") {
            var parametro_origen_dto_atel = "origen_vali_1";
            $("#mostrar_ocultar_formularios").slideUp('slow');
            $("#mostrar_ocultar_formularios").slideDown('slow');

            // Mostramos los contenedores del formulario accidente
            $("#contenedor_forms_acci_inci_sincober").removeClass('d-none');
            $("#contenedor_grado_severidad").removeClass('d-none');
            $("#contenedor_descrip_FURAT").removeClass('d-none');
            $("#contenedor_tipo_lesion").removeClass('d-none');
            $("#contenedor_parte_afectada").removeClass('d-none');
            $("#contenedor_checkboxes_acci_inci_sincober").removeClass('d-none');
            
            
            $("#contenedor_diag_moti_califi").removeClass('d-none');
            $("#contenedor_diag_moti_califi_adicional").removeClass('d-none');

            $("#GuardarAdicionDx").removeClass('d-none');
            $("#ActualizarAdicionDx").removeClass('d-none');

            $("#btn_agregar_examen_fila").removeClass('d-none');
            $("a[id^='btn_remover_examen_fila_examenes_']").removeClass('d-none');
            
            $("#btn_agregar_cie10_fila").removeClass('d-none');
            $("a[id^='btn_remover_diagnosticos_moticalifi']").removeClass('d-none');
            $("a[id^='btn_remover_cie10_fila']").removeClass('d-none');

            // llenado de datos del selector origen acorde a las validaciones
            let datos_selector_origen_val_1 = {
                '_token': token,
                'parametro': parametro_origen_dto_atel
            };
            $.ajax({
                type:'POST',
                url:'/cargueListadoSelectoresAdicionDx',
                data: datos_selector_origen_val_1,
                success:function(data){
                    //console.log(data);
                    $('#origen_dto_atel').empty();
                    $('#origen_dto_atel').append('<option value=""></option>');
                    let listado_origen_dto_atel = Object.keys(data);
                    for (let i = 0; i < listado_origen_dto_atel.length; i++) {
                        if (data[listado_origen_dto_atel[i]]['Id_Parametro'] == $("#bd_origen").val()) {
                            $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'" selected>'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                        } else {
                            $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'">'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                        }
                    }
                }
            });
            clearInterval(intervalo);
        }
        
        // Validacion N°2: Activo = Si y Tipo de Evento = Sin Cobertura
        else if(activo == "No" && verificacion_tipo_evento == "Sin Cobertura"){
            var parametro_origen_dto_atel = "origen_vali_3";
            $("#mostrar_ocultar_formularios").slideUp('slow');
            $("#mostrar_ocultar_formularios").slideDown('slow');

            // Mostramos los contenedores del formulario accidente
            $("#contenedor_forms_acci_inci_sincober").removeClass('d-none');
            $("#contenedor_grado_severidad").removeClass('d-none');
            $("#contenedor_descrip_FURAT").removeClass('d-none');
            $("#contenedor_tipo_lesion").removeClass('d-none');
            $("#contenedor_parte_afectada").removeClass('d-none');
            $("#contenedor_checkboxes_acci_inci_sincober").removeClass('d-none');

            
            // $("#contenedor_diag_moti_califi").addClass('d-none');
            // $("#contenedor_diag_moti_califi_adicional").addClass('d-none');

            $("#GuardarAdicionDx").addClass('d-none');
            $("#ActualizarAdicionDx").addClass('d-none');

            $("#btn_agregar_examen_fila").addClass('d-none');
            $("a[id^='btn_remover_examen_fila_examenes_']").addClass('d-none');
            
            $("#btn_agregar_cie10_fila").addClass('d-none');
            $("a[id^='btn_remover_diagnosticos_moticalifi']").addClass('d-none');
            $("a[id^='btn_remover_cie10_fila']").addClass('d-none');
            
            // llenado de datos del selector origen acorde a las validaciones
            let datos_selector_origen_val_1 = {
                '_token': token,
                'parametro': parametro_origen_dto_atel
            };
            $.ajax({
                type:'POST',
                url:'/cargueListadoSelectoresAdicionDx',
                data: datos_selector_origen_val_1,
                success:function(data){
                    //console.log(data);
                    $('#origen_dto_atel').empty();
                    $('#origen_dto_atel').append('<option value=""></option>');
                    let listado_origen_dto_atel = Object.keys(data);
                    for (let i = 0; i < listado_origen_dto_atel.length; i++) {
                        if (data[listado_origen_dto_atel[i]]['Id_Parametro'] == $("#bd_origen").val()) {
                            $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'" selected>'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                        } else {
                            $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'">'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                        }
                    }
                }
            });
            clearInterval(intervalo);
        }
    }, 500);

    // Validaciones de Cobertura y Tipo de Evento
    $("#tipo_evento").change(function(){
        var tipo_evento_selecccionado = $("#tipo_evento option:selected").text();
        var activo = $("#es_activo").val();
       
        // Validacion N°1: Activo = Si y Tipo de Evento = Accidente
        if (activo == "Si" && tipo_evento_selecccionado == "Accidente") {
            var parametro_origen_dto_atel = "origen_vali_1";
            $("#mostrar_ocultar_formularios").slideUp('slow');
            $("#mostrar_ocultar_formularios").slideDown('slow');

            // Mostramos los contenedores del formulario accidente
            $("#contenedor_forms_acci_inci_sincober").removeClass('d-none');
            $("#contenedor_grado_severidad").removeClass('d-none');
            $("#contenedor_descrip_FURAT").removeClass('d-none');
            $("#contenedor_tipo_lesion").removeClass('d-none');
            $("#contenedor_parte_afectada").removeClass('d-none');
            $("#contenedor_checkboxes_acci_inci_sincober").removeClass('d-none');
            
            
            $("#contenedor_diag_moti_califi").removeClass('d-none');
            $("#contenedor_diag_moti_califi_adicional").removeClass('d-none');

            $("#GuardarAdicionDx").removeClass('d-none');
            $("#ActualizarAdicionDx").removeClass('d-none');

            $("#btn_agregar_examen_fila").removeClass('d-none');
            $("a[id^='btn_remover_examen_fila_examenes_']").removeClass('d-none');
            
            $("#btn_agregar_cie10_fila").removeClass('d-none');
            $("a[id^='btn_remover_diagnosticos_moticalifi']").removeClass('d-none');
            $("a[id^='btn_remover_cie10_fila']").removeClass('d-none');

        }
        
        // Validacion N°4: Activo = Si y Tipo de Evento = Sin Cobertura
        else if(activo == "No" && tipo_evento_selecccionado == "Sin Cobertura"){
            var parametro_origen_dto_atel = "origen_vali_3";
            $("#mostrar_ocultar_formularios").slideUp('slow');
            $("#mostrar_ocultar_formularios").slideDown('slow');

            // Mostramos los contenedores del formulario accidente
            $("#contenedor_forms_acci_inci_sincober").removeClass('d-none');
            $("#contenedor_grado_severidad").removeClass('d-none');
            $("#contenedor_descrip_FURAT").removeClass('d-none');
            $("#contenedor_tipo_lesion").removeClass('d-none');
            $("#contenedor_parte_afectada").removeClass('d-none');
            $("#contenedor_checkboxes_acci_inci_sincober").removeClass('d-none');

            
            // $("#contenedor_diag_moti_califi").addClass('d-none');
            // $("#contenedor_diag_moti_califi_adicional").addClass('d-none');

            $("#GuardarAdicionDx").addClass('d-none');
            $("#ActualizarAdicionDx").addClass('d-none');

            $("#btn_agregar_examen_fila").addClass('d-none');
            $("a[id^='btn_remover_examen_fila_examenes_']").addClass('d-none');
            
            $("#btn_agregar_cie10_fila").addClass('d-none');
            $("a[id^='btn_remover_diagnosticos_moticalifi']").addClass('d-none');
            $("a[id^='btn_remover_cie10_fila']").addClass('d-none');

        }


        // llenado de datos del selector origen acorde a la validación N°1
        let datos_selector_origen_val_1 = {
            '_token': token,
            'parametro': parametro_origen_dto_atel
        };
        $.ajax({
            type:'POST',
            url:'/cargueListadoSelectoresAdicionDx',
            data: datos_selector_origen_val_1,
            success:function(data){
                //console.log(data);
                $('#origen_dto_atel').empty();
                $('#origen_dto_atel').append('<option value=""></option>');
                let listado_origen_dto_atel = Object.keys(data);
                for (let i = 0; i < listado_origen_dto_atel.length; i++) {
                    if (data[listado_origen_dto_atel[i]]['Id_Parametro'] == $("#bd_origen").val()) {
                        $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'" selected>'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                    } else {
                        $('#origen_dto_atel').append('<option value="'+data[listado_origen_dto_atel[i]]['Id_Parametro']+'">'+data[listado_origen_dto_atel[i]]['Nombre_parametro']+'</option>');
                    }
                }
            }
        });
    });

    // VERIFICACION DE SELECTOR MORTAL EN CASO DE QUE EXISTA INFORMACIÓN GUARDADA
    var mortal_opt = "";

    var verificacion_mortal= $("#mortal").val();
    if (verificacion_mortal == "Si") {
        $("#mostrar_f_fallecimiento").removeClass("d-none");
        mortal_opt = verificacion_mortal;
    } else if(verificacion_mortal == "No") {
        $("#mostrar_f_fallecimiento").addClass("d-none");
        mortal_opt = "No";
    } else{
        mortal_opt = "";
    }


    // Inactivar filas visuales cuando se eliminen de la pantalla para la tabla de Diagnósticos Adicionados
    $(document).on('click', "a[id^='btn_remover_diagnosticos_moticalifi']", function(){
        var id_evento = $("#Id_Evento").val();
        var id_asignacion = $('#Id_Asignacion_adicion_dx').val();
        var id_proceso = $("#Id_Proceso_adicion_dx").val();
        let token = $("input[name='_token']").val();

        var datos_fila_quitar_examen = {
            '_token': token,
            'fila' : $(this).data("id_fila_quitar"),
            'Id_evento': id_evento,
            'Id_asignacion': id_asignacion,
            'Id_proceso': id_proceso
        };

        $.ajax({
            type:'POST',
            url:'eliminarDiagnosticosMotivoCalificacionDTOATEL',
            data: datos_fila_quitar_examen,
            success:function(response){
                // console.log(response);
                if (response.parametro == "fila_diagnostico_eliminada") {
                    $('#resultado_insercion_cie10').empty();
                    $('#resultado_insercion_cie10').removeClass('d-none');
                    $('#resultado_insercion_cie10').addClass('alert-success');
                    $('#resultado_insercion_cie10').append('<strong>'+response.mensaje+'</strong>');
                    
                    setTimeout(() => {
                        $('#resultado_insercion_cie10').addClass('d-none');
                        $('#resultado_insercion_cie10').removeClass('alert-success');
                        $('#resultado_insercion_cie10').empty();
                    }, 3000);
                }
                if (response.total_registros == 0) {
                    $("#conteo_listado_diagnosticos_moticalifi").val(response.total_registros);
                }
            }
        });        

    });

    // Quitar el Si como DX principal en la tabla Diagnósticos Adicionados
    $(document).on('click', "input[id^='checkbox_dx_principal_visual_Cie10_']", function(){
        var fila = $(this).data("id_fila_checkbox_dx_principal_cie10_visual");
        var id_asig_fila = $(this).data("id_asig_checkbox_dx_principal_cie10_visual");
        var id_proce_fila = $(this).data("id_proce_checkbox_dx_principal_cie10_visual");
        let token = $("input[name='_token']").val();

        if ($("#checkbox_dx_principal_visual_Cie10_"+fila).is(":checked")) {
            var informacion_actualizar = {
                '_token': token,
                'fila':fila,
                'bandera': "Si",
                'Id_evento': $('#Id_Evento').val(),
                'Id_Asignacion': id_asig_fila,
                'Id_proceso': id_proce_fila
            }
        } else {
            var informacion_actualizar = {
                '_token': token,
                'fila':fila,
                'bandera': "No",
                'Id_evento': $('#Id_Evento').val(),
                'Id_Asignacion': id_asig_fila,
                'Id_proceso': id_proce_fila
            }
        };

        $.ajax({
            type:'POST',
            url:'/actualizarDxPrincipalDTOATEL',
            data: informacion_actualizar,
            success:function(response){
                if (response.parametro == "hecho") {
                    $("#resultado_insercion_cie10").empty();
                    $("#resultado_insercion_cie10").removeClass('d-none');
                    $("#resultado_insercion_cie10").addClass('alert-success');
                    $("#resultado_insercion_cie10").append('<strong>'+response.mensaje+'</strong>');

                    setTimeout(() => {
                        $("#resultado_insercion_cie10").addClass('d-none');
                        $("#resultado_insercion_cie10").removeClass('alert-success');
                        $("#resultado_insercion_cie10").empty();
                    }, 3000);
                }              
            }
        });



    });

    // Inactivar filas visuales cuando se eliminen de la pantalla para la tabla de Examenes e Interconsultas
    $(document).on('click', "a[id^='btn_remover_examen_fila_examenes_']", function(){
        var id_evento = $("#Id_Evento").val();
        var id_asignacion = $('#Id_Asignacion_adicion_dx').val();
        var id_proceso = $("#Id_Proceso_adicion_dx").val();
        let token = $("input[name='_token']").val();

        var datos_fila_quitar_examen = {
            '_token': token,
            'fila' : $(this).data("id_fila_quitar"),
            'Id_evento': id_evento,
            'Id_asignacion': id_asignacion,
            'Id_proceso': id_proceso
        };
        
        $.ajax({
            type:'POST',
            url:'/eliminarExamenesInterconsultasDTOATEL',
            data: datos_fila_quitar_examen,
            success:function(response){
                // console.log(response);
                if (response.parametro == "fila_examen_eliminada") {
                    $('#resultado_insercion_examen').empty();
                    $('#resultado_insercion_examen').removeClass('d-none');
                    $('#resultado_insercion_examen').addClass('alert-success');
                    $('#resultado_insercion_examen').append('<strong>'+response.mensaje+'</strong>');
                    
                    setTimeout(() => {
                        $('#resultado_insercion_examen').addClass('d-none');
                        $('#resultado_insercion_examen').removeClass('alert-success');
                        $('#resultado_insercion_examen').empty();
                    }, 3000);
                }
                if (response.total_registros == 0) {
                    $("#conteo_listado_examenes_interconsulta").val(response.total_registros);
                }
            }
        });        

    });


    // Envío de la información
    $("#form_Adicion_Dx").submit(function(e){
        e.preventDefault();

        // Captura del Id_evento
        var id_evento = $("#Id_Evento").val();
        // caputra del id de asignacion y id proceso de la adicion dx
        var id_asignacion_adicion_dx = $("#Id_Asignacion_adicion_dx").val();
        var id_proceso_adicion_dx = $("#Id_Proceso_adicion_dx").val();

        // Captura del id de la determinación dto
        var id_dto_atel = $("#id_dto_atel").val();

        let token = $("input[name='_token']").val();

        var tipo_evento = $("#tipo_evento").val();

        if (tipo_evento == 1) {
            // Creacion de array para los checkboxes de relacion de documentos
            var relacion_docs_dto_atel = [];
            $('input[type="checkbox"]').each(function() {
                var relacion_documento_dto_atel = $(this).attr('id');            
                if (relacion_documento_dto_atel === 'furat_acci_inci_sincober' || relacion_documento_dto_atel === 'historia_clinica_acci_inci_sincober') {                
                    if ($(this).is(':checked')) {                
                        var relacion_documento_dto_atel_valor = $(this).val();
                        relacion_docs_dto_atel.push(relacion_documento_dto_atel_valor);
                    }
                }
            });

            // Creacion de array con los datos de la tabla dinámica Exámenes e interconsultas
            var guardar_datos_examenes_interconsultas = [];
            var datos_finales_examenes_interconsultas = [];
            // RECORREMOS LOS TD DE LA TABLA PARA EXTRAER LOS DATOS E INSERTARLOS EN UN ARREGLO (LA INSERCIÓN LA HACE POR CADA FILA, POR ENDE, ES UN ARRAY MULTIDIMENSIONAL)
            $('#listado_examenes_interconsultas tbody tr').each(function (index) {
                if ($(this).attr('id') !== "datos_examenes_interconsulta") {
                    $(this).children("td").each(function (index2) {
                        var nombres_ids = $(this).find('*').attr("id");
                        if (nombres_ids != undefined) {
                            guardar_datos_examenes_interconsultas.push($('#'+nombres_ids).val());                        
                        }
                        if((index2+1) % 3 === 0){
                            datos_finales_examenes_interconsultas.push(guardar_datos_examenes_interconsultas);
                            guardar_datos_examenes_interconsultas = [];
                        }
                    });
                }
            });

            // Creacion de array con los datos de la tabla dinámica Diagnóstico motivo de calificación
            var guardar_datos_motivo_calificacion = [];
            var datos_finales_adiciones_calificacion = [];
            // RECORREMOS LOS TD DE LA TABLA PARA EXTRAER LOS DATOS E INSERTARLOS EN UN ARREGLO (LA INSERCIÓN LA HACE POR CADA FILA, POR ENDE, ES UN ARRAY MULTIDIMENSIONAL)
            $('#listado_diagnostico_cie10 tbody tr').each(function (index) {
                if ($(this).attr('id') !== "datos_diagnostico") {
                    $(this).children("td").each(function (index2) {
                        var nombres_ids = $(this).find('*').attr("id");
                        if (nombres_ids != undefined) {
                            if ($('#'+nombres_ids).val() == "on") {
                                if ($('#'+nombres_ids).is(':checked')) {
                                    guardar_datos_motivo_calificacion.push("Si");  
                                } else {
                                    guardar_datos_motivo_calificacion.push("No");  
                                }
                            }else{
                                guardar_datos_motivo_calificacion.push($('#'+nombres_ids).val());                     
                            }
                        }
                        if((index2+1) % 8 === 0){
                            datos_finales_adiciones_calificacion.push(guardar_datos_motivo_calificacion);
                            guardar_datos_motivo_calificacion = [];
                        }
                    });
                }
            });

            // Validación de id_asignacion_dx para saber si toca actualizar la información
            var id_adicion_dx = $("#id_adicion_dx").val();

            if (id_adicion_dx == "" || id_adicion_dx == undefined) {
                // Registrar Información
                var informacion_formulario = {
                    '_token': token,
                    'ID_Evento': id_evento,
                    'Id_Asignacion': id_asignacion_adicion_dx,
                    'Id_proceso': id_proceso_adicion_dx,
                    'Id_Dto_ATEL': id_dto_atel,
                    'Activo': $("#es_activo").val(),
                    'Tipo_evento': tipo_evento,
                    'motivo_solicitud': $("#motivo_solicitud").val(),
                    'Relacion_documentos': relacion_docs_dto_atel,
                    'Examenes_interconsultas': datos_finales_examenes_interconsultas,
                    'Adicion_motivo_calificacion': datos_finales_adiciones_calificacion,
                    'Otros_relacion_documentos': $("#otros_docs").val(),
                    'Sustentacion_Adicion_Dx': $("#sustentacion_adicion_dx").val(),
                    'Origen': $("#origen_dto_atel").val(),
                };
            } else {
                // Actualizar Información
                var informacion_formulario = {
                    '_token': token,
                    'Id_Adiciones_Dx': id_adicion_dx,
                    'ID_Evento': id_evento,
                    'Id_Asignacion': id_asignacion_adicion_dx,
                    'Id_proceso': id_proceso_adicion_dx,
                    'Id_Dto_ATEL': id_dto_atel,
                    'Activo': $("#es_activo").val(),
                    'Tipo_evento': tipo_evento,
                    'motivo_solicitud': $("#motivo_solicitud").val(),
                    'Relacion_documentos': relacion_docs_dto_atel,
                    'Examenes_interconsultas': datos_finales_examenes_interconsultas,
                    'Adicion_motivo_calificacion': datos_finales_adiciones_calificacion,
                    'Otros_relacion_documentos': $("#otros_docs").val(),
                    'Sustentacion_Adicion_Dx': $("#sustentacion_adicion_dx").val(),
                    'Origen': $("#origen_dto_atel").val(),
                };
            }


            $.ajax({
                type:'POST',
                url:'/GuardaroActualizarInfoAdicionDX',
                data: informacion_formulario,
                success: function(response){
                    if (response.parametro == "agregar_dto_atel") {
                        $("#GuardarAdicionDx").addClass('d-none');
                        $("#ActualizarAdicionDx").addClass('d-none');
                        $("#mostrar_mensaje_agrego_adicion_dx").removeClass('d-none');
                        $(".mensaje_agrego_adicion_dx").append('<strong>'+response.mensaje+'</strong>');
                        setTimeout(() => {
                            $("#mostrar_mensaje_agrego_adicion_dx").addClass('d-none');
                            $(".mensaje_agrego_adicion_dx").empty();
                            location.reload();
                        }, 3000);
                    }
                }
            });
        }

    });
});


/* Función para añadir los controles de cada elemento de cada fila en la tabla Diagnostico motivo de calificación*/
function funciones_elementos_fila_diagnosticos(num_consecutivo) {
    // Inicializacion de select 2
    $("#lista_Cie10_fila_"+num_consecutivo).select2({
        width: '100%',
        placeholder: "Seleccione",
        allowClear: false
    });

    $("#lista_origenCie10_fila_"+num_consecutivo).select2({
        width: '100%',
        placeholder: "Seleccione",
        allowClear: false
    });

    $("#lista_lateralidadCie10_fila_"+num_consecutivo).select2({
        width: '100%',
        placeholder: "Seleccione",
        allowClear: false
    });

    //Carga de datos en los selectores

    let token = $("input[name='_token']").val();
    let datos_CIE10 = {
        '_token': token,
        'parametro' : "listado_CIE10",
    };
    $.ajax({
        type:'POST',
        url:'/cargueListadoSelectoresAdicionDx',
        data: datos_CIE10,
        success:function(data){
            // $("select[id^='lista_Cie10_fila_']").empty();
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $("#lista_Cie10_fila_"+num_consecutivo).append('<option value="'+data[claves[i]]["Id_Cie_diagnostico"]+'">'+data[claves[i]]["CIE10"]+'</option>');
            }
        }
    });

    let datos_Origen_CIE10 = {
        '_token': token,
        'parametro' : "listado_OrigenCIE10",
    };
    $.ajax({
        type:'POST',
        url:'/cargueListadoSelectoresAdicionDx',
        data: datos_Origen_CIE10,
        success:function(data){
            // $("select[id^='lista_origenCie10_fila_']").empty();
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $("#lista_origenCie10_fila_"+num_consecutivo).append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });

    let datos_Lateralidad_CIE10 = {
        '_token': token,
        'parametro' : "listado_LateralidadCIE10",
    };
    $.ajax({
        type:'POST',
        url:'/cargueListadoSelectoresAdicionDx',
        data: datos_Lateralidad_CIE10,
        success:function(data){
            // $("select[id^='lista_origenCie10_fila_']").empty();
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $("#lista_lateralidadCie10_fila_"+num_consecutivo).append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });

    $(document).on('change', '#lista_Cie10_fila_'+num_consecutivo, function() {        
        let seleccion = $(this).val();        
        let datos_Nombre_CIE = {
            '_token': token,
            'parametro' : "listado_NombreCIE10",
            'seleccion': seleccion,
        };    
        $.ajax({
            type:'POST',
            url:'/cargueListadoSelectoresAdicionDx',
            data: datos_Nombre_CIE,
            success:function(data){
                //console.log(data);
                let claves = Object.keys(data);
                //console.log(claves);
                for (let i = 0; i < claves.length; i++) {
                    $("#nombre_cie10_fila_"+num_consecutivo).val(data[claves[i]]["Descripcion_diagnostico"]);
                }
            }
        });
    });
}