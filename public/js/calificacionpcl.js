$(document).ready(function(){

    var idRol = $("#id_rol").val();
    //localStorage.removeItem("#Generar_comunicados");
    //console.log(Generar_comunicadossesion);
    // Inicializacion del select2 de listados  Módulo Calificacion PCL

    $(".modalidad_calificacion").select2({
        placeholder:"Seleccione una opción",
        allowClear:false,
        width: '100%'
    });

    $(".fuente_informacion").select2({
        placeholder:"Seleccione una opción",
        allowClear:false,
        width: '100%'        
    });

    // Inicializacion del select2 modal agregar seguimiento
    $(".causal_seguimiento").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    // Inicializacion del select2 modal generar comunicado

    $(".departamento_destinatario").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".ciudad_destinatario").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".forma_envio").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".forma_envio_act").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });  

    $(".reviso").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".accion").select2({
        width: '100%',
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".profesional").select2({
        width: '100%',
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".causal_devolucion_comite").select2({      
        width: '100%',
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".listado_tipos_documentos").select2({      
        width: '100%',
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".listado_tipos_documentos_guias").select2({      
        width: '100%',
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".enviar").select2({      
        width: '100%',
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".enviar").select2({      
        width: '100%',
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".incumple_primera_cita").select2({      
        width: '100%',
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(".incumple_segunda_cita").select2({      
        width: '100%',
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    // llenado de selectores

    let token = $('input[name=_token]').val();

    /* FUNCIONALIDAD DESCARGA DOCUMENTO */
    $("a[id^='btn_generar_descarga_']").click(function(){
        var id_registro_doc = $(this).data('id_doc_reg_descargar');
        var id_documento = $(this).data('id_documento_descargar');

        var nombre_documento = $("#nombre_documento_descarga_"+id_registro_doc+"_"+id_documento).val();
        var extension_documento = $("#extension_documento_descarga_"+id_registro_doc+"_"+id_documento).val();

        var regex = /IdEvento_(.*?)_IdServicio/;
        var resultado = nombre_documento.match(regex);

        if (resultado) {
            var id_evento = resultado[1];
        } else {
            var id_evento = "";
        }
    
        // Crear un enlace temporal para la descarga
        var enlaceDescarga = document.createElement('a');
        enlaceDescarga.href = '/descargar-archivo/'+nombre_documento+'.'+extension_documento+'/'+id_evento;
        enlaceDescarga.target = '_self'; // Abrir en una nueva ventana/tab
        enlaceDescarga.style.display = 'none';
        document.body.appendChild(enlaceDescarga);
    
        // Simular clic en el enlace para iniciar la descarga
        enlaceDescarga.click();
    
        // Eliminar el enlace después de la descarga
        setTimeout(function() {
            document.body.removeChild(enlaceDescarga);
        }, 1000);
    });

    //Listado de Modalidad calificacion PCL

    let datos_lista_modalidad_calificacion = {
        '_token': token,
        'parametro':"lista_modalidad_calificacion_pcl"
    };

    $.ajax({
        type:'POST',
        url:'/selectoresModuloCalificacionPCL',
        data: datos_lista_modalidad_calificacion,
        success:function(data){
            //console.log(data);
            let NombremodalidadCalificacionPcl = $('select[name=modalidad_calificacion]').val();
            let modalidadCalificacionPcl = Object.keys(data);
            for (let i = 0; i < modalidadCalificacionPcl.length; i++) {
                if (data[modalidadCalificacionPcl[i]]['Id_Parametro'] != NombremodalidadCalificacionPcl) {                    
                    $('#modalidad_calificacion').append('<option value="'+data[modalidadCalificacionPcl[i]]['Id_Parametro']+'">'+data[modalidadCalificacionPcl[i]]['Nombre_parametro']+'</option>');
                }
            }
        }
    });

    //Listado de fuente de informacion calificacion PCL    
    let datos_lista_fuente_informacion = {
        '_token': token,
        'parametro':"lista_fuente_informacion",        
    };
    
    $.ajax({
        type:'POST',
        url:'/selectoresModuloCalificacionPCL',
        data: datos_lista_fuente_informacion,
        success:function(data){
            //console.log(data);
            let fuenteInformacionCalificacionPcl = $('select[name=fuente_informacion]').val();
            let fuenteInfoCalificacionPcl = Object.keys(data);
            for (let i = 0; i < fuenteInfoCalificacionPcl.length; i++) {
                if (data[fuenteInfoCalificacionPcl[i]]['Id_Parametro'] != fuenteInformacionCalificacionPcl) {                    
                    $('#fuente_informacion').append('<option value="'+data[fuenteInfoCalificacionPcl[i]]['Id_Parametro']+'">'+data[fuenteInfoCalificacionPcl[i]]['Nombre_parametro']+'</option>');
                }
            }
        }
    });

    // Listado de agregar seguimiento

    let datos_lista_causal_seguimiento = {
        '_token':token,        
        'parametro':"lista_causal_seguimiento_pcl"
    }

    $.ajax({
        type:'POST',
        url:'/selectoresModuloCalificacionPCL',
        data:datos_lista_causal_seguimiento,
        success:function(data){
            //console.log(data);
            let NombreCausalSeguimiento = $('select[name=causal_seguimiento]').val();
            let causalSeguimientoPCl = Object.keys(data);
            for (let i = 0; i < causalSeguimientoPCl.length; i++) {
                if (data[causalSeguimientoPCl[i]]['Id_causal'] != NombreCausalSeguimiento) {
                    $('#causal_seguimiento').append('<option value"'+data[causalSeguimientoPCl[i]]['Id_causal']+'">'+data[causalSeguimientoPCl[i]]['Nombre_causal']+'</option>');
                }                
            }
        }
    });

    // Listado de forma de envio de generar comunicado

    let datos_lista_forma_envio = {
        '_token':token,        
        'parametro':"lista_forma_envio"
    }

    $.ajax({
        type:'POST',
        url:'/selectoresModuloCalificacionPCL',
        data:datos_lista_forma_envio,
        success:function(data){
            //console.log(data);
            let NobreFormaEnvio = $('select[name=forma_envio]').val();
            let formaenviogenerarcomunicado = Object.keys(data);
            for (let i = 0; i < formaenviogenerarcomunicado.length; i++) {
                if (data[formaenviogenerarcomunicado[i]]['Id_Parametro'] != NobreFormaEnvio) {
                    $('#forma_envio').append('<option value="'+data[formaenviogenerarcomunicado[i]]['Id_Parametro']+'">'+data[formaenviogenerarcomunicado[i]]['Nombre_parametro']+'</option>');
                }                
            }
        }
    });

    var Id_asignacion_pro = $('#newId_asignacion').val();
    var Id_proceso_actual = $('#Id_proceso').val();

    //Listado de causal de devolucion comite calificacion PCL    
    
    let datos_lista_causal_devolucion_comite = {
        '_token': token,
        'parametro':"lista_causal_devo_comite",
        'Id_asignacion_pro':Id_asignacion_pro,
        'Id_proceso_actual':Id_proceso_actual
    };
    
    $.ajax({
        type:'POST',
        url:'/selectoresModuloCalificacionPCL',
        data:datos_lista_causal_devolucion_comite,
        success:function(data){
            //console.log(data);
            let idcausal_devolucion_comite= $('select[name=causal_devolucion_comite]').val();
            let causal_devolucion_comitepcl = Object.keys(data);
            for (let i = 0; i < causal_devolucion_comitepcl.length; i++) {
                if (data[causal_devolucion_comitepcl[i]]['Id_causal_devo'] != idcausal_devolucion_comite) {
                    $('#causal_devolucion_comite').append('<option value="'+data[causal_devolucion_comitepcl[i]]['Id_causal_devo']+'">'+data[causal_devolucion_comitepcl[i]]['Causal_devolucion']+'</option>');
                }                
            }
        }
    });

    /* LLenamos el selector de Causal de incumplimiento 1ra cita */
    let datos_lista_causal_incumple_primera_cita = {
        '_token': token,
        'parametro':"lista_incumple_primera_cita"
    };

    $.ajax({
        type:'POST',
        url:'/selectoresModuloCalificacionPCL',
        data: datos_lista_causal_incumple_primera_cita,
        success:function(data){
            // console.log(data);
            $('#incumple_primera_cita').append('<option value=""></option>');
            let bd_id_incumple_pri_cita = $('#bd_id_incumple_pri_cita').val();
            let incumple_primera_cita = Object.keys(data);
            for (let i = 0; i < incumple_primera_cita.length; i++) {
                if (data[incumple_primera_cita[i]]['Id_Parametro'] == bd_id_incumple_pri_cita) {                    
                    $('#incumple_primera_cita').append('<option value="'+data[incumple_primera_cita[i]]['Id_Parametro']+'" selected>'+data[incumple_primera_cita[i]]['Nombre_parametro']+'</option>');
                }else{
                    $('#incumple_primera_cita').append('<option value="'+data[incumple_primera_cita[i]]['Id_Parametro']+'">'+data[incumple_primera_cita[i]]['Nombre_parametro']+'</option>');
                }
            }
        }
    });

    /* LLenamos el selector de Causal de incumplimiento 2da cita */
    let datos_lista_causal_incumple_segunda_cita = {
        '_token': token,
        'parametro':"lista_incumple_segunda_cita"
    };

    $.ajax({
        type:'POST',
        url:'/selectoresModuloCalificacionPCL',
        data: datos_lista_causal_incumple_segunda_cita,
        success:function(data){
            // console.log(data);
            $('#incumple_segunda_cita').append('<option value=""></option>');
            let bd_id_incumple_segunda_cita = $('#bd_id_incumple_segunda_cita').val();
            let incumple_segunda_cita = Object.keys(data);
            for (let i = 0; i < incumple_segunda_cita.length; i++) {
                if (data[incumple_segunda_cita[i]]['Id_Parametro'] == bd_id_incumple_segunda_cita) {                    
                    $('#incumple_segunda_cita').append('<option value="'+data[incumple_segunda_cita[i]]['Id_Parametro']+'" selected>'+data[incumple_segunda_cita[i]]['Nombre_parametro']+'</option>');
                }else{
                    $('#incumple_segunda_cita').append('<option value="'+data[incumple_segunda_cita[i]]['Id_Parametro']+'">'+data[incumple_segunda_cita[i]]['Nombre_parametro']+'</option>');
                }
            }
        }
    });

    // LISTADO DE ACCIONES 
    var datos_listado_accion = {
        '_token': token,
        'parametro' : "listado_accion",
        'Id_proceso' : $("#Id_proceso").val(),
        'Id_servicio': $("#Id_servicio").val(),
        'nro_evento': $("#newId_evento").val(),
        'Id_asignacion': $("#newId_asignacion").val()
    };
    
    $.ajax({
        type: 'POST',
        url: 'selectoresModuloCalificacionPCL',
        data: datos_listado_accion,
        success:function(data){
            if (data.length > 0) {
                $("#accion").empty();
                $("#accion").append('<option></option>');
                let claves = Object.keys(data);
                for (let i = 0; i < claves.length; i++) {
                    // if (data[claves[i]]["Id_Accion"] == $("#bd_id_accion").val()) {
                    //     $("#accion").append('<option value="'+data[claves[i]]["Id_Accion"]+'" selected>'+data[claves[i]]["Nombre_accion"]+'</option>');
                    // } else {
                        $("#accion").append('<option value="'+data[claves[i]]["Id_Accion"]+'">'+data[claves[i]]["Nombre_accion"]+'</option>');
                    // }
                }
                
                $(".no_ejecutar_parametrica_modulo_principal").addClass('d-none');
                $("#Edicion").removeClass('d-none');
            }else{
                $("#accion").empty();
                $("#accion").append('<option></option>');

                $(".no_ejecutar_parametrica_modulo_principal").removeClass('d-none');
                $("#Edicion").addClass('d-none');
            }
        }
    });

    // autoseleccion del estado de facturacion y cargue de listado de profesionales dependiendo de la accion cuando la pag carga
    var accion_cargada = $("#bd_id_accion").val();
    if (accion_cargada != '') {
        let datos_ejecutar_parametrica_mod_principal = {
            '_token': token,
            'parametro': "validarSiModPrincipal",
            'Id_proceso': $("#Id_proceso").val(),
            'Id_servicio': $("#Id_servicio").val(),
            'Id_accion': accion_cargada,
            'nro_evento': $("#newId_evento").val()
        };

        $.ajax({
            type:'POST',
            url:'/validacionParametricaEnSi',
            data: datos_ejecutar_parametrica_mod_principal,
            success:function(data) {
                if(data.length > 0){
                    if (data[0]["Modulo_principal"] !== "Si") {
                        $(".no_ejecutar_parametrica_modulo_principal").removeClass('d-none');
                        $("#Edicion").addClass('d-none');
                    } else {
                        $(".no_ejecutar_parametrica_modulo_principal").addClass('d-none');
                        $("#Edicion").removeClass('d-none');

                        // llenado del input Estado de Facturación
                        $("#estado_facturacion").val(data[0]["Estado_facturacion"]);
                    }
                }
            
            }
        });

        let datos_lista_profesional={
            '_token':token,
            'parametro':"lista_profesional_accion",
            'nro_evento': $("#newId_evento").val(),
            'Id_proceso' : Id_proceso_actual,
            'Id_servicio': $("#Id_servicio").val(),
            'Id_accion': accion_cargada,
        }
    
        $.ajax({
            type:'POST',
            url:'/selectoresModuloCalificacionPCL',
            data: datos_lista_profesional,
            success:function (data) {
                //$('#profesional').empty();
                $('#profesional').append('<option value="" >Seleccione</option>');
                let id_profesional= $('select[name=profesional]').val();
                let profecionalpcl = Object.keys(data.info_listado_profesionales);
                for (let i = 0; i < profecionalpcl.length; i++) {
                    if (data.info_listado_profesionales[profecionalpcl[i]]['id'] != id_profesional) {
                        if (data.info_listado_profesionales[profecionalpcl[i]]['id'] == data.Profesional_asignado) {
                            $('#profesional').append('<option value="'+data.info_listado_profesionales[profecionalpcl[i]]['id']+'" >'+data.info_listado_profesionales[profecionalpcl[i]]['name']+'</option>')                    
                        }else{
                            $('#profesional').append('<option value="'+data.info_listado_profesionales[profecionalpcl[i]]['id']+'">'+data.info_listado_profesionales[profecionalpcl[i]]['name']+'</option>')                    
                        }
                    }
                }
            }
        });

        //Selector enviara, seccion 'Accion a realizar'
        let datos_bandeja_destino = {
            '_token':token,
            'parametro':"lista_bandejas_destino",
            'Id_proceso' : Id_proceso_actual,
            'Id_cliente' : $("#cliente").data('id'),
            'Id_servicio': $("#Id_servicio").val(),
            'Id_accion': accion_cargada,
        }

        $.ajax({
            type:'POST',
            url:'/selectoresModuloCalificacionPCL',
            data: datos_bandeja_destino,
            success:function (data) {
                $('#enviar').empty();
                $('#enviar').append(`<option value="${data.bd_destino}" selected>${data.Nombre_proceso}</option>`);
            }
        });
        
    }

    $("#accion").change(async function(){
        //VALIDACIÓN PBS090 ITEM 6
        let consultaGuardado = await consultaGuardadoSubmodulo(
            $("#newId_evento").val(),
            $('#newId_asignacion').val(),
            $("#Id_proceso").val(),
            $("#Id_servicio").val()
        );
        if(!consultaGuardado && ($(this).val() == 25 || $(this).val() == 27)){
            $('#Edicion').prop('disabled',true);
            $('.grupo_botones').addClass('d-none');
            alertas_informativas(
                'Verificar pronunciamiento ante la calificación',
                'Recuerde que antes de ejecutar esta acción debe gestionar y guardar el Pronunciamiento.',
                'Por favor valide nuevamente.', 
                true, 
                5000,
                false,
                null
            )
        }else{
            $('#Edicion').prop('disabled',false);
            $('.grupo_botones').removeClass('d-none');
        }
        //VALIDACIÓN PBS090 ITEM 2
        let consultaVisado = await consultaVisadoSubmodulo(
            $("#newId_evento").val(),
            $('#newId_asignacion').val(),
            $("#Id_proceso").val(),
            $("#Id_servicio").val()
        );
        if(!consultaVisado && ($(this).val() == 2 || $(this).val() == 18 || $(this).val() == 19 || $(this).val() == 20)){
            $('#Edicion').prop('disabled',true);
            $('.grupo_botones').addClass('d-none');
            alertas_informativas(
                'Verificar comité interdisciplinario',
                'Recuerde que antes de aprobar la calificación debe realizar el visado de la misma.',
                'Por favor valide nuevamente.',
                true,
                5000,
                false,
                null
            )
        }else{
            $('#Edicion').prop('disabled',false);
            $('.grupo_botones').removeClass('d-none');
        }
        //VALIDACIÓN PBS090 ITEM 3
        if($(this).val() == 45 || $(this).val() == 50){
            alertas_informativas(
                'Validar nueva fecha de radicación',
                'Recuerde actualizar la fecha de radicación en el campo Nueva fecha de radicación.',
                'Si ya la actualizó o no lo requiere, por favor omita este mensaje.', 
                true, 
                5000,
                false,
                null
            )
        }

        /* validar parametrica */
        let datos_ejecutar_parametrica_mod_principal = {
            '_token': token,
            'parametro': "validarSiModPrincipal",
            'Id_proceso': $("#Id_proceso").val(),
            'Id_servicio': $("#Id_servicio").val(),
            'Id_accion': $(this).val(),
            'nro_evento': $("#newId_evento").val()
        };

        $.ajax({
            type:'POST',
            url:'/validacionParametricaEnSi',
            data: datos_ejecutar_parametrica_mod_principal,
            success:function(data) {
                if(data.length > 0){
                    if (data[0]["Modulo_principal"] !== "Si") {
                        $(".no_ejecutar_parametrica_modulo_principal").removeClass('d-none');
                        $("#Edicion").addClass('d-none');
                    } else {
                        $(".no_ejecutar_parametrica_modulo_principal").addClass('d-none');
                        $("#Edicion").removeClass('d-none');

                        // llenado del input Estado de Facturación
                        $("#estado_facturacion").val(data[0]["Estado_facturacion"]);
                        $("#estado_firmeza").val(data[0]["Estado_Firmeza"]);
                    }
                }
            
            }
        });

        /* validar lista profesionales */
        let datos_lista_profesional={
            '_token':token,
            'parametro':"lista_profesional_accion",
            'nro_evento': $("#newId_evento").val(),
            'Id_proceso' : Id_proceso_actual,
            'Id_servicio': $("#Id_servicio").val(),
            'Id_accion': $(this).val(),
        }
    
        $.ajax({
            type:'POST',
            url:'/selectoresModuloCalificacionPCL',
            data: datos_lista_profesional,
            success:function (data) {
                $('#profesional').empty();
                $('#profesional').append('<option value="" selected>Seleccione</option>');
                let id_profesional= $('select[name=profesional]').val();
                let profecionalpcl = Object.keys(data.info_listado_profesionales);
                for (let i = 0; i < profecionalpcl.length; i++) {
                    if (data.info_listado_profesionales[profecionalpcl[i]]['id'] != id_profesional) {
                        if (data.info_listado_profesionales[profecionalpcl[i]]['id'] == data.Profesional_asignado) {
                            $('#profesional').append('<option value="'+data.info_listado_profesionales[profecionalpcl[i]]['id']+'" selected>'+data.info_listado_profesionales[profecionalpcl[i]]['name']+'</option>')                    
                        }else{
                            $('#profesional').append('<option value="'+data.info_listado_profesionales[profecionalpcl[i]]['id']+'">'+data.info_listado_profesionales[profecionalpcl[i]]['name']+'</option>')                    
                        }
                    }
                }
            }
        });

        //Selector enviara, seccion 'Accion a realizar'
        let datos_bandeja_destino = {
            '_token':token,
            'parametro':"lista_bandejas_destino",
            'Id_proceso' : Id_proceso_actual,
            'Id_cliente' : $("#cliente").data('id'),
            'Id_servicio': $("#Id_servicio").val(),
            'Id_accion': $(this).val(),
        }

        $.ajax({
            type:'POST',
            url:'/selectoresModuloCalificacionPCL',
            data: datos_bandeja_destino,
            success:function (data) {
                $('#enviar').empty();
                $('#enviar').append(`<option value="${data.bd_destino}" selected>${data.Nombre_proceso}</option>`);
            }
        });

        //Capturar el ultimo que ejecuto la acción de asignación, cuando seleccionen la acción de devolver asignación PBS090
        if($(this).val() == 15 || $(this).val() == 16){
            data_ult_usuario = {
                '_token':token,
                'id_proceso' : $('#Id_proceso').val(),
                'id_cliente' : $("#cliente").data('id'),
                'id_servicio': $("#Id_servicio").val(),
                'id_evento': $("#newId_evento").val(),
                'id_asignacion':$('#newId_asignacion').val(),
                'id_accion_devolucion': $(this).val()
            };
            let ultimoUsuario = await consultaUltimoUsuarioEjecutarAccion(data_ult_usuario);
            console.log('ultimoUsuario ', ultimoUsuario);
            if(ultimoUsuario[0] && Array.isArray(ultimoUsuario[1])){
                let info_user = ultimoUsuario[1][0];
                $('#profesional option[value="'+info_user['id']+'"]').prop('selected', true);
                $('#profesional').val(info_user['id']).trigger('change');
            }
        }

        /* 
            Seteo fecha de de de cierre dependiendo de las siguientes acciones:
            REPORTAR NO PROCEDE CALIFICACIÓN: id 173
            REPORTAR NO RECALIFICACIÓN: id 149
            NO RATIFICAR PENSIÓN - NOTIFICAR FORMATO E: id 154
        */

        if($(this).val() == 173 || $(this).val() == 149 || $(this).val() == 154) {
            var fecha_con_hora = $("#fecha_accion").val();
            var fecha_sin_hora = fecha_con_hora.substring(0, 10);
            $("#fecha_cierre").val(fecha_sin_hora);
        }

        /* 
            Funcionalidad para dejar los siguientes campos required cuando se ejecute las siguientes acciones:

            Acción: REPORTAR PROGRAMACIÓN 1RA CITA - MÉDICO LABORAL (id 44)
                Campos: Fecha de 1ra cita 
            Acción: REPORTAR INASISTENCIA 1RA CITA - REPROGRAMAR (id 29)
                Campos: Causal de incumplimiento 1ra cita
            Acción: REPROGRAMAR 2DA CITA - MÉDICO LABORAL (id 51)
                Campos: Fecha de 2da cita
            Acción: CERRAR POR INASISTENCIA A CITAS (id 12)
                Campos: Causal de incumplimiento 2da cita
            Cualquier otra opción: Se quitan los required y se oculta la viñeta (*)
        */
        if ($(this).val() == 44) {
            $("#fecha_primera_cita").prop('required', true);
            $(".obligatorio_fecha_pri_cita").removeClass('d-none');

            /* Activacion alerta para indicar sobre la creacion de obligatoriedad de los campos */
            var nombre_accion = $(this).find('option:selected').text();
            var texto_alerta = `Señor usuario(a): La acción seleccionada: <b>${nombre_accion}</b> marcó como obligatorio los campos: <b>Fecha de 1ra cita</b>. 
            Por favor diligéncielos para poder guardar y/o actualizar la información.`;

            Swal.fire({
                title: 'Campos Requeridos',
                html: texto_alerta, // Usa 'html' para interpretar etiquetas HTML
                icon: 'info',
                confirmButtonText: 'Aceptar',
                confirmButtonColor: '#17A2B8',
                willOpen: () => {
                    // Elimina cualquier problema relacionado con el foco
                    document.activeElement.blur();
                }
            });

            $("#incumple_primera_cita").prop('required', false);
            $(".obligatorio_causal_pri_cita").addClass('d-none');
            $("#fecha_segunda_cita").prop('required', false);
            $(".obligatorio_fecha_seg_cita").addClass('d-none');
            $("#incumple_segunda_cita").prop('required', false);
            $(".obligatorio_causal_seg_cita").addClass('d-none');

        }else if($(this).val() == 29){
            $("#incumple_primera_cita").prop('required', true);
            $(".obligatorio_causal_pri_cita").removeClass('d-none');

            /* Activacion alerta para indicar sobre la creacion de obligatoriedad de los campos */
            var nombre_accion = $(this).find('option:selected').text();
            var texto_alerta = `Señor usuario(a): La acción seleccionada: <b>${nombre_accion}</b> marcó como obligatorio los campos: <b>Causal de incumplimiento 1ra cita</b>. 
            Por favor diligéncielos para poder guardar y/o actualizar la información.`;

            Swal.fire({
                title: 'Campos Requeridos',
                html: texto_alerta, // Usa 'html' para interpretar etiquetas HTML
                icon: 'info',
                confirmButtonText: 'Aceptar',
                confirmButtonColor: '#17A2B8',
                willOpen: () => {
                    // Elimina cualquier problema relacionado con el foco
                    document.activeElement.blur();
                }
            });

            $("#fecha_primera_cita").prop('required', false);
            $(".obligatorio_fecha_pri_cita").addClass('d-none');
            $("#fecha_segunda_cita").prop('required', false);
            $(".obligatorio_fecha_seg_cita").addClass('d-none');
            $("#incumple_segunda_cita").prop('required', false);
            $(".obligatorio_causal_seg_cita").addClass('d-none');

        }
        else if($(this).val() == 51){
            $("#fecha_segunda_cita").prop('required', true);
            $(".obligatorio_fecha_seg_cita").removeClass('d-none');

            // $("#fecha_primera_cita").prop('required', false);
            // $("#incumple_primera_cita").prop('required', false);
            // $(".obligatorio_primera_cita").addClass('d-none');

            /* Activacion alerta para indicar sobre la creacion de obligatoriedad de los campos */
            var nombre_accion = $(this).find('option:selected').text();
            var texto_alerta = `Señor usuario(a): La acción seleccionada: <b>${nombre_accion}</b> marcó como obligatorio los campos: <b>Fecha de 2da cita</b>. 
            Por favor diligéncielos para poder guardar y/o actualizar la información.`;

            Swal.fire({
                title: 'Campos Requeridos',
                html: texto_alerta, // Usa 'html' para interpretar etiquetas HTML
                icon: 'info',
                confirmButtonText: 'Aceptar',
                confirmButtonColor: '#17A2B8',
                willOpen: () => {
                    // Elimina cualquier problema relacionado con el foco
                    document.activeElement.blur();
                }
            });

            $("#fecha_primera_cita").prop('required', false);
            $(".obligatorio_fecha_pri_cita").addClass('d-none');
            $("#incumple_primera_cita").prop('required', false);
            $(".obligatorio_causal_pri_cita").addClass('d-none');
            $("#incumple_segunda_cita").prop('required', false);
            $(".obligatorio_causal_seg_cita").addClass('d-none');

        }else if($(this).val() == 12){
            $("#incumple_segunda_cita").prop('required', true);
            $(".obligatorio_causal_seg_cita").removeClass('d-none');

            /* Activacion alerta para indicar sobre la creacion de obligatoriedad de los campos */
            var nombre_accion = $(this).find('option:selected').text();
            var texto_alerta = `Señor usuario(a): La acción seleccionada: <b>${nombre_accion}</b> marcó como obligatorio los campos: <b>Causal de incumplimiento 2da cita</b>. 
            Por favor diligéncielos para poder guardar y/o actualizar la información.`;

            Swal.fire({
                title: 'Campos Requeridos',
                html: texto_alerta, // Usa 'html' para interpretar etiquetas HTML
                icon: 'info',
                confirmButtonText: 'Aceptar',
                confirmButtonColor: '#17A2B8',
                willOpen: () => {
                    // Elimina cualquier problema relacionado con el foco
                    document.activeElement.blur();
                }
            });

            $("#fecha_primera_cita").prop('required', false);
            $(".obligatorio_fecha_pri_cita").addClass('d-none');
            $("#incumple_primera_cita").prop('required', false);
            $(".obligatorio_causal_pri_cita").addClass('d-none');
            $("#fecha_segunda_cita").prop('required', false);
            $(".obligatorio_fecha_seg_cita").addClass('d-none');

        }
        else{
            $("#fecha_primera_cita").prop('required', false);
            $(".obligatorio_fecha_pri_cita").addClass('d-none');
            $("#incumple_primera_cita").prop('required', false);
            $(".obligatorio_causal_pri_cita").addClass('d-none');
            $("#fecha_segunda_cita").prop('required', false);
            $(".obligatorio_fecha_seg_cita").addClass('d-none');
            $("#incumple_segunda_cita").prop('required', false);
            $(".obligatorio_causal_seg_cita").addClass('d-none');

        }

    });

    //Listado de los tipos de documento que pueden subir
    let datos_lista_tipos_documentos = {
        '_token': token,
        'evento': $("#newId_evento").val(),
        'servicio': $("#Id_servicio").val(),
        'parametro':"lista_tipos_docs",
    };

    $.ajax({
        type:'POST',
        url:'/selectoresModuloCalificacionPCL',
        data: datos_lista_tipos_documentos,
        success:function(data) {
            
            let tiposdoc = Object.keys(data);
            for (let i = 0; i < tiposdoc.length; i++) {
                $('#listado_tipos_documentos').append('<option value="'+data[tiposdoc[i]]["Nro_documento"]+'">'+data[tiposdoc[i]]["Nro_documento"]+' - '+data[tiposdoc[i]]["Nombre_documento"]+'</option>');
            }
        }
    });

    // seteo del id, nombre del documento familia, id evento, id servicio
    $("#listado_tipos_documentos").change(function(){
        var id_doc_familia_seleccionado = $(this).val();
        var nombre_doc_familia_seleccionado = $(this).find("option:selected").text().replace(/^\d+\s*-\s*/, '');
        $("#id_doc_familia").val(id_doc_familia_seleccionado);
        $("#nombre_doc_familia").val(nombre_doc_familia_seleccionado);

        var evento = $("#newId_evento").val();
        var servicio = $("#Id_servicio").val();
        $("#id_evento_familia").val(evento);
        $("#id_servicio_familia").val(servicio);
    });

    /* Envío de información del documento familia */
    $("#familia_documentos").submit(function(e){
        e.preventDefault();
        var formData = new FormData($(this)[0]);
        // for (var pair of formData.entries()) {
        //     console.log(pair[0] + ": " + pair[1]);
        // }
    
        $.ajax({
            url: "/cargaDocumentosComplementarios",
            type: "post",
            dataType: "json",
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            success:function(response){
                if (response.parametro == "fallo") {
                    if (response.otro != undefined) {
                        $('#listadodocumento_'+response.otro).val('');
                    }else{
                        $('#doc_subir').val('');
                    }
                    $('.mostrar_fallo_doc_familia').removeClass('d-none');
                    $('.mostrar_fallo_doc_familia').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.mostrar_fallo_doc_familia').addClass('d-none');
                        $('.mostrar_fallo_doc_familia').empty();
                    }, 6000);
                }else if (response.parametro == "exito") {
                    // if(response.otro != undefined){
                    //     $("#estadoDocumentoOtro_"+response.otro).empty();
                    //     $("#estadoDocumentoOtro_"+response.otro).append('<strong class="text-success">Cargado</strong>');
                    //     $('#listadodocumento_'+response.otro).prop("disabled", true);
                    //     $('#CargarDocumento_'+response.otro).prop("disabled", true);
                    //     $('#habilitar_modal_otro_doc').prop("disabled", true);
                    // }else{
                    //     $("#"+cambio_estado).empty();
                    //     $("#"+cambio_estado).append('<strong class="text-success">Cargado</strong>');
                    // }

                    $('.mostrar_exito_doc_familia').removeClass('d-none');
                    $('.mostrar_exito_doc_familia').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.mostrar_exito_doc_familia').addClass('d-none');
                        $('.mostrar_exito_doc_familia').empty();
                    }, 6000);
                }else{}

            }         
        });
    });

    /* Envío de Información para eliminar el documento Complementario */
    $("form[id^='form_eliminar_doc_complementario_']").submit(function(e){
        e.preventDefault();
        var formData = new FormData($(this)[0]);
        // for (var pair of formData.entries()) {
        //     console.log(pair[0] + ": " + pair[1]);
        // }
        $.ajax({
            url: "/eliminarDocumentoComplementario",
            type: "post",
            dataType: "json",
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            success:function(response){
                if (response.parametro == "fallo") {
                    $('.mostrar_fallo').removeClass('d-none');
                    $('.mostrar_fallo').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.mostrar_fallo').addClass('d-none');
                        $('.mostrar_fallo').empty();
                    }, 6000);
                }else if (response.parametro == "exito") {
                    $('.mostrar_exito').removeClass('d-none');
                    $('.mostrar_exito').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.mostrar_exito').addClass('d-none');
                        $('.mostrar_exito').empty();
                    }, 6000);
                }else{}
            }         
        });
    });

    /* INICIO FUNCIONALIDAD DEL CARGUE DE DOCUMENTOS COMPLEMENTARIOS (GUIA) */
    // seteo del id, nombre del documento familia, id evento, id servicio
    $("#CargarDocumento_guias").prop('disabled', true);
    $("#listado_tipos_documentos_guias").change(function(){
        var id_doc_familia_seleccionado = $(this).val();
        var nombre_doc_familia_seleccionado = $(this).find("option:selected").text().replace(/^\d+\s*-\s*/, '');
        $("#id_doc_familia_guias").val(id_doc_familia_seleccionado);
        $("#nombre_doc_familia_guias").val(nombre_doc_familia_seleccionado);

        var evento = $("#newId_evento").val();
        var servicio = $("#Id_servicio").val();
        $("#id_evento_familia_guias").val(evento);
        $("#id_servicio_familia_guias").val(servicio);
        
        if (id_doc_familia_seleccionado != "") {
            $("#CargarDocumento_guias").prop('disabled', false);
        }
    });
    
    /* Envío de información del documento familia */
    $("#CargarDocumento_guias").click(function(){
        console.log("mano");
        let formData = new FormData();
        formData.append('_token', $('input[name=_token]').val());
        formData.append('id_doc_familia', $("#id_doc_familia_guias").val());
        formData.append('nombre_doc_familia', $("#nombre_doc_familia_guias").val());
        formData.append('id_evento_familia', $("#id_evento_familia_guias").val());
        formData.append('id_servicio_familia', $("#id_servicio_familia_guias").val());
        formData.append('doc_subir', $("#doc_subir_guias")[0].files[0]);
    
        $.ajax({
            url: "/cargaDocumentosComplementarios",
            method: 'POST',
            data: formData,
            processData: false, // No procesar los datos automáticamente
            contentType: false, // Establecer contentType en false
            success:function(response){
                if (response.parametro == "fallo") {
                    if (response.otro != undefined) {
                        $('#listadodocumento_'+response.otro).val('');
                    }else{
                        $('#doc_subir_guias').val('');
                    }
                    $('.mostrar_fallo_doc_familia').removeClass('d-none');
                    $('.mostrar_fallo_doc_familia').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.mostrar_fallo_doc_familia').addClass('d-none');
                        $('.mostrar_fallo_doc_familia').empty();
                    }, 6000);
                }else if (response.parametro == "exito") {
                    $('.mostrar_exito_doc_familia').removeClass('d-none');
                    $('.mostrar_exito_doc_familia').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.mostrar_exito_doc_familia').addClass('d-none');
                        $('.mostrar_exito_doc_familia').empty();
                    }, 6000);
                }else{}

            }         
        });
    });

    /* FIN FUNCIONALIDAD DEL CARGUE DE DOCUMENTOS COMPLEMENTARIOS (GUIA) */

    //Se crea el resumable usando Resumable.js, el cual tiene como fin crear los chunks y enviarlos al endpoint('target') especificado 
    let resumable = new Resumable({
        target: '/upload',
        query:{_token:$("input[name='_token']").val()},
        maxFiles: 1,
        fileType: ['pdf','xls','xlsx','doc','docx','jpeg','png','zip'],
        testChunks: false,
        headers: {
            'Accept' : 'application/json'
        },
    });
    /* Obtener el ID del evento a dar clic en cualquier botón de cargue de archivo y asignarlo al input hidden del id evento */
    $("input[id^='listadodocumento_']").click(function(){
        let idobtenido = $('#newId_evento').val();
        let tipoDoc = $(this).data('tipo_documento');
        let idDoc = $(this).data('id_doc');
        $("input[id^='EventoID_']").val(idobtenido);
        if(idDoc === 4 && !tipoDoc){
            //Tomamos el input seleccionado
            let inputFile = $(`#listadodocumento_${idDoc}`)
            //Le asignamos el metodo de entrada de archivo el cual viene de nuestro input
            resumable.assignBrowse(inputFile[0]);
            //Esta función detecta cuando un archivo fue cargado
            resumable.on('fileAdded', function (file) {
                $(`#fileName_${idDoc}`).text(file.fileName);
                resumable.opts.query.EventoID = idobtenido;
                resumable.opts.query.Id_Documento = idDoc;
                resumable.opts.query.Nombre_documento = $(`#Nombre_documento_${idDoc}`).val().replace(/ /g, "_");
                resumable.opts.query.Id_servicio = $(`#Id_servicio_${idDoc}`).val();
                resumable.opts.query.Id_asignacion = $(`#Id_asignacion_${idDoc}`).val();
            });
        }
    });
    //Mostrar modal de progressBar cargue de documentos
    function showProgress() {
        let progress = $('.progress');
        $('#modalProgressBar').show();
        progress.find('.progress-bar').css('width', '0%');
        progress.find('.progress-bar').html('0%');
        progress.find('.progress-bar').removeClass('bg-success');
        progress.show();
    }

    //Actualización progressBar cargue de documentos
    function updateProgress(value) {
        let progress = $('.progress');
        progress.find('.progress-bar').css('width', `${value}%`)
        progress.find('.progress-bar').html(`${value}%`)
    }

    //Errores al cargar un documento en Historia clinica completa
    let errorCargueDocumentosID4 = (error,time=2000) => {
        if ($('.mostrar_fallo').hasClass('d-none')) {
            $('.mostrar_fallo').removeClass('d-none');
            $('.mostrar_fallo').append(`<strong>${error}</strong>`);
            setTimeout(function(){
                $('.mostrar_fallo').addClass('d-none');
                $('.mostrar_fallo').empty();
            }, time);
        }
    }

    /* Envío de Información del Documento a Cargar */
    var fechaActual = new Date().toISOString().slice(0,10);
    $("form[id^='formulario_documento_']").submit(function(e){

        e.preventDefault();
        var formData = new FormData($(this)[0]);
        var id_reg_doc = $(this).data("id_reg_doc");
        var id_doc = $(this).data("id_doc");
        let tipoDoc = $(this).data('tipo_documento');

        var cambio_estado = $(this).parents()[1]['children'][2]["id"];
        var input_documento = $(this).parents()[0]['children'][0][4]["id"];

        //for (var pair of formData.entries()) {
        //   console.log(pair[0]+ ', ' + pair[1]); 
        //}
        if(id_doc === 4 && !tipoDoc){
            //Validación de posibles errores antes de enviar el documento
            if(resumable.opts.query.EventoID === ""){
                errorCargueDocumentosID4('Debe diligenciar primero el formulario para poder cargar este documento.')
            }
            if(resumable.opts.query.Id_servicio === ""){
                errorCargueDocumentosID4('Debe seleccionar un servicio para poder cargar este documento.')
            }
            let file = resumable.files;
            if(resumable.files.length > 0){
                if(file[0].size > 1000000000){
                    return errorCargueDocumentosID4('El tamaño máximo permitido para cargar en este documento es de 1Gb.');
                }
                showProgress();
                resumable.upload();
            }
            else{
                errorCargueDocumentosID4('Debe cargar este documento para poder guardarlo.');
            }

            resumable.on('fileProgress', function (file) { // trigger when file progress update
                updateProgress(Math.floor(file.progress() * 100));
            });

            resumable.on('fileSuccess', function (file, response) { // trigger when file upload complete
                response = JSON.parse(response)
                if (response.parametro == "exito") {
                    $("#fecha_cargue_documento_"+id_reg_doc+"_"+id_doc).val(fechaActual);
                    $("#"+cambio_estado).empty();
                    $("#"+cambio_estado).append('<strong class="text-success">Cargado</strong>');
                    $('.mostrar_exito').removeClass('d-none');
                    $('.mostrar_exito').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.mostrar_exito').addClass('d-none');
                        $('.mostrar_exito').empty();
                    }, 6000);
                }
                setTimeout(() => {
                    $('#modalProgressBar').hide();
                }, 500);
            });

            resumable.on('fileError', function (file, response) { // trigger when there is any error
                alert('file uploading error.')
            });
        }
        else{
            // Enviamos los datos para validar y guardar el docmuento correspondiente
            $.ajax({
                url: "/cargarDocumentos",
                type: "post",
                dataType: "json",
                data: formData,
                cache: false,
                contentType: false,
                processData: false  ,
                success:function(response){
                    // console.log(response);
                    if (response.parametro == "fallo") {
                        if (response.otro != undefined) {
                            $('#listadodocumento_'+response.otro).val('');
                        }else{
                            $('#'+input_documento).val('');
                        }
                        $('.mostrar_fallo').removeClass('d-none');
                        $('.mostrar_fallo').append('<strong>'+response.mensaje+'</strong>');
                        setTimeout(function(){
                            $('.mostrar_fallo').addClass('d-none');
                            $('.mostrar_fallo').empty();
                        }, 6000);
                    }else if (response.parametro == "exito") {
                        $("#fecha_cargue_documento_"+id_reg_doc+"_"+id_doc).val(fechaActual);
                        if(response.otro != undefined){
                            $("#estadoDocumentoOtro_"+response.otro).empty();
                            $("#estadoDocumentoOtro_"+response.otro).append('<strong class="text-success">Cargado</strong>');
                            $('#listadodocumento_'+response.otro).prop("disabled", true);
                            $('#CargarDocumento_'+response.otro).prop("disabled", true);
                            $('#habilitar_modal_otro_doc').prop("disabled", true);
                        }else{
                            $("#"+cambio_estado).empty();
                            $("#"+cambio_estado).append('<strong class="text-success">Cargado</strong>');
                        }
                        $('.mostrar_exito').removeClass('d-none');
                        $('.mostrar_exito').append('<strong>'+response.mensaje+'</strong>');
                        setTimeout(function(){
                            $('.mostrar_exito').addClass('d-none');
                            $('.mostrar_exito').empty();
                        }, 6000);
                    }else{}
                    

                }         
            });
        }
    }); 

    // llenado del formulario para la captura de datos del modulo de calificacion Pcl

    var accion_realizarinput = $('#bd_id_accion').val();

    if (accion_realizarinput == 52 || accion_realizarinput == 98 || accion_realizarinput == 99) {
        $('#div_causal_devolucion_comite').removeClass('d-none');        
    }

    var accion_realizarselect = $('#accion');
    accion_realizarselect.change(function() {
        var valoraccion_realizarselect = $(this).val();
        if (valoraccion_realizarselect == 52 || valoraccion_realizarselect == 98 || valoraccion_realizarselect == 99) {
            $('#div_causal_devolucion_comite').removeClass('d-none');
        } else {
            $('#div_causal_devolucion_comite').addClass('d-none');            
        }  
    });

    // Funcion para que permitirá que el usuario seleccione cualquier hora a partir de la 
    //fecha actual, sin restricciones de hora, minutos o segundos específicos,
    //pero que la fecha no sea inferior a al actual

    var Fecha_alerta_capturada = $('#fecha_alerta');
    var hoyactual = new Date();
    var diaactual = hoyactual.getDate();
    var mesactual = hoyactual.getMonth() + 1; // Los meses empiezan en 0
    var anioactual = hoyactual.getFullYear();
    // Añadir un cero al día y al mes si son menores de 10
    if(diaactual < 10) {
        diaactual = '0' + diaactual;
    }
    if(mesactual < 10) {
        mesactual = '0' + mesactual;
    }
    var fechaActual_alerta = anioactual + '-' + mesactual + '-' + diaactual;
    Fecha_alerta_capturada.change(function() {
        var valor_Fecha_alerta_capturada = $(this).val(); 
        // Se saca solo la fecha de la F_alerta_capturada
        var F_alerta_capturada = valor_Fecha_alerta_capturada.split('T')[0];
        if (F_alerta_capturada == ''){
            $('#Edicion').prop('disabled', false)
            $('#alerta_fecha_alerta').addClass('d-none');
        }else if (F_alerta_capturada < fechaActual_alerta) {
            $('#Edicion').prop('disabled', true)
            $('#alerta_fecha_alerta').removeClass('d-none');
        }else if (F_alerta_capturada >= fechaActual_alerta){
            $('#Edicion').prop('disabled', false)
            $('#alerta_fecha_alerta').addClass('d-none');
        }
    });
    // console.log(Fecha_alerta_capturada.val());
    if (Fecha_alerta_capturada.val() == '') {
        // console.log('if');
        $('#Edicion').prop('disabled', false)
        $('#alerta_fecha_alerta').addClass('d-none');
    }else if (Fecha_alerta_capturada.val() < fechaActual_alerta){
        // console.log('else');
        $('#Edicion').prop('disabled', true) 
        $('#alerta_fecha_alerta').removeClass('d-none');
    }

    var newId_evento = $('#newId_evento').val();
    var newId_asignacion = $('#newId_asignacion').val();    
    //console.log(newId_evento);
    $('#form_calificacionPcl').submit(function (e) {
        e.preventDefault();  
        // Deshabilitar elementos mientras se realiza la petición        
        document.querySelector("#Edicion").disabled = true;
        // document.querySelector("#Borrar").disabled = true;

        // Obtener el archivo seleccionado
        var archivo = $('#cargue_documentos')[0].files[0];

        // Crear un objeto FormData para enviar el archivo
        var formData = new FormData($('form')[0]);
        formData.append('cargue_documentos', archivo);
        // Agregar otros datos al formData
        formData.append('token', $('input[name=_token]').val());
        formData.append('newId_evento', $('#newId_evento').val());
        formData.append('newId_asignacion', $('#newId_asignacion').val());
        formData.append('Id_proceso', $('#Id_proceso').val());
        formData.append('Id_servicio', $("#Id_servicio").val());
        formData.append('modalidad_calificacion', $('#modalidad_calificacion').val());
        formData.append('fecha_devolucion', $('#fecha_devolucion').val());   
        formData.append('fuente_informacion', $('#fuente_informacion').val());
        formData.append('nueva_fecha_radicacion', $('#nueva_fecha_radicacion').val());
        formData.append('fecha_primera_cita', $('#fecha_primera_cita').val());
        formData.append('incumple_primera_cita', $('#incumple_primera_cita').val());
        formData.append('fecha_segunda_cita', $('#fecha_segunda_cita').val());
        formData.append('incumple_segunda_cita', $('#incumple_segunda_cita').val());
        formData.append('accion', $('#accion').val());
        formData.append('fecha_alerta', $('#fecha_alerta').val());
        formData.append('enviar', $('#enviar').val());
        formData.append('estado_facturacion', $('#estado_facturacion').val());
        formData.append('profesional', $('#profesional').val());
        formData.append('causal_devolucion_comite', $('#causal_devolucion_comite').val());
        formData.append('fecha_cierre', $('#fecha_cierre').val());
        formData.append('fecha_asignacion_calificacion',$('#fecha_asignacion_calificacion').val()),
        formData.append('fecha_calificacion',$('#fecha_calificacion').val()),
        formData.append('descripcion_accion', $('#descripcion_accion').val());
        formData.append('f_acta_firmeza', $('#f_acta_firmeza').val());
        formData.append('banderaguardar',$('#bandera_accion_guardar_actualizar').val());        

        $.ajax({
            type:'POST',
            url:'/registrarCalificacionPCL',
            data: formData,
            processData: false,
            contentType: false,
            success:function(response){
                if (response.parametro == 'agregarCalificacionPcl') {
                    $('.alerta_calificacion').removeClass('d-none');
                    $("#alerta_accion_ejecutando").addClass('d-none');
                    if (response.parametro_1 == "guardo") {
                        $('.alerta_calificacion').append('<strong>'+response.mensaje_1+' Y '+response.mensaje_2+'</strong>');
                    } else {
                        $('.alerta_calificacion').append('<strong>'+response.mensaje+' Y '+response.mensaje_2+'</strong>');
                    }
                    setTimeout(function(){
                        $('.alerta_calificacion').addClass('d-none');
                        $('.alerta_calificacion').empty(); 
                        location.reload();                      
                    }, 5000);
                }                
            }
        })        
        // location.reload();
    });

    // llenado del formulario para la captura de la modal de Agregar Seguimiento

    $('#form_agregar_seguimientoPcl').submit(function (e) {
        e.preventDefault(); 

        document.querySelector("#Guardar_seguimientos").disabled = true;  

        var fecha_seguimiento = $('#fecha_seguimiento').val();
        var causal_seguimiento = $('#causal_seguimiento').val();
        var descripcion_seguimiento = $('#descripcion_seguimiento').val();
        var newId_evento = $('#newId_evento').val();
        var newId_asignacion = $('#newId_asignacion').val();
        var Id_proceso = $('#Id_proceso').val();

        let token = $('input[name=_token]').val();
        
        var datos_agregarSeguimiento = {
            '_token': token,
            'newId_evento': newId_evento,
            'newId_asignacion': newId_asignacion,
            'Id_proceso': Id_proceso,
            'fecha_seguimiento': fecha_seguimiento,
            'causal_seguimiento': causal_seguimiento,
            'descripcion_seguimiento': descripcion_seguimiento,
        }

        $.ajax({
            type:'POST',
            url:'/registrarCausalSeguimiento',
            data: datos_agregarSeguimiento,
            success:function(response){
                if (response.parametro == 'agregar_seguimiento') {
                                     
                    $('.alerta_seguimiento').removeClass('d-none');
                    $('.alerta_seguimiento').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.alerta_seguimiento').addClass('d-none');
                        $('.alerta_seguimiento').empty();
                        $("#Guardar_seguimientos").removeClass('d-none');
                                             
                    }, 3000);
                }
            }
        })
        localStorage.setItem("#Guardar_seguimientos", true);
        location.reload();
    }) 
    // Abrir modal de agregar seguimiento despues de guardar 
    if (localStorage.getItem("#Guardar_seguimientos")) {
        // Simular el clic en la etiqueta a después de recargar la página
        localStorage.removeItem("#Guardar_seguimientos");
        document.querySelector("#clicGuardado").click();
    }
    let selectores_notificacion = {
        '_token': $('input[name=_token]').val(),
        'parametro': 'EstadosNotificaion'
    }

    let opciones_Notificacion = [];

    $.ajax({
        type: 'POST',
        url: '/cargarselectores',
        data: selectores_notificacion,
        success: function (data) {
            $.each(data, function (index, item) {
                //Establecemos el color que tendra le texto de cada opcion segun corresponda
                let color = (()=>{
                    switch(item.Nombre_parametro){
                        case 'Pendiente':
                            return '#000000'; //negro
                            break;
                        case 'No notificar':
                            return '#CBCBCB'; //Gris
                            break;
                        case 'Devuelto':
                            return '#E70000'; //Rojo
                            break;
                        case 'Notificado efectivamente':
                            return '#00E738'; //Verde
                            break;
                        case 'Notificado parcialmente':
                            return '#00ACE7'; //Azul
                            break;
                    }
                })();
                
                /**@var opciones_Notificacion Corresponde a las propiedades del elemento */
                opciones_Notificacion.push({
                    opciones: `<option value="${item.Id_Parametro}">${item.Nombre_parametro}</option>`,
                    id:item.Id_Parametro,
                    texto: item.Nombre_parametro,
                    color: color
                });
            });

        },
    });

    // Captura de data para la tabla de Comunicados
    // data de la modal de agregar comunicados

    let datos_comunicados ={
        '_token':token,
        'HistorialComunicadosPcl': "CargarComunicados",
        'newId_evento':newId_evento,
        'newId_asignacion':newId_asignacion,
    }

    $.ajax({
        type:'POST',
        url:'/historialComunicadoPcl',
        data: datos_comunicados,
        success:function(data){
            var comunicadoNradico = '';
            /** @var select2 Config. del select2 */
            let select2 = [];
            for (let i = 0; i < data.hitorialAgregarComunicado.length; i++) { 
                let estado_correspondencia = {}
                let estado_notificacion = data.hitorialAgregarComunicado[i].Estado_Notificacion;
                
                if (data.enviar_notificacion[0].Notificacion == 'Si') {
                    estado_correspondencia ={
                        deshabilitar_selector : data.hitorialAgregarComunicado[i].Estado_correspondencia == '1' ||(estado_notificacion == 359 ||  estado_notificacion == 358) ? false : true,
                        deshabilitar_edicion: data.hitorialAgregarComunicado[i].Estado_correspondencia == '1' ||(estado_notificacion == 359 ||  estado_notificacion == 358) ? '' : 'pointer-events: none; color: gray;',
                        deshabilitar_remplazar: data.hitorialAgregarComunicado[i].Estado_correspondencia == '1' ||(estado_notificacion == 359 ||  estado_notificacion == 358) ? '' : 'pointer-events: none; color: gray;'
                    };
                }

                if (data.hitorialAgregarComunicado[i].N_radicado != '' && data.hitorialAgregarComunicado[i].Tipo_descarga != 'Manual'){
                    let comunicadoNradico = '<div style="display: flex; flex-direction: row; justify-content: space-around; align-items: center">';
                    if (!data.hitorialAgregarComunicado[i].Correspondencia && idRol !== '7') {
                        comunicadoNradico += '<a href="javascript:void(0);" class="text-dark" data-toggle="modal" data-target="#modalcomunicados_" id="EditarComunicado_'+data.hitorialAgregarComunicado[i].Id_Comunicado+'" title="Editar Comunicado"\
                            data-id_comunicado="'+data.hitorialAgregarComunicado[i].Id_Comunicado+'" data-id_evento="'+data.hitorialAgregarComunicado[i].ID_evento+'"\
                            data-id_asignacion="'+data.hitorialAgregarComunicado[i].Id_Asignacion+'" data-id_proceso="'+data.hitorialAgregarComunicado[i].Id_proceso+'"\
                            data-ciudad_comunicaddo="'+data.hitorialAgregarComunicado[i].Ciudad+'" data-fecha_comunicado="'+data.hitorialAgregarComunicado[i].F_comunicado+'"\
                            data-numero_radicado="'+data.hitorialAgregarComunicado[i].N_radicado+'" data-cliente_comunicado="'+data.hitorialAgregarComunicado[i].Cliente+'"\
                            data-nombre_afiliado="'+data.hitorialAgregarComunicado[i].Nombre_afiliado+'" data-tipo_documento="'+data.hitorialAgregarComunicado[i].T_documento+'"\
                            data-numero_identificacion="'+data.hitorialAgregarComunicado[i].N_identificacion+'" data-destinatario_principal="'+data.hitorialAgregarComunicado[i].Destinatario+'"\
                            data-jrci_destinatario="'+data.hitorialAgregarComunicado[i].JRCI_Destinatario+'"\
                            data-nombre_destinatario="'+data.hitorialAgregarComunicado[i].Nombre_destinatario+'" data-niccc_comunicado="'+data.hitorialAgregarComunicado[i].Nit_cc+'"\
                            data-direccion_destinatario="'+data.hitorialAgregarComunicado[i].Direccion_destinatario+'" data-telefono_destinatario="'+data.hitorialAgregarComunicado[i].Telefono_destinatario+'"\
                            data-email_destinatario="'+data.hitorialAgregarComunicado[i].Email_destinatario+'" data-id_departamento="'+data.hitorialAgregarComunicado[i].Id_departamento+'"\
                            data-nombre_departamento="'+data.hitorialAgregarComunicado[i].Nombre_departamento+'" data-id_municipio="'+data.hitorialAgregarComunicado[i].Id_municipio+'"\
                            data-nombre_municipio="'+data.hitorialAgregarComunicado[i].Nombre_municipio+'" data-asunto_comunicado="'+data.hitorialAgregarComunicado[i].Asunto+'"\
                            data-cuerpo_comunicado="'+data.hitorialAgregarComunicado[i].Cuerpo_comunicado+'" data-anexos_comunicados="'+data.hitorialAgregarComunicado[i].Anexos+'"\
                            data-forma_envio_comunicado="'+data.hitorialAgregarComunicado[i].Forma_envio+'" data-nombre_envio_comunicado="'+data.hitorialAgregarComunicado[i].Nombre_forma_envio+'"\
                            data-elaboro_comunicado="'+data.hitorialAgregarComunicado[i].Elaboro+'"\
                            data-reviso_comunicado="'+data.hitorialAgregarComunicado[i].Reviso+'" data-revisonombre_comunicado="'+data.hitorialAgregarComunicado[i].Nombre_lider+'"\
                            data-firmar_comunicado="'+data.hitorialAgregarComunicado[i].Firmar_Comunicado+'"\
                            data-jrci_copia="'+data.hitorialAgregarComunicado[i].JRCI_copia+'"\
                            data-agregar_copia="'+data.hitorialAgregarComunicado[i].Agregar_copia+'" data-tipo_descarga="'+data.hitorialAgregarComunicado[i].Tipo_descarga+'"\
                            data-modulo_creacion="'+data.hitorialAgregarComunicado[i].Modulo_creacion+'" data-reemplazado="'+data.hitorialAgregarComunicado[i].Reemplazado+'" data-nombre_documento="'+data.hitorialAgregarComunicado[i].Nombre_documento + '"\
                            data-numero_siniestro="'+data.hitorialAgregarComunicado[i].N_siniestro+'"\
                            data-ids_destinatario="'+data.hitorialAgregarComunicado[i].Id_Destinatarios+'"><i style="cursor:pointer; display: flex; justify-content: center; align-items:center;" class="fa fa-pen text-info"></i></a>';
                    }
                    comunicadoNradico += '<a href="javascript:void(0);" class="text-dark" id="verDocumento_'+data.hitorialAgregarComunicado[i].Id_Comunicado+'"\
                        title="Descargar Comunicado"\
                        id_comunicado="'+data.hitorialAgregarComunicado[i].Id_Comunicado+'" id_evento="'+data.hitorialAgregarComunicado[i].ID_evento+'"\
                        id_asignacion="'+data.hitorialAgregarComunicado[i].Id_Asignacion+'" id_proceso="'+data.hitorialAgregarComunicado[i].Id_proceso+'"\
                        ciudad_comunicaddo="'+data.hitorialAgregarComunicado[i].Ciudad+'" fecha_comunicado="'+data.hitorialAgregarComunicado[i].F_comunicado+'"\
                        numero_radicado="'+data.hitorialAgregarComunicado[i].N_radicado+'" cliente_comunicado="'+data.hitorialAgregarComunicado[i].Cliente+'"\
                        nombre_afiliado="'+data.hitorialAgregarComunicado[i].Nombre_afiliado+'" tipo_documento="'+data.hitorialAgregarComunicado[i].T_documento+'"\
                        numero_identificacion="'+data.hitorialAgregarComunicado[i].N_identificacion+'" destinatario_principal="'+data.hitorialAgregarComunicado[i].Destinatario+'"\
                        jrci_destinatario="'+data.hitorialAgregarComunicado[i].JRCI_Destinatario+'"\
                        nombre_destinatario="'+data.hitorialAgregarComunicado[i].Nombre_destinatario+'" niccc_comunicado="'+data.hitorialAgregarComunicado[i].Nit_cc+'"\
                        direccion_destinatario="'+data.hitorialAgregarComunicado[i].Direccion_destinatario+'" telefono_destinatario="'+data.hitorialAgregarComunicado[i].Telefono_destinatario+'"\
                        email_destinatario="'+data.hitorialAgregarComunicado[i].Email_destinatario+'" id_departamento="'+data.hitorialAgregarComunicado[i].Id_departamento+'"\
                        nombre_departamento="'+data.hitorialAgregarComunicado[i].Nombre_departamento+'" id_municipio="'+data.hitorialAgregarComunicado[i].Id_municipio+'"\
                        nombre_municipio="'+data.hitorialAgregarComunicado[i].Nombre_municipio+'" asunto_comunicado="'+data.hitorialAgregarComunicado[i].Asunto+'"\
                        cuerpo_comunicado="'+data.hitorialAgregarComunicado[i].Cuerpo_comunicado+'" anexos_comunicados="'+data.hitorialAgregarComunicado[i].Anexos+'"\
                        forma_envio_comunicado="'+data.hitorialAgregarComunicado[i].Forma_envio+'" nombre_envio_comunicado="'+data.hitorialAgregarComunicado[i].Nombre_forma_envio+'"\
                        elaboro_comunicado="'+data.hitorialAgregarComunicado[i].Elaboro+'"\
                        reviso_comunicado="'+data.hitorialAgregarComunicado[i].Reviso+'" revisonombre_comunicado="'+data.hitorialAgregarComunicado[i].Nombre_lider+'"\
                        firmar_comunicado="'+data.hitorialAgregarComunicado[i].Firmar_Comunicado+'"\
                        jrci_copia="'+data.hitorialAgregarComunicado[i].JRCI_copia+'" agregar_copia="'+data.hitorialAgregarComunicado[i].Agregar_copia+'" tipo_descarga="'+data.hitorialAgregarComunicado[i].Tipo_descarga+'"\
                        modulo_creacion="'+data.hitorialAgregarComunicado[i].Modulo_creacion+'" reemplazado="'+data.hitorialAgregarComunicado[i].Reemplazado+'" nombre_documento="'+data.hitorialAgregarComunicado[i].Nombre_documento + '"\
                        numero_siniestro="'+data.hitorialAgregarComunicado[i].N_siniestro+'"\
                        ids_destinatario="'+data.hitorialAgregarComunicado[i].Id_Destinatarios+'"><i style="cursor:pointer; display: flex; justify-content: center; align-items:center;" class="far fa-eye text-info"></i></a>';
                    if(data.hitorialAgregarComunicado[i].Existe && data.hitorialAgregarComunicado[i].Nombre_documento != null && idRol !== '7'){
                        comunicadoNradico += '<a href="javascript:void(0);" id="replace_file" style="'+estado_correspondencia.deshabilitar_remplazar+'" class="text-dark text-md" label="Open Modal" data-toggle="modal" data-target="#modalReemplazarArchivos"\
                            data-id_evento="' + data.hitorialAgregarComunicado[i].ID_evento + '" data-id_comunicado="'+ data.hitorialAgregarComunicado[i].Id_Comunicado + '"\
                            data-numero_radicado="'+ data.hitorialAgregarComunicado[i].N_radicado + '" data-fecha_comunicado="' + data.hitorialAgregarComunicado[i].F_comunicado + '"\
                            data-tipo_descarga="'+ data.hitorialAgregarComunicado[i].Tipo_descarga + '" data-asunto_comunicado="' + data.hitorialAgregarComunicado[i].Asunto + '"\
                            data-id_asignacion="'+ data.hitorialAgregarComunicado[i].Id_Asignacion + '" data-id_proceso="' + data.hitorialAgregarComunicado[i].Id_proceso +'"\
                            data-numero_identificacion="'+data.hitorialAgregarComunicado[i].N_identificacion +'" data-nombre_documento="'+data.hitorialAgregarComunicado[i].Nombre_documento + '"\
                            ><i class="fas fa-sync-alt text-info"></i></a>';
                    }
                    if(idRol !== '7'){
                        comunicadoNradico += '<a href="javascript:void(0);" id="editar_comunicado" data-radicado="'+data.hitorialAgregarComunicado[i].N_radicado+'" style="display: flex; justify-content: center;  '+estado_correspondencia.deshabilitar_edicion+'"><i class="fa fa-sm fa-check text-success"></i></a></div>';
                    }

                    comunicadoNradico += '</div>';
                    data.hitorialAgregarComunicado[i].Editarcomunicado = comunicadoNradico;
                    
                }
                else if(data.hitorialAgregarComunicado[i].N_radicado != '' && data.hitorialAgregarComunicado[i].Tipo_descarga == 'Manual'){
                    comunicadoNradico = '<div style="display: flex; flex-direction: row; justify-content: space-around; align-items: center"><a href="javascript:void(0);" class="text-dark" id="generar_descarga_archivo_'+data.hitorialAgregarComunicado[i].Id_Comunicado+'"\
                    title="Descargar Comunicado"\
                    id_comunicado="'+data.hitorialAgregarComunicado[i].Id_Comunicado+'" id_evento="'+data.hitorialAgregarComunicado[i].ID_evento+'"\
                    id_asignacion="'+data.hitorialAgregarComunicado[i].Id_Asignacion+'" id_proceso="'+data.hitorialAgregarComunicado[i].Id_proceso+'"\
                    ciudad_comunicaddo="'+data.hitorialAgregarComunicado[i].Ciudad+'" fecha_comunicado="'+data.hitorialAgregarComunicado[i].F_comunicado+'"\
                    numero_radicado="'+data.hitorialAgregarComunicado[i].N_radicado+'" cliente_comunicado="'+data.hitorialAgregarComunicado[i].Cliente+'"\
                    nombre_afiliado="'+data.hitorialAgregarComunicado[i].Nombre_afiliado+'" tipo_documento="'+data.hitorialAgregarComunicado[i].T_documento+'"\
                    numero_identificacion="'+data.hitorialAgregarComunicado[i].N_identificacion+'" destinatario_principal="'+data.hitorialAgregarComunicado[i].Destinatario+'"\
                    jrci_destinatario="'+data.hitorialAgregarComunicado[i].JRCI_Destinatario+'"\
                    nombre_destinatario="'+data.hitorialAgregarComunicado[i].Nombre_destinatario+'" niccc_comunicado="'+data.hitorialAgregarComunicado[i].Nit_cc+'"\
                    direccion_destinatario="'+data.hitorialAgregarComunicado[i].Direccion_destinatario+'" telefono_destinatario="'+data.hitorialAgregarComunicado[i].Telefono_destinatario+'"\
                    email_destinatario="'+data.hitorialAgregarComunicado[i].Email_destinatario+'" id_departamento="'+data.hitorialAgregarComunicado[i].Id_departamento+'"\
                    nombre_departamento="'+data.hitorialAgregarComunicado[i].Nombre_departamento+'" id_municipio="'+data.hitorialAgregarComunicado[i].Id_municipio+'"\
                    nombre_municipio="'+data.hitorialAgregarComunicado[i].Nombre_municipio+'" asunto_comunicado="'+data.hitorialAgregarComunicado[i].Asunto+'"\
                    cuerpo_comunicado=\''+data.hitorialAgregarComunicado[i].Cuerpo_comunicado+'\' anexos_comunicados="'+data.hitorialAgregarComunicado[i].Anexos+'"\
                    forma_envio_comunicado="'+data.hitorialAgregarComunicado[i].Forma_envio+'" nombre_envio_comunicado="'+data.hitorialAgregarComunicado[i].Nombre_forma_envio+'"\
                    elaboro_comunicado="'+data.hitorialAgregarComunicado[i].Elaboro+'"\
                    reviso_comunicado="'+data.hitorialAgregarComunicado[i].Reviso+'" revisonombre_comunicado="'+data.hitorialAgregarComunicado[i].Nombre_lider+'"\
                    firmar_comunicado="'+data.hitorialAgregarComunicado[i].Firmar_Comunicado+'"\
                    jrci_copia="'+data.hitorialAgregarComunicado[i].JRCI_copia+'"\
                    agregar_copia="'+data.hitorialAgregarComunicado[i].Agregar_copia+'"tipo_descarga="'+data.hitorialAgregarComunicado[i].Tipo_descarga+ '"\
                    modulo_creacion="'+data.hitorialAgregarComunicado[i].Modulo_creacion+'" reemplazado="'+data.hitorialAgregarComunicado[i].Reemplazado+'" nombre_documento="'+data.hitorialAgregarComunicado[i].Nombre_documento + '"\
                    ids_destinatario="'+data.hitorialAgregarComunicado[i].Id_Destinatarios+'"><i style="cursor:pointer" id="comunicado_manual_boton" class="far fa-eye text-info"></i></a>';
                    if(data.hitorialAgregarComunicado[i].Existe  && !data.hitorialAgregarComunicado[i].Asunto.includes('Lista_chequeo') && idRol !== '7'){
                        comunicadoNradico += '<a href="javascript:void(0);" id="replace_file" style="'+estado_correspondencia.deshabilitar_remplazar+'" class="text-dark text-md" label="Open Modal" data-toggle="modal" data-target="#modalReemplazarArchivos"\
                            data-id_evento="' + data.hitorialAgregarComunicado[i].ID_evento + '" data-id_comunicado="'+ data.hitorialAgregarComunicado[i].Id_Comunicado + '"\
                            data-numero_radicado="'+ data.hitorialAgregarComunicado[i].N_radicado + '" data-fecha_comunicado="' + data.hitorialAgregarComunicado[i].F_comunicado + '"\
                            data-tipo_descarga="'+ data.hitorialAgregarComunicado[i].Tipo_descarga + '" data-asunto_comunicado="' + data.hitorialAgregarComunicado[i].Asunto + '"\
                            data-id_asignacion="'+ data.hitorialAgregarComunicado[i].Id_Asignacion + '" data-id_proceso="' + data.hitorialAgregarComunicado[i].Id_proceso +'"\
                            data-numero_identificacion="'+data.hitorialAgregarComunicado[i].N_identificacion + '" data-nombre_documento="'+data.hitorialAgregarComunicado[i].Nombre_documento +'"\
                            ><i class="fas fa-sync-alt text-info"></i></a>';
                    }

                    //Accion editar lista de chequeo
                    if(data.hitorialAgregarComunicado[i].Asunto.includes('Lista_chequeo') && idRol !== '7'){
                        comunicadoNradico += '<a href="javascript:void(0);" class="text-dark" data-toggle="modal" data-target="#modalCrearExpediente" title="Editar expediente" id="editarExpediente"><i style="cursor:pointer" class="fa fa-pen text-info"></i></a>';
                    }
                    if(idRol !== '7'){
                        comunicadoNradico += '<a href="javascript:void(0);" id="editar_comunicado" data-radicado="'+data.hitorialAgregarComunicado[i].N_radicado+'" style="display: flex; justify-content: center;  '+estado_correspondencia.deshabilitar_edicion+'"><i class="fa fa-sm fa-check text-success"></i></a></div>';
                    }
                    comunicadoNradico += '</div>';
                    data.hitorialAgregarComunicado[i].Editarcomunicado = comunicadoNradico;
                }
                else{
                    data.hitorialAgregarComunicado[i].Editarcomunicado = "";
                }

                //Obtenemos los datos de los campos 'Destinatarios','Estado_general','Nota' para mostrar en la tabla de comunicados y expedientes
                let info_notificacion = getHistorialNotificacion(data.hitorialAgregarComunicado[i].N_radicado,data.hitorialAgregarComunicado[i].Nota,opciones_Notificacion,data.hitorialAgregarComunicado[i],entidades_conocimiento,false,false,true);
                if (data.enviar_notificacion[0].Notificacion == 'Si') {
                    data.hitorialAgregarComunicado[i].Destinatarios = info_notificacion.Destinatarios;                    
                }
                data.hitorialAgregarComunicado[i].Estado_General = info_notificacion.Estado_General;
                data.hitorialAgregarComunicado[i].Nota = info_notificacion.Nota_Comunicados;

                //Configuracion que se cargara en el select2
                let select2Config = {
                    selector: `#status_notificacion_${data.hitorialAgregarComunicado[i].N_radicado}`,
                    default:  data.hitorialAgregarComunicado[i].Estado_Notificacion, //Opcion a selecionar
                    data: opciones_Notificacion, // Opciones disponibles para seleccionar
                    enable: estado_correspondencia.deshabilitar_selector
                };

                select2.push(select2Config);

            }
            $.each(data.hitorialAgregarComunicado, function(index, value){
                capturar_informacion_comunicados(data.hitorialAgregarComunicado, index, value, data.enviar_notificacion[0].Notificacion)
            });

            select2.forEach(function(item) {
                $(item.selector).select2({
                    placeholder: "Seleccione una opción",
                    allowClear: false,
                    data: item.data,
                    disabled:item.enable,
                    templateResult: function(data){
                        if(data.color != undefined){
                            return $(`<span style="color: ${data.color}">${data.texto}</span>`); //Opciones disponibles
                        }
                    },
                    templateSelection: function(data){
                        if(data.color != undefined){
                            return $(`<span style="color: ${data.color}">${data.texto}</span>`); //Opcion selecionada
                        }
                    }
                }).val(item.default);

                $(item.selector).trigger('change');

        });
        }
    });

    //REEMPLAZAR DOCUMENTO
    const initValueExtension = document.getElementById('extensionInvalidaMensaje')?.textContent;
    $("form[id^='reemplazar_documento']").submit(function(e){
        e.preventDefault();
        if(!$('#cargue_comunicados_modal')[0].files[0]){
            return $(".cargueundocumentoprimeromodal").removeClass('d-none');
        }
        $(".cargueundocumentoprimeromodal").addClass('d-none');
        $(".extensionInvalidaModal").addClass('d-none');
        var archivo = $('#cargue_comunicados_modal')[0].files[0];
        extensionDocCargado = `.${archivo.name.split('.').pop()}`;
        if(comunicado_reemplazar.Tipo_descarga === 'Manual' && extensionDocManual?.includes(extensionDocCargado)){
            var formData = new FormData($('form')[0]);
            formData.append('doc_de_reemplazo', archivo);
            formData.append('token', $('input[name=_token]').val());
            formData.append('id_comunicado', comunicado_reemplazar.Id_Comunicado);
            formData.append('tipo_descarga', comunicado_reemplazar.Tipo_descarga);
            formData.append('id_asignacion', comunicado_reemplazar.Id_Asignacion);
            formData.append('id_proceso', comunicado_reemplazar.Id_proceso);
            formData.append('id_evento', comunicado_reemplazar.ID_evento);
            formData.append('n_radicado', comunicado_reemplazar.N_radicado);
            formData.append('numero_identificacion', comunicado_reemplazar.N_identificacion)
            formData.append('modulo_creacion', 'calificacionPCL');
            formData.append('nombre_documento', archivo.name);
            formData.append('asunto', archivo.name);
            formData.append('nombre_anterior', comunicado_reemplazar.Nombre_documento);
            $.ajax({
                type:'POST',
                url:'/reemplazarDocumento',
                data: formData,
                processData: false,
                contentType: false,
                beforeSend:  function() {
                    $("#cargarComunicadoModal").addClass("descarga-deshabilitada");
                },
                success:function(response){
                    if (response.parametro == 'reemplazar_comunicado') {
                        $('.alerta_externa_comunicado_modal').removeClass('d-none');
                        $('.alerta_externa_comunicado_modal').append('<strong>'+response.mensaje+'</strong>');
                        setTimeout(function(){
                            $('.alerta_externa_comunicado_modal').addClass('d-none');
                            $('.alerta_externa_comunicado_modal').empty();
                            localStorage.setItem("#Generar_comunicados", true);
                            location.reload();
                            $("#modalReemplazarArchivos").modal('hide');
                        }, 1000);
                    }
                },
                complete:function(){
                    $("#cargarComunicadoModal").removeClass("descarga-deshabilitada");
                }
            });
        }
        else if(comunicado_reemplazar.Tipo_descarga !== 'Manual' && extensionDoc.includes(extensionDocCargado)){
            var formData = new FormData($('form')[0]);
            formData.append('doc_de_reemplazo', archivo);
            formData.append('token', $('input[name=_token]').val());
            formData.append('id_comunicado', comunicado_reemplazar.Id_Comunicado);
            formData.append('tipo_descarga', comunicado_reemplazar.Tipo_descarga);
            formData.append('id_asignacion', comunicado_reemplazar.Id_Asignacion);
            formData.append('id_proceso', comunicado_reemplazar.Id_proceso);
            formData.append('id_evento', comunicado_reemplazar.ID_evento);
            formData.append('n_radicado', comunicado_reemplazar.N_radicado);
            formData.append('numero_identificacion', comunicado_reemplazar.N_identificacion)
            formData.append('modulo_creacion', 'calificacionPCL');
            formData.append('nombre_documento', comunicado_reemplazar.Nombre_documento);
            formData.append('asunto', comunicado_reemplazar.Asunto);
            formData.append('nombre_anterior', '');
            $.ajax({
                type:'POST',
                url:'/reemplazarDocumento',
                data: formData,
                processData: false,
                contentType: false,
                beforeSend:  function() {
                    $("#cargarComunicadoModal").addClass("descarga-deshabilitada");
                },
                success:function(response){
                    if (response.parametro == 'reemplazar_comunicado') {
                        $('.alerta_externa_comunicado_modal').removeClass('d-none');
                        $('.alerta_externa_comunicado_modal').append('<strong>'+response.mensaje+'</strong>');
                        setTimeout(function(){
                            $('.alerta_externa_comunicado_modal').addClass('d-none');
                            $('.alerta_externa_comunicado_modal').empty();
                            localStorage.setItem("#Generar_comunicados", true);
                            location.reload();
                            $("#modalReemplazarArchivos").modal('hide');
                        }, 1000);
                    }
                },
                complete:function(){
                    $("#cargarComunicadoModal").removeClass("descarga-deshabilitada");
                }
            });
        }
        else{
            document.getElementById('extensionInvalidaMensaje').textContent = initValueExtension;
            if(comunicado_reemplazar.Tipo_descarga !== 'Manual'){
                if (!document.getElementById('extensionInvalidaMensaje').textContent.includes(extensionDoc)) {
                    document.getElementById('extensionInvalidaMensaje').textContent += extensionDoc;
                }
                return $(".extensionInvalidaModal").removeClass('d-none');
            }
            if (!document.getElementById('extensionInvalidaMensaje').textContent.includes(extensionDocManual)) {
                document.getElementById('extensionInvalidaMensaje').textContent += extensionDocManual;
            }
            return $(".extensionInvalidaModal").removeClass('d-none');
        }
    });

    let comunicado_reemplazar = null;
    $(document).on('click', "[id^='replace_file']", function(){
        $(".cargueundocumentoprimeromodal").addClass('d-none');
        $(".extensionInvalidaModal").addClass('d-none');
        $('#cargue_comunicados_modal').val('');
        data_comunicado = {
            '_token': $('input[name=_token]').val(),
            'id_comunicado': this.getAttribute('data-id_comunicado')
        }
        $.ajax({
            type:'POST',
            url:'/getInfoComunicado',
            data: data_comunicado,
            beforeSend:  function() {
                $("#cargarComunicadoModal").addClass("descarga-deshabilitada");
            },
            success:function(response){
                if(response && response[0]){
                    comunicado_reemplazar = response[0];
                    let nombre_doc = comunicado_reemplazar.Nombre_documento;
                    if(nombre_doc != null && nombre_doc != "null" && comunicado_reemplazar.Tipo_descarga !== 'Manual'){
                        extensionDoc = ['.pdf','.doc','.docx','.xlsx'];//`.${ nombre_doc.split('.').pop()}`;
                        document.getElementById('cargue_comunicados_modal').setAttribute('accept', extensionDoc);
                    }
                    else if(comunicado_reemplazar.Tipo_descarga === 'Manual'){
                        extensionDocManual = ['.pdf','.doc','.docx','.xlsx']
                        document.getElementById('cargue_comunicados_modal').setAttribute('accept', '.pdf, .doc, .docx, .xlsx');
                    }
                }
            },
            complete:function(){
                $("#cargarComunicadoModal").removeClass("descarga-deshabilitada");
            }
        });
    });

    //DataTable Historial de comunicados

    function capturar_informacion_comunicados(response, index, value,enviara) {
        let columns = [
            {"data":"N_radicado"},
            {"data":"Elaboro"},
            {"data":"F_comunicado"},
            { 
                "data": function(row) {
                    if (row.Tipo_descarga === "Documento_PCL") {
                        return "SOL. DOCUMENTOS PCL";
                    }
                    else if(row.Tipo_descarga === "Documento_No_Recalificacion") {
                        return "NO CALIFICACIÓN PCL";
                    }
                    else if(row.Tipo_descarga === 'Desistimiento_PCL'){
                        return 'DESISTIMIENTO PCL';
                    }
                    else if(row.Tipo_descarga === 'Cierre_MMM_PCL'){
                        return 'CIERRE MMM';
                    }
                    else if(row.Tipo_descarga === 'Cierre_Cita_PCL'){
                        return 'CIERRE INASISTENCIA CITA';
                    }
                    else if(row.Tipo_descarga === 'Firmeza_PCL'){
                        return 'FIRMEZA_PCL';
                    }
                    else if(row.Tipo_descarga === 'No_Localizacion'){
                        return 'NO LOCALIZACIÓN';
                    }
                    else if(row.Tipo_descarga === 'Formato_B_Revision_pension'){
                        return 'RATIFICACIÓN PENSIÓN';
                    }
                    else if(row.Tipo_descarga === "Documento_Revision_pension") {
                        return "SOL. DOCUMENTOS REV. PENSIÓN";
                    }
                    else if(row.Tipo_descarga === "Reiteracion_Documento_Revision_pension"){
                        return "REITERACIÓN SOL. DOCUMENTOS REV. PENSIÓN";
                    }
                    else if(row.Tipo_descarga === "Suspension_Mesada_Revision_pension"){
                        return "SUSPENSIÓN MESADA"
                    }
                    else if(row.Tipo_descarga === "Otro_Documento") {
                        return "Otro Documento";
                    }
                    else if(row.Tipo_descarga === 'Manual'){
                        return row.Asunto;
                    }
                    else{
                        return row.Tipo_descarga;
                    }
                }
            },
            {"data": "Estado_General"},
            {"data": "Nota"},
            {"data":"Editarcomunicado"}
        ]
        if (enviara === 'Si') {
            columns.splice(4, 0, {
                "data": function(row) {
                    return row.Destinatarios;
                }
            });
        }
       let listadoComunicados = $('#listado_comunicados_pcl').DataTable({
            scrollY: "30vh", //dos celdas
            orderCellsTop: true,
            fixedHeader: false,
            scrollX: true,
            destroy: true,
            data: response,
            paging: false,
            order: [[0, 'desc']],
            "columns": columns, 
            createdRow: function(row, data, dataIndex) {
                //agregamos el id del comunicado dentro del primer td
                $(row).find('td').eq(0).attr('data-id_comunicado', data.Id_Comunicado);
                // Si "enviara" es "Si", significa que la columna Destinatarios fue agregada
                if (enviara === 'Si') {
                    // La columna de Destinatarios estaría en la posición 4 (después de F_comunicado)
                    $(row).find('td').eq(4).css('white-space', 'normal');
                }
            },           
            "language":{                
                "search": "Buscar",
                "lengthMenu": "Mostrar _MENU_ registros",
                "info": "Mostrando registros _START_ a _END_ de un total de _TOTAL_ registros",
                
                "paginate": {
                    "previous": "Anterior",
                    "next": "Siguiente",
                    "first": "Primero",
                    "last": "Último"
                },
                "zeroRecords": "No se encontraron resultados",
                "emptyTable": "No se encontró información",
                "infoEmpty": "No se encontró información",
            }
        });

        autoAdjustColumns(listadoComunicados);
    }

    $(document).on('click', "a[id^='generar_descarga_archivo_']", function(){
        var nombre_documento = this.getAttribute('asunto_comunicado');
        var idEvento = this.getAttribute('id_evento');
        var enlaceDescarga = document.createElement('a');
        enlaceDescarga.href = '/descargar-archivo/'+nombre_documento+'/'+idEvento;     
        enlaceDescarga.target = '_self'; // Abrir en una nueva ventana/tab
        enlaceDescarga.style.display = 'none';
        document.body.appendChild(enlaceDescarga);
    
        // Simular clic en el enlace para iniciar la descarga
        enlaceDescarga.click();
    
        // Eliminar el enlace después de la descarga
        setTimeout(function() {
            document.body.removeChild(enlaceDescarga);
        }, 1000);
    });

    $(document).on('click', "a[id^='verDocumento_']", function(){
        var verDocumento = $(this);        
        var Id_Asignacion = this.getAttribute('id_asignacion');
        var num_identificacion = this.getAttribute('numero_identificacion');
        var Nradicado = this.getAttribute('numero_radicado');
        var TipoDescarga = this.getAttribute('tipo_descarga');
        var Reemplazado = this.getAttribute('reemplazado');
        var nombreDocumento = this.getAttribute('nombre_documento');
        var edit_copia_afiliado;
        var edit_copia_empleador;
        var edit_copia_eps;
        var edit_copia_afp;
        var edit_copia_arl;
        var edit_copia_entidad_conocimiento;
        var bandera_descarga = 'IconoDescarga';
        if(this.getAttribute('agregar_copia')){
            if(this.getAttribute('agregar_copia').includes("Afiliado")){
                edit_copia_afiliado = true;
            }
            if(this.getAttribute('agregar_copia').includes("Empleador")){
                edit_copia_empleador = true;
            }
            if(this.getAttribute('agregar_copia').includes("EPS")){
                edit_copia_eps = true;
            }
            if(this.getAttribute('agregar_copia').includes("AFP")){
                edit_copia_afp = true;
            }
            if(this.getAttribute('agregar_copia').includes("ARL")){
                edit_copia_arl = true;
            }
            if(this.getAttribute('agregar_copia').includes("AFP_Conocimiento")){
                edit_copia_entidad_conocimiento = true;
            }
        }
        if(this.getAttribute('destinatario_principal') != "Otro"){
            datos_comunicado = {
                '_token': token,
                'cliente_comunicado2_act': this.getAttribute('cliente_comunicado'),
                'nombre_afiliado_comunicado2_act': this.getAttribute('nombre_afiliado'),
                'tipo_documento_comunicado2_act': this.getAttribute('tipo_documento'),
                'identificacion_comunicado2_act': this.getAttribute('numero_identificacion'),
                'id_evento_comunicado2_act': this.getAttribute('id_evento'),
                'tipo_documento_descarga_califi_editar': this.getAttribute('tipo_descarga'),
                'afiliado_comunicado_act': this.getAttribute('destinatario_principal'),
                'nombre_destinatario_act2': this.getAttribute('nombre_destinatario'),
                'nic_cc_act2': this.getAttribute('niccc_comunicado'),
                'direccion_destinatario_act2': this.getAttribute('direccion_destinatario'),
                'telefono_destinatario_act2': this.getAttribute('telefono_destinatario'),
                'email_destinatario_act2': this.getAttribute('email_destinatario'),
                'departamento_pdf': this.getAttribute('id_departamento'),
                'ciudad_pdf': this.getAttribute('id_municipio'),
                'asunto_act': this.getAttribute('asunto_comunicado'),
                'cuerpo_comunicado_act': this.getAttribute('cuerpo_comunicado'),
                'files': null,
                'anexos_act': this.getAttribute('anexos_comunicados'),
                'forma_envio_act': this.getAttribute('forma_envio_comunicado'),
                'elaboro2_act': this.getAttribute('elaboro_comunicado'),
                'reviso_act': this.getAttribute('reviso_comunicado'),
                'firmarcomunicado_editar': this.getAttribute('firmar_comunicado'),
                'ciudad_comunicado_act': this.getAttribute('ciudad_comunicaddo'),
                'Id_comunicado_act': this.getAttribute('id_comunicado'),
                'Id_evento_act': this.getAttribute('id_evento'),
                'Id_asignacion_act': this.getAttribute('id_asignacion'),
                'Id_procesos_act': this.getAttribute('id_proceso'),
                'fecha_comunicado2_act': this.getAttribute('fecha_comunicado'),
                'agregar_copia_editar':this.getAttribute('agregar_copia'),
                'radicado2_act': this.getAttribute('numero_radicado'),
                'edit_copia_afiliado': edit_copia_afiliado,
                'edit_copia_empleador':edit_copia_empleador,
                'edit_copia_eps':edit_copia_eps,
                'edit_copia_afp':edit_copia_afp,
                'edit_copia_arl':edit_copia_arl,
                'edit_copia_entidad_conocimiento':edit_copia_entidad_conocimiento,
                'n_siniestro_proforma_editar': this.getAttribute('numero_siniestro') !== 'null' ? this.getAttribute('numero_siniestro') : null,
                'bandera_descarga':bandera_descarga,
            };
        }
        else{
            datos_comunicado = {
                '_token': token,
                'cliente_comunicado2_act': this.getAttribute('cliente_comunicado'),
                'nombre_afiliado_comunicado2_act': this.getAttribute('nombre_afiliado'),
                'tipo_documento_comunicado2_act': this.getAttribute('tipo_documento'),
                'identificacion_comunicado2_act': this.getAttribute('numero_identificacion'),
                'id_evento_comunicado2_act': this.getAttribute('id_evento'),
                'tipo_documento_descarga_califi_editar': this.getAttribute('tipo_descarga'),
                'afiliado_comunicado_act': this.getAttribute('destinatario_principal'),
                'nombre_destinatario_act': this.getAttribute('nombre_destinatario'),
                'nic_cc_act': this.getAttribute('niccc_comunicado'),
                'nic_cc_editar': this.getAttribute('niccc_comunicado'),
                'direccion_destinatario_act': this.getAttribute('direccion_destinatario'),
                'telefono_destinatario_act': this.getAttribute('telefono_destinatario'),
                'email_destinatario_act': this.getAttribute('email_destinatario'),
                'nombre_destinatario_act2': this.getAttribute('nombre_destinatario'),
                'nic_cc_act2': this.getAttribute('niccc_comunicado'),
                'direccion_destinatario_act2': this.getAttribute('direccion_destinatario'),
                'telefono_destinatario_act2': this.getAttribute('telefono_destinatario'),
                'email_destinatario_act2': this.getAttribute('email_destinatario'),
                'departamento_pdf': this.getAttribute('id_departamento'),
                'ciudad_pdf': this.getAttribute('id_municipio'),
                'asunto_act': this.getAttribute('asunto_comunicado'),
                'cuerpo_comunicado_act': this.getAttribute('cuerpo_comunicado'),
                'files': null,
                'anexos_act': this.getAttribute('anexos_comunicados'),
                'forma_envio_act': this.getAttribute('forma_envio_comunicado'),
                'elaboro2_act': this.getAttribute('elaboro_comunicado'),
                'reviso_act': this.getAttribute('reviso_comunicado'),
                'firmarcomunicado_editar': this.getAttribute('firmar_comunicado'),
                'ciudad_comunicado_act': this.getAttribute('ciudad_comunicaddo'),
                'Id_comunicado_act': this.getAttribute('id_comunicado'),
                'Id_evento_act': this.getAttribute('id_evento'),
                'Id_asignacion_act': this.getAttribute('id_asignacion'),
                'Id_procesos_act': this.getAttribute('id_proceso'),
                'fecha_comunicado2_act': this.getAttribute('fecha_comunicado'),
                'agregar_copia_editar':this.getAttribute('agregar_copia'),
                'radicado2_act': this.getAttribute('numero_radicado'),
                'edit_copia_afiliado': edit_copia_afiliado,
                'edit_copia_empleador':edit_copia_empleador,
                'edit_copia_eps':edit_copia_eps,
                'edit_copia_afp':edit_copia_afp,
                'edit_copia_arl':edit_copia_arl,
                'edit_copia_entidad_conocimiento':edit_copia_entidad_conocimiento,
                'n_siniestro_proforma_editar': this.getAttribute('numero_siniestro') !== 'null' ? this.getAttribute('numero_siniestro') : null,
                'bandera_descarga':bandera_descarga,
            };
        }
        if(parseInt(Reemplazado) == 1){
            var nombre_doc = this.getAttribute('nombre_documento');
            var idEvento = this.getAttribute('id_evento');
            var enlaceDescarga = document.createElement('a');
            enlaceDescarga.href = '/descargar-archivo/'+nombre_doc+'/'+idEvento;     
            enlaceDescarga.target = '_self'; // Abrir en una nueva ventana/tab
            enlaceDescarga.style.display = 'none';
            document.body.appendChild(enlaceDescarga);
            enlaceDescarga.click();
            setTimeout(function() {
                document.body.removeChild(enlaceDescarga);
            }, 1000);
        }else{
            if (this.getAttribute('nombre_documento')) {
                var nombre_doc = this.getAttribute('nombre_documento');
                var idEvento = this.getAttribute('id_evento');
                var enlaceDescarga = document.createElement('a');
                enlaceDescarga.href = '/descargar-archivo/'+nombre_doc+'/'+idEvento;     
                enlaceDescarga.target = '_self'; // Abrir en una nueva ventana/tab
                enlaceDescarga.style.display = 'none';
                document.body.appendChild(enlaceDescarga);
                enlaceDescarga.click();
                setTimeout(function() {
                    document.body.removeChild(enlaceDescarga);
                }, 1000);
            } else {
                $.ajax({    
                    type:'POST',
                    url:'/generarPdf',
                    data: datos_comunicado,
                    // xhrFields: {
                    //     responseType: 'blob' // Indica que la respuesta es un blob
                    // },
                    beforeSend:  function() {
                        verDocumento.addClass("descarga-deshabilitada");
                    },
                    success: function (response, status, xhr) {
                        
                        // Obtener el contenido codificado en base64 del PDF desde la respuesta
                        var base64Pdf = response.pdf;
    
                        // Decodificar base64 en un array de bytes
                        var binaryString = atob(base64Pdf);
                        var len = binaryString.length;
                        var bytes = new Uint8Array(len);
     
                        for (var i = 0; i < len; i++) {
                            bytes[i] = binaryString.charCodeAt(i);
                        }
     
                        // Crear un Blob a partir del array de bytes
                        var blob = new Blob([bytes], { type: 'application/pdf' });
    
                        var nombre_pdf = response.nombre_pdf;
                                            
                        // Crear un enlace de descarga similar al ejemplo anterior
                        var link = document.createElement('a');
                        link.href = window.URL.createObjectURL(blob);
                        link.download = nombre_pdf;  // Reemplaza con el nombre deseado para el archivo PDF
                
                        // Adjuntar el enlace al documento y activar el evento de clic
                        document.body.appendChild(link);
                        link.click();
                
                        // Eliminar el enlace del documento
                        document.body.removeChild(link);
                    },
                    error: function (error) {
                        // Manejar casos de error
                        console.error('Error al descargar el PDF:', error);
                    },
                    complete: function(){
                        verDocumento.removeClass("descarga-deshabilitada");
                        if(nombreDocumento == null || nombreDocumento == "null"){
                            localStorage.setItem("#Generar_comunicados", true);
                            location.reload();
                        }
                    }       
                });                
            }
        }
        // console.log('Le ha dado click al boton de descargar : ')

    }); 

    $("#listado_comunicados_pcl").on('click', "#CorrespondenciaNotificacion", async function() {
        //Capturar información
        let id = $(this);
        let token = $('input[name=_token]').val(); 
        let tipo_correspondencia = $(id).data('tipo_correspondencia');

        let tipo_entidad_conocimiento = $(id).data('tipo_entidad_conocimiento');
        /* Aqui se programará algunas cosas de la ficha PBS 082 */

        // 1. motrar el botón de que tipo de guia es
        // 2. precargar el selector de documentos complementarios dependiendo de que correspondecia es.
        
        $("#tipo_guia").text('');
        $('#listado_documentos_ed tr[id^="fila_doc_"]').removeClass('d-none');
        $("#collapseGuia").removeClass('show');
        $("#doc_subir_guias").val('');
        switch (tipo_correspondencia) {
            case 'Afiliado':
                $("#tipo_guia").text('Afiliado');
                break;
            case 'Empleador':
                $("#tipo_guia").text('Empleador');
                break;
            case 'eps':
                $("#tipo_guia").text('EPS');
                break;
            case 'afp':
                $("#tipo_guia").text('AFP');
                break;
            case 'arl':
                $("#tipo_guia").text('ARL');
                break;
            case 'jrci':
                $("#tipo_guia").text('JRCI');
                break;
            case 'jnci':
                $("#tipo_guia").text('JNCI');
                break;
            default:
                break;
        }

        if (tipo_correspondencia.startsWith('afp_conocimiento')) {
            var datos_lista_tipos_documentos = guiasEntidadConocimiento (tipo_entidad_conocimiento, $("#newId_evento").val(), $("#Id_servicio").val(), token, 'mod_principal');

            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_tipos_documentos,
                success:function(data) {
                    $("#listado_tipos_documentos_guias").empty();
                    $("#listado_tipos_documentos_guias").append('<option value="">Seleccione una Opción</option>');
                    let tiposdoc = Object.keys(data);
                    for (let i = 0; i < tiposdoc.length; i++) {
                        $('#listado_tipos_documentos_guias').append('<option value="'+data[tiposdoc[i]]["Nro_documento"]+'">'+data[tiposdoc[i]]["Nro_documento"]+' - '+data[tiposdoc[i]]["Nombre_documento"]+'</option>');
                    }
                }
            });
        }else{
            $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_43').addClass('d-none');
    
            var datos_lista_tipos_documentos = {
                '_token': token,
                'evento': $("#newId_evento").val(),
                'servicio': $("#Id_servicio").val(),
                'parametro':"docs_complementarios",
                'tipo_correspondencia': 43,
            };
            
            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_tipos_documentos,
                success:function(data) {
                    $("#listado_tipos_documentos_guias").empty();
                    $("#listado_tipos_documentos_guias").append('<option value="">Seleccione una Opción</option>');
                    let tiposdoc = Object.keys(data);
                    for (let i = 0; i < tiposdoc.length; i++) {
                        $('#listado_tipos_documentos_guias').append('<option value="'+data[tiposdoc[i]]["Nro_documento"]+'">'+data[tiposdoc[i]]["Nro_documento"]+' - '+data[tiposdoc[i]]["Nombre_documento"]+'</option>');
                    }
                }
            });
        }

    });

    function showLoading() {
        $('#loading').addClass('loading');
        $('#loading-content').addClass('loading-content');
    }
    function hideLoading() {
        $('#loading').removeClass('loading');
        $('#loading-content').removeClass('loading-content');
        
    }

    //Asignar ruta del formulario de actualizar el comunicado
    $(document).on('mouseover',"input[id^='Pdf']", function(){
        let url_editar_evento = $('#action_actualizar_comunicado').val();        
        $('form[name="formu_comunicado"]').attr("action", url_editar_evento);    
        $('form[name="formu_comunicado"]').removeAttr('id');

        // Deshabilitar todo para descargar el o los comunicados
        if (idRol == 7) {
            $(':input, select, a, button').prop('disabled', false);
        }
    });

    $(document).on('mouseover',"input[id^='Editar_comunicados']", function(){ 
        $('form[name="formu_comunicado"]').attr('id', 'form_actualizarComunicadoPcl');
        $('form[name="formu_comunicado"]').removeAttr('action');

    });

    //Accion agregar nota comunicado
    $("#listado_comunicados_pcl").on("click",'#editar_comunicado',function(){
        let radicado = $(this).data('radicado');
        let datos_comunicados_actualizar = {
            '_token' : token,
            'bandera': 'Actualizar',
            'radicado' : $(this).data('radicado'),
            'id_asignacion': $('#newId_asignacion').val(),
            'Nota': $("#nota_comunicado_" + radicado).val(),
            'Estado_general': $("#status_notificacion_" + radicado).val()
        };
        $.ajax({
            type:'POST',
            url:'/historialComunicadoPcl',
            data: datos_comunicados_actualizar,
            success:function(data){
                $('.alerta_externa_comunicado').removeClass('d-none');
                $(".alerta_externa_comunicado").append("<strong>" + data + "</strong>");
                setTimeout(()=>{
                    localStorage.setItem("#Generar_comunicados", true);
                    location.reload();
                },2000);

            }
        });
    })
    
    var AlertaPdf;
    $(document).on('click', "input[id='Pdf']", function () {                       
        AlertaPdf = setTimeout(() => {            
            $('#mostrar_barra_descarga_pdf').removeClass('d-none');                        
            $('#Pdf').attr('disabled', true);
            $('#Editar_comunicados').attr('disabled', true);
        }, 1000);
       
        setTimeout(function() {
            clearTimeout(AlertaPdf);
            $('#mostrar_barra_descarga_pdf').addClass('d-none');                        
            $('#Pdf').attr('disabled', false);  
            $('#Editar_comunicados').attr('disabled', false);

            // Despues de descargado el documento deja todo nuevamente deshabilitado + los controles hechos
            if (idRol == 7) {
                // Desactivar todos los elementos excepto los especificados
                $(':input, select, a, button').not('#listado_roles_usuario, #Hacciones, #histo_servicios, #botonVerEdicionEvento, #cargue_docs, #clicGuardado, #cargue_docs_modal_listado_docs, #abrir_agregar_seguimiento, #fecha_seguimiento, #causal_seguimiento, #descripcion_seguimiento, #Guardar_seguimientos, #botonFormulario2, .btn-danger, a[id^="EditarComunicado_"]').prop('disabled', true);
                $('#aumentarColAccionRealizar').addClass('d-none');
                // Quitar el disabled al formulario oculto para permitirme ir a la edicion del evento.
                $("#enlace_ed_evento").hover(function(){
                    $("input[name='_token']").prop('disabled', false);
                    $("#bandera_buscador_clpcl").prop('disabled', false);
                    $("#newIdEvento").prop('disabled', false);
                    $("#newIdAsignacion").prop('disabled', false);
                    $("#newIdproceso").prop('disabled', false);
                    $("#newIdservicio").prop('disabled', false);
                });
                // Quitar el disabled al formulario oculto para permitirme ir al submodulo
                // $("#llevar_servicio").hover(function(){
                //     $("input[name='_token']").prop('disabled', false);
                //     $("#Id_evento_pcl").prop('disabled', false);
                //     $("#Id_asignacion_pcl").prop('disabled', false);
                // });
                // Deshabilitar el botón Actualizar y Activar el botón Pdf en los comunicados
                $("#Pdf").prop('disabled', false);
            }
        }, 10000);

    })     
    
    // Creacion de la modal para la edicion del comunicado 
    $(document).on('click', "a[id^='EditarComunicado_']", function(){
        // validacion para numeros enteros en anexos modal agregar seguimiento
        var input = document.getElementById("anexos_editar");
        // Agrega un event listener para el evento "input"
        input.addEventListener("input", function() {
            var valor = input.value;
            if (Number.isInteger(Number(valor))) {
                //console.log("El valor es un número entero");
            } else {
                input.value = "";
                //console.log("El valor no es un número entero");
            }
        });
        //$('#contenedorCopia2').empty();
        var id_comunicado =  $(this).data("id_comunicado"); 
        var id_evento =  $(this).data("id_evento");     
        var id_asignacion =  $(this).data("id_asignacion");     
        var id_proceso =  $(this).data("id_proceso"); 
        var ciudad_comunicado =  $(this).data("ciudad_comunicaddo"); 
        var fecha_comunicado =  $(this).data("fecha_comunicado");
        var numero_radicado =  $(this).data("numero_radicado"); 
        var cliente_comunicado =  $(this).data("cliente_comunicado");
        var nombre_afiliado =  $(this).data("nombre_afiliado");
        var tipo_documento =  $(this).data("tipo_documento");         
        var numero_identificacion =  $(this).data("numero_identificacion");         
        var destinatario_principal =  $(this).data("destinatario_principal"); 
        var nombre_destinatario =  $(this).data("nombre_destinatario"); 
        var niccc_comunicado =  $(this).data("niccc_comunicado");
        var direccion_destinatario =  $(this).data("direccion_destinatario");
        var telefono_destinatario =  $(this).data("telefono_destinatario");
        var email_destinatario =  $(this).data("email_destinatario");
        var id_departamento =  $(this).data("id_departamento");
        var nombre_departamento = $(this).data("nombre_departamento");
        var id_municipio =  $(this).data("id_municipio");
        var nombre_municipio = $(this).data("nombre_municipio");
        var asunto_comunicado =  $(this).data("asunto_comunicado");  
        var cuerpo_comunicado =  $(this).data("cuerpo_comunicado");  
        var anexos_comunicados =  $(this).data("anexos_comunicados"); 
        var forma_envio_comunicado =  $(this).data("forma_envio_comunicado"); 
        var nombre_envio_comunicado =  $(this).data("nombre_envio_comunicado");         
        var elaboro_comunicado =  $(this).data("elaboro_comunicado"); 
        var reviso_comunicado =  $(this).data("reviso_comunicado");     
        var revisonombre_comunicado =  $(this).data("revisonombre_comunicado");  
        var firma_cliente = $(this).data("firmar_comunicado");
        var agregar_copia =  $(this).data("agregar_copia");
        var tipo_descarga = $(this).data("tipo_descarga");
        var N_siniestro = $(this).data("numero_siniestro");
        document.getElementById('ciudad_comunicado_editar').value=ciudad_comunicado;
        document.getElementById('Id_comunicado_act').value=id_comunicado;
        document.getElementById('Id_evento_act').value=id_evento;
        document.getElementById('Id_asignacion_act').value=id_asignacion;
        document.getElementById('Id_procesos_act').value=id_proceso;
        document.getElementById('fecha_comunicado_editar').value=fecha_comunicado;
        document.getElementById('fecha_comunicado2_editar').value=fecha_comunicado;
        document.getElementById('radicado_comunicado_editar').value=numero_radicado;
        document.getElementById('radicado2_comunicado_editar').value=numero_radicado;
        document.getElementById('cliente_comunicado_editar').value=cliente_comunicado;
        document.getElementById('cliente_comunicado2_editar').value=cliente_comunicado;
        document.getElementById('nombre_afiliado_comunicado_editar').value=nombre_afiliado;
        document.getElementById('nombre_afiliado_comunicado2_editar').value=nombre_afiliado;
        document.getElementById('tipo_documento_comunicado_editar').value=tipo_documento;
        document.getElementById('tipo_documento_comunicado2_editar').value=tipo_documento;
        document.getElementById('identificacion_comunicado_editar').value=numero_identificacion;
        document.getElementById('identificacion_comunicado2_editar').value=numero_identificacion;
        document.getElementById('id_evento_comunicado_editar').value=id_evento;
        document.getElementById('id_evento_comunicado2_editar').value=id_evento; 
        document.getElementById('n_siniestro_proforma_editar').value = N_siniestro;   
        //console.log(agregar_copia);
        let datos_destinatario_principal ={
            '_token':token,
            'destinatario_principal': destinatario_principal,
            'id_evento': id_evento,
            'id_asignacion': id_asignacion,
            'id_proceso': id_proceso,
        }
        $.ajax({
            url: '/modalComunicado',
            method:'POST',
            data: datos_destinatario_principal,  
            success:function(data){
                var destino = data.destinatario_principal_comu;
                //console.log(destino);
                if (destino == 'Afiliado') {
                    $('#afiliado_comunicado_editar').prop('checked', true);                    
                    document.querySelector("#nombre_destinatario_editar").disabled = true;
                    document.querySelector("#nic_cc_editar").disabled = true;
                    document.querySelector("#direccion_destinatario_editar").disabled = true;
                    document.querySelector("#telefono_destinatario_editar").disabled = true;
                    document.querySelector("#email_destinatario_editar").disabled = true;
                    document.querySelector("#departamento_destinatario_editar").disabled = true;
                    document.querySelector("#ciudad_destinatario_editar").disabled = true;
                }else if(destino == 'Empleador'){
                    $('#empresa_comunicado_editar').prop('checked', true);
                    document.querySelector("#nombre_destinatario_editar").disabled = true;
                    document.querySelector("#nic_cc_editar").disabled = true;
                    document.querySelector("#direccion_destinatario_editar").disabled = true;
                    document.querySelector("#telefono_destinatario_editar").disabled = true;
                    document.querySelector("#email_destinatario_editar").disabled = true;
                    document.querySelector("#departamento_destinatario_editar").disabled = true;
                    document.querySelector("#ciudad_destinatario_editar").disabled = true;
                }else if(destino == 'Otro'){
                    $('#Otro_editar').prop('checked', true);
                    document.querySelector("#nombre_destinatario_editar").disabled = false;
                    document.querySelector("#nic_cc_editar").disabled = false;
                    document.querySelector("#direccion_destinatario_editar").disabled = false;
                    document.querySelector("#telefono_destinatario_editar").disabled = false;
                    document.querySelector("#email_destinatario_editar").disabled = false;
                    document.querySelector("#departamento_destinatario_editar").disabled = false;
                    document.querySelector("#ciudad_destinatario_editar").disabled = false;
                }

                var reviso_editar = $('#reviso_editar');
                reviso_editar.empty();
                reviso_editar.append('<option value="'+reviso_comunicado+'" selected>'+revisonombre_comunicado+'</option>');
                let NobreLider = $('select[name=reviso_act]').val();
                let revisolider = Object.keys(data.array_datos_lider);
                for (let i = 0; i < revisolider.length; i++) {
                    if (data.array_datos_lider[i]['id'] != NobreLider) {                
                        reviso_editar.append('<option value="'+data.array_datos_lider[revisolider[i]]["id"]+'">'+data.array_datos_lider[revisolider[i]]["name"]+'</option>');            
                    }
                }
            }

        });   
        // console.log(tipo_descarga);
        if (tipo_descarga == "Documento_PCL") {
            $("#documentos_pcl_editar").prop("checked", true);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#No_procede_recali_editar").prop("checked", false);
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "Formato_B_Revision_pension") {
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", true);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#No_procede_recali_editar").prop("checked", false);
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "Documento_Revision_pension") {
            $("#asunto").prop('readonly', false);
            $("#asunto_editar").prop('readonly', false);
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", true);
            $("#No_procede_recali_editar").prop("checked", false);
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "Reiteracion_Documento_Revision_pension") {
            $("#asunto").prop('readonly', false);
            $("#asunto_editar").prop('readonly', false);
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", true);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#No_procede_recali_editar").prop("checked", false);
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "Suspension_Mesada_Revision_pension") {
            $("#asunto").prop('readonly', false);
            $("#asunto_editar").prop('readonly', false);
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", true);
            $("#No_procede_recali_editar").prop("checked", false);
            $("#firmarcomunicado_editar").prop('disabled', false);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "Documento_No_Recalificacion") {
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#No_procede_recali_editar").prop("checked", true);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $('#btn_insertar_Origen_editar').removeClass('d-none')
            $('#btn_insertar_nombreCIE10_editar').removeClass('d-none')
            $('#btn_insertar_porPcl_editar').removeClass('d-none')
            $('#btn_insertar_F_estructuracion_editar').removeClass('d-none')
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "Desistimiento_PCL") {
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", true);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#No_procede_recali_editar").prop("checked", false);
            $('#btn_insertar_Origen_editar').removeClass('d-none')
            $('#btn_insertar_nombreCIE10_editar').removeClass('d-none')
            $('#btn_insertar_porPcl_editar').removeClass('d-none')
            $('#btn_insertar_F_estructuracion_editar').removeClass('d-none')
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "Cierre_MMM_PCL") {
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", true);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#No_procede_recali_editar").prop("checked", false);
            $('#btn_insertar_Origen_editar').removeClass('d-none')
            $('#btn_insertar_nombreCIE10_editar').removeClass('d-none')
            $('#btn_insertar_porPcl_editar').removeClass('d-none')
            $('#btn_insertar_F_estructuracion_editar').removeClass('d-none')
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "Cierre_Cita_PCL") {
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", true);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#No_procede_recali_editar").prop("checked", false);
            $('#btn_insertar_Origen_editar').removeClass('d-none')
            $('#btn_insertar_nombreCIE10_editar').removeClass('d-none')
            $('#btn_insertar_porPcl_editar').removeClass('d-none')
            $('#btn_insertar_F_estructuracion_editar').removeClass('d-none')
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "Firmeza_PCL") {
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", true);
            $("#No_procede_recali_editar").prop("checked", false);
            $('#btn_insertar_Origen_editar').removeClass('d-none')
            $('#btn_insertar_nombreCIE10_editar').removeClass('d-none')
            $('#btn_insertar_porPcl_editar').removeClass('d-none')
            $('#btn_insertar_F_estructuracion_editar').removeClass('d-none')
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#no_localizacion_editar").prop("checked", false);
        }else if (tipo_descarga == "No_Localizacion") {
            $("#no_localizacion_editar").prop("checked", true);
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", false);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#No_procede_recali_editar").prop("checked", false);
            $('#btn_insertar_Origen_editar').removeClass('d-none')
            $('#btn_insertar_nombreCIE10_editar').removeClass('d-none')
            $('#btn_insertar_porPcl_editar').removeClass('d-none')
            $('#btn_insertar_F_estructuracion_editar').removeClass('d-none')
            $("#firmarcomunicado_editar").prop('disabled', true);
        }
        else {
            $("#documentos_pcl_editar").prop("checked", false);
            $("#otro_documento_pcl_editar").prop("checked", true);
            $("#formatoB_revisionpension_editar").prop("checked", false);
            $("#reiteracion_documento_revisionpension_editar").prop("checked", false);
            $("#suspension_de_mesada_editar").prop("checked", false);
            $("#cierre_mmm_pcl_editar").prop("checked", false);
            $("#desistimiento_pcl_editar").prop("checked", false);
            $("#cierre_cita_pcl_editar").prop("checked", false);
            $("#firmeza_pcl_editar").prop("checked", false);
            $("#documento_revisionpension_editar").prop("checked", false);
            $("#No_procede_recali_editar").prop("checked", false);
            $("#firmarcomunicado_editar").prop('disabled', false);
            $("#no_localizacion_editar").prop("checked", false);
        }

        document.getElementById('nombre_destinatario_editar').value=nombre_destinatario;        
        document.getElementById('nombre_destinatario_editar2').value=nombre_destinatario;  
        document.getElementById('nic_cc_editar').value=niccc_comunicado;        
        document.getElementById('nic_cc_editar2').value=niccc_comunicado;        
        document.getElementById('direccion_destinatario_editar').value=direccion_destinatario;        
        document.getElementById('direccion_destinatario_editar2').value=direccion_destinatario;        
        document.getElementById('telefono_destinatario_editar').value=telefono_destinatario;        
        document.getElementById('telefono_destinatario_editar2').value=telefono_destinatario;        
        document.getElementById('email_destinatario_editar').value=email_destinatario;
        document.getElementById('email_destinatario_editar2').value=email_destinatario;
        var departamento_destinatario_editar = $('#departamento_destinatario_editar');
        departamento_destinatario_editar.empty();
        departamento_destinatario_editar.append('<option value="'+id_departamento+'" selected>'+nombre_departamento+'</option>');        
        var departamento_destinatario = $('#departamento_destinatario_editar').val();
        $("#departamento_pdf").val(departamento_destinatario);
        var ciudad_destinatario_editar = $('#ciudad_destinatario_editar');
        ciudad_destinatario_editar.empty();
        ciudad_destinatario_editar.append('<option value="'+id_municipio+'" selected>'+nombre_municipio+'</option>');
        var ciudad_destinatario = $('#ciudad_destinatario_editar').val();
        $("#ciudad_pdf").val(ciudad_destinatario);
        document.getElementById('asunto_editar').value=asunto_comunicado;
        // document.getElementById('cuerpo_comunicado_editar').value=cuerpo_comunicado;
        $("#cuerpo_comunicado_editar").summernote('code', cuerpo_comunicado);
        document.getElementById('anexos_editar').value=anexos_comunicados;
        var forma_envio_editar = $('#forma_envio_editar');
        forma_envio_editar.empty();
        forma_envio_editar.append('<option value="'+forma_envio_comunicado+'" selected>'+nombre_envio_comunicado+'</option>');
        forma_envio_editar.prop('required', true);
        // Listado de forma de editar de generar comunicado
        let datos_lista_forma_envios = {
            '_token':token,        
            'parametro':"lista_forma_envio"
        }
        $.ajax({
            type:'POST',
            url:'/selectoresModuloCalificacionPCL',
            data:datos_lista_forma_envios,
            success:function(data){
                //console.log(data);
                //$('#forma_envio_editar').empty();
                let NobreFormaEnvio = $('select[name=forma_envio_act]').val();
                let formaenviogenerarcomunicado = Object.keys(data);
                for (let i = 0; i < formaenviogenerarcomunicado.length; i++) {
                    if (data[formaenviogenerarcomunicado[i]]['Id_Parametro'] != NobreFormaEnvio) {
                        $('#forma_envio_editar').append('<option value="'+data[formaenviogenerarcomunicado[i]]['Id_Parametro']+'">'+data[formaenviogenerarcomunicado[i]]['Nombre_parametro']+'</option>');
                    }                
                }
            }
        });
        document.getElementById('elaboro_editar').value=elaboro_comunicado;
        document.getElementById('elaboro2_editar').value=elaboro_comunicado;
        // Validar si va la firma del cliente
        $("input[id^='firmarcomunicado_editar']").each(function() {
            const checkboxValue = $(this).val();
            if (firma_cliente.includes(checkboxValue)) {
                $(this).prop('checked', true);
            }else{
                $(this).prop('checked', false);
            }
        });
        //document.getElementById('firmarcomunicado_editar').value=firma_cliente;
        // var arregloRegistros = agregar_copia.split(","); 
        // for (var i = 0; i < arregloRegistros.length; i++) { 
        //     //duplicate2(arregloRegistros[i]);            
        //     if (arregloRegistros[i]) {
        //         duplicate2(arregloRegistros[i]);
        //     }
        // }
        
        
        //Valida si tiene alguna copia
        $("input[id^='edit_copia_']").each(function() {
            const checkboxValue = $(this).val();
            if (agregar_copia) {
                let copias = agregar_copia.split(',').map(copia => copia.trim());
                const copiaaCheckear = copias.some(copia => copia === checkboxValue);
                $(this).prop('checked', copiaaCheckear);
            }
        });
        $('input[type="radio"]').change(function(){
            $('#Pdf').prop('disabled', true);
            var destinarioPrincipal = $(this).val();  
            var identificacion_comunicado_afiliado = $('#identificacion_comunicado_editar').val();
            var datos_destinarioPrincipal ={
                '_token':token,
                'destinatarioPrincipal': destinarioPrincipal,
                'identificacion_comunicado_afiliado':identificacion_comunicado_afiliado,
                'newId_evento': id_evento,
                'newId_asignacion': id_asignacion,
                'Id_proceso': id_proceso,
            }
    
            $.ajax({
                type:'POST',
                url:'/captuarDestinatario',
                data: datos_destinarioPrincipal,
                success: function(data){
                    /* $('#destinatarioPrincipal').text(data.destinatarioPrincipal);
                    $('#datos').text(JSON.stringify(data.data)); */
                    if (data.destinatarioPrincipal == 'Afiliado') {
                        //console.log(data.hitorialAgregarComunicado);
                        var Nombre_afiliado = $('#nombre_destinatario_editar');
                        Nombre_afiliado.val(data.array_datos_destinatarios[0].Nombre_afiliado);
                        document.querySelector("#nombre_destinatario_editar").disabled = true;
                        document.getElementById('nombre_destinatario_editar2').value=data.array_datos_destinatarios[0].Nombre_afiliado;  
                        var nitccafiliado = $('#nic_cc_editar');
                        nitccafiliado.val(data.array_datos_destinatarios[0].Nro_identificacion);
                        document.querySelector("#nic_cc_editar").disabled = true;
                        document.getElementById('nic_cc_editar2').value=data.array_datos_destinatarios[0].Nro_identificacion;        
                        var direccionafiliado = $('#direccion_destinatario_editar');
                        direccionafiliado.val(data.array_datos_destinatarios[0].Direccion_afiliado);
                        document.querySelector("#direccion_destinatario_editar").disabled = true;
                        document.getElementById('direccion_destinatario_editar2').value=data.array_datos_destinatarios[0].Direccion_afiliado;        
                        var telefonoafiliado = $('#telefono_destinatario_editar');
                        telefonoafiliado.val(data.array_datos_destinatarios[0].Telefono_contacto);
                        document.querySelector("#telefono_destinatario_editar").disabled = true;
                        document.getElementById('telefono_destinatario_editar2').value=data.array_datos_destinatarios[0].Telefono_contacto;        
                        var emailafiliado = $('#email_destinatario_editar');
                        emailafiliado.val(data.array_datos_destinatarios[0].Email_afiliado);
                        document.querySelector("#email_destinatario_editar").disabled = true;
                        document.getElementById('email_destinatario_editar2').value=data.array_datos_destinatarios[0].Email_afiliado;
                        var departamento_destinatario_editar = $('#departamento_destinatario_editar');
                        departamento_destinatario_editar.empty();
                        departamento_destinatario_editar.append('<option value="'+data.array_datos_destinatarios[0].Id_departamento_afiliado+'" selected>'+data.array_datos_destinatarios[0].Nombre_departamento_afiliado+'</option>');
                        document.querySelector("#departamento_destinatario_editar").disabled = true;
                        $("#departamento_pdf").val(data.array_datos_destinatarios[0].Id_departamento_afiliado);
                        var ciudad_destinatario_editar =$('#ciudad_destinatario_editar');
                        ciudad_destinatario_editar.empty();
                        ciudad_destinatario_editar.append('<option value="'+data.array_datos_destinatarios[0].Id_municipio_afiliado+'">'+data.array_datos_destinatarios[0].Nombre_municipio_afiliado+'</option>')
                        document.querySelector("#ciudad_destinatario_editar").disabled = true;
                        $("#ciudad_pdf").val(data.array_datos_destinatarios[0].Id_municipio_afiliado);
                        /* var forma_envio_editar = $('#forma_envio_editar');
                        forma_envio_editar.empty();
                        forma_envio_editar.append('<option value="'+data.hitorialAgregarComunicado[0].Forma_envio+'" selected>'+data.hitorialAgregarComunicado[0].Nombre_forma_envio+'</option>'); */
                        // Listado de forma de editar de generar comunicado
                        let datos_lista_forma_envios = {
                            '_token':token,        
                            'parametro':"lista_forma_envio"
                        }
                        $.ajax({
                            type:'POST',
                            url:'/selectoresModuloCalificacionPCL',
                            data:datos_lista_forma_envios,
                            success:function(data){
                                //console.log(data);
                                $('#forma_envio_editar').empty();
                                $('#forma_envio_editar').append('<option value="">Seleccione una opción</option>');
                                // Agregar el atributo required
                                let NobreFormaEnvio = $('select[name=forma_envio_act]').val();
                                let formaenviogenerarcomunicado = Object.keys(data);
                                for (let i = 0; i < formaenviogenerarcomunicado.length; i++) {
                                    if (data[formaenviogenerarcomunicado[i]]['Id_Parametro'] != NobreFormaEnvio) {
                                        $('#forma_envio_editar').append('<option value="' + data[formaenviogenerarcomunicado[i]]['Id_Parametro'] + '">' + data[formaenviogenerarcomunicado[i]]['Nombre_parametro'] + '</option>');
                                    }
                                }
                                // Desencadenar el evento change de Select2 para activar la actualización
                                // $('#forma_envio_editar').trigger('change.select2');
                            }
                        });
                        // $('#forma_envio_editar').prop('required', true);

                        // Seleccción de la forma de envío acorde a la selección del afiliado
                        setTimeout(() => {
                            if (data.info_medio_noti[0].Medio_notificacion == "Físico") {
                                $('#forma_envio_editar').val('46').trigger('change.select2');
                            }else{
                                $('#forma_envio_editar').val('47').trigger('change.select2');
                            }
                        }, 400);

                        var nombre_usuario = $('#elaboro_editar');
                        nombre_usuario.val(data.nombreusuario);
                        var nombre_usuario2 = $('#elaboro2_editar');
                        nombre_usuario2.val(data.nombreusuario);
                        // var reviso = $('#reviso_editar');
                        // reviso.empty();
                        // reviso.append('<option value="">Seleccione una opción</option>');                        
                        // let revisolider = Object.keys(data.array_datos_lider);
                        // for (let i = 0; i < revisolider.length; i++) {
                        //     reviso.append('<option value="'+data.array_datos_lider[revisolider[i]]["id"]+'">'+data.array_datos_lider[revisolider[i]]["name"]+'</option>');
                        // }
                        // reviso.prop('required', true);
                    }else if(data.destinatarioPrincipal == 'Empleador'){      
                        //console.log(data.array_datos_destinatarios);
                        var Nombre_afiliado = $('#nombre_destinatario_editar');
                        Nombre_afiliado.val(data.array_datos_destinatarios[0].Nombre_empresa);
                        document.querySelector("#nombre_destinatario_editar").disabled = true;
                        document.getElementById('nombre_destinatario_editar2').value=data.array_datos_destinatarios[0].Nombre_empresa;  
                        var nitccafiliado = $('#nic_cc_editar');
                        nitccafiliado.val(data.array_datos_destinatarios[0].Nit_o_cc);
                        document.querySelector("#nic_cc_editar").disabled = true;
                        document.getElementById('nic_cc_editar2').value=data.array_datos_destinatarios[0].Nit_o_cc;        
                        var direccionafiliado = $('#direccion_destinatario_editar');
                        direccionafiliado.val(data.array_datos_destinatarios[0].Direccion_empresa);
                        document.querySelector("#direccion_destinatario_editar").disabled = true;
                        document.getElementById('direccion_destinatario_editar2').value=data.array_datos_destinatarios[0].Direccion_empresa;        
                        var telefonoafiliado = $('#telefono_destinatario_editar');
                        telefonoafiliado.val(data.array_datos_destinatarios[0].Telefono_empresa);
                        document.querySelector("#telefono_destinatario_editar").disabled = true;
                        document.getElementById('telefono_destinatario_editar2').value=data.array_datos_destinatarios[0].Telefono_empresa;        
                        var emailafiliado = $('#email_destinatario_editar');
                        emailafiliado.val(data.array_datos_destinatarios[0].Email_empresa);
                        document.querySelector("#email_destinatario_editar").disabled = true;
                        document.getElementById('email_destinatario_editar2').value=data.array_datos_destinatarios[0].Email_empresa;
                        var departamentoafiliado = $('#departamento_destinatario_editar');
                        departamentoafiliado.empty();
                        departamentoafiliado.append('<option value="'+data.array_datos_destinatarios[0].Id_departamento_empresa+'" selected>'+data.array_datos_destinatarios[0].Nombre_departamento_empresa+'</option>');
                        document.querySelector("#departamento_destinatario_editar").disabled = true;
                        $("#departamento_pdf").val(data.array_datos_destinatarios[0].Id_departamento_empresa);
                        var ciudadafiliado =$('#ciudad_destinatario_editar');
                        ciudadafiliado.empty();
                        ciudadafiliado.append('<option value="'+data.array_datos_destinatarios[0].Id_municipio_empresa+'">'+data.array_datos_destinatarios[0].Nombre_municipio_empresa+'</option>')
                        document.querySelector("#ciudad_destinatario_editar").disabled = true;
                        $("#ciudad_pdf").val(data.array_datos_destinatarios[0].Id_municipio_empresa);
                        // Listado de forma de editar de generar comunicado
                        let datos_lista_forma_envios = {
                            '_token':token,        
                            'parametro':"lista_forma_envio"
                        }
                        $.ajax({
                            type:'POST',
                            url:'/selectoresModuloCalificacionPCL',
                            data:datos_lista_forma_envios,
                            success:function(data){
                                //console.log(data);
                                $('#forma_envio_editar').empty();
                                forma_envio_editar.append('<option value="" selected>Seleccione una opción</option>');
                                let NobreFormaEnvio = $('select[name=forma_envio_act]').val();
                                let formaenviogenerarcomunicado = Object.keys(data);
                                for (let i = 0; i < formaenviogenerarcomunicado.length; i++) {
                                    if (data[formaenviogenerarcomunicado[i]]['Id_Parametro'] != NobreFormaEnvio) {
                                        $('#forma_envio_editar').append('<option value="'+data[formaenviogenerarcomunicado[i]]['Id_Parametro']+'">'+data[formaenviogenerarcomunicado[i]]['Nombre_parametro']+'</option>');
                                    }                
                                }
                            }
                        });

                        // Seleccción de la forma de envío acorde a la selección del empleador
                        setTimeout(() => {
                            if (data.info_medio_noti[0].Medio_notificacion == "Físico") {
                                $('#forma_envio_editar').val('46').trigger('change.select2');
                            }else{
                                $('#forma_envio_editar').val('47').trigger('change.select2');
                            }
                        }, 400);

                        var nombre_usuario = $('#elaboro_editar');
                        nombre_usuario.val(data.nombreusuario);
                        var nombre_usuario2 = $('#elaboro2_editar');
                        nombre_usuario2.val(data.nombreusuario);
                        // var reviso = $('#reviso_editar');
                        // reviso.empty();
                        // reviso.append('<option value="" selected>Seleccione una opción</option>');
                        // let revisolider = Object.keys(data.array_datos_lider);
                        // for (let i = 0; i < revisolider.length; i++) {
                        //     reviso.append('<option value="'+data.array_datos_lider[revisolider[i]]["id"]+'">'+data.array_datos_lider[revisolider[i]]["name"]+'</option>');
                        // }
                    }else if(data.destinatarioPrincipal == 'Otro'){
                        //console.log(data.destinatarioPrincipal);
                        document.querySelector("#nombre_destinatario_editar").disabled = false;
                        document.querySelector("#nic_cc_editar").disabled = false;
                        document.querySelector("#direccion_destinatario_editar").disabled = false;
                        document.querySelector("#telefono_destinatario_editar").disabled = false;
                        document.querySelector("#email_destinatario_editar").disabled = false;
                        document.querySelector("#departamento_destinatario_editar").disabled = false;
                        document.querySelector("#ciudad_destinatario_editar").disabled = false;
                        $("#departamento_pdf").val('');
                        $("#ciudad_pdf").val('');                        
                        $('#nombre_destinatario_editar').val('');                        
                        $('#nic_cc_editar').val('');
                        $('#direccion_destinatario_editar').val('');
                        $('#telefono_destinatario_editar').val('');
                        $('#email_destinatario_editar').val('');
                        // Listado de departamento generar comunicado
                        let datos_lista_departamentos_generar_comunicado = {
                            '_token': token,
                            'parametro' : "departamentos_generar_comunicado"
                        };
                        $.ajax({
                            type:'POST',
                            url:'/selectoresModuloCalificacionPCL',
                            data: datos_lista_departamentos_generar_comunicado,
                            success:function(data) {
                                // console.log(data);
                                $('#departamento_destinatario_editar').empty();
                                $('#ciudad_destinatario_editar').empty();
                                $('#departamento_destinatario_editar').append('<option value="" selected>Seleccione</option>');
                                let claves = Object.keys(data);
                                for (let i = 0; i < claves.length; i++) {
                                    $('#departamento_destinatario_editar').append('<option value="'+data[claves[i]]["Id_departamento"]+'">'+data[claves[i]]["Nombre_departamento"]+'</option>');
                                }
                            }
                        });
                        // listado municipios dependiendo del departamentos generar comunicado
                        $('#departamento_destinatario_editar').change(function(){
                            $('#ciudad_destinatario_editar').prop('disabled', false);
                            let id_departamento_destinatario = $('#departamento_destinatario_editar').val();
                            $("#departamento_pdf").val(id_departamento_destinatario);
                            let datos_lista_municipios_generar_comunicado = {
                                '_token': token,
                                'parametro' : "municipios_generar_comunicado",
                                'id_departamento_destinatario': id_departamento_destinatario
                            };
                            $.ajax({
                                type:'POST',
                                url:'/selectoresModuloCalificacionPCL',
                                data: datos_lista_municipios_generar_comunicado,
                                success:function(data) {
                                    // console.log(data);
                                    $('#ciudad_destinatario_editar').empty();
                                    $('#ciudad_destinatario_editar').append('<option value="" selected>Seleccione</option>');
                                    let claves = Object.keys(data);
                                    for (let i = 0; i < claves.length; i++) {
                                        $('#ciudad_destinatario_editar').append('<option value="'+data[claves[i]]["Id_municipios"]+'">'+data[claves[i]]["Nombre_municipio"]+'</option>');
                                    }
                                }
                            });
                        });
                        $("#ciudad_destinatario_editar").change(function(){
                            let id_ciudad_destinatario = $('#ciudad_destinatario_editar').val();
                            $("#ciudad_pdf").val(id_ciudad_destinatario);
                        });
                        // Listado de forma de editar de generar comunicado
                        let datos_lista_forma_envios = {
                            '_token':token,        
                            'parametro':"lista_forma_envio"
                        }
                        $.ajax({
                            type:'POST',
                            url:'/selectoresModuloCalificacionPCL',
                            data:datos_lista_forma_envios,
                            success:function(data){
                                //console.log(data);
                                $('#forma_envio_editar').empty();
                                forma_envio_editar.append('<option value="" selected>Seleccione una opción</option>');
                                let NobreFormaEnvio = $('select[name=forma_envio_act]').val();
                                let formaenviogenerarcomunicado = Object.keys(data);
                                for (let i = 0; i < formaenviogenerarcomunicado.length; i++) {
                                    if (data[formaenviogenerarcomunicado[i]]['Id_Parametro'] != NobreFormaEnvio) {
                                        $('#forma_envio_editar').append('<option value="'+data[formaenviogenerarcomunicado[i]]['Id_Parametro']+'">'+data[formaenviogenerarcomunicado[i]]['Nombre_parametro']+'</option>');
                                    }                
                                }
                            }
                        });
                        var nombre_usuario = $('#elaboro_editar');
                        nombre_usuario.val(data.nombreusuario);
                        var nombre_usuario2 = $('#elaboro2_editar');
                        nombre_usuario2.val(data.nombreusuario);
                        // var reviso = $('#reviso_editar');
                        // reviso.empty();
                        // reviso.append('<option value="" selected>Seleccione una opción</option>');
                        // let revisolider = Object.keys(data.array_datos_lider);
                        // for (let i = 0; i < revisolider.length; i++) {
                        //     reviso.append('<option value="'+data.array_datos_lider[revisolider[i]]["id"]+'">'+data.array_datos_lider[revisolider[i]]["name"]+'</option>');
                        // }
                    }
    
                }        
            });
            
        });

    });   
    
    /* Funcionalidad para insertar la etiqueta de pruebas solicitadas (edición) */
    $("#cuerpo_comunicado_editar").summernote({
        height: 'auto',
        toolbar: false,
        callbacks: {
            onPaste: function (e) {
                var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
                e.preventDefault();
                document.execCommand('insertText', false, bufferText);
            }
        }
    });
    $('.note-editing-area').css("background", "white");
    $('.note-editor').css("border", "1px solid black");

    $("#btn_insertar_pruebas_editar").click(function(e){
        e.preventDefault();

        var etiqueta_pruebas = "{{$pruebas_solicitadas}}";
        $('#cuerpo_comunicado_editar').summernote('editor.insertText', etiqueta_pruebas);
    });

    /* Funcionalidad radio buttons Solicitud documentos Origen y Otro documento (edición) */
    $("[name='tipo_documento_descarga_califi_editar']").on("change", function(){
        var opc_seleccionada = $(this).val();
        $("#asunto_editar").prop('readonly', true);
        $(".note-editable").attr("contenteditable", false);
        if (opc_seleccionada == "Documento_PCL") {
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("SOLICITUD DOCUMENTOS CALIFICACIÓN DE PÉRDIDA DE CAPACIDAD LABORAL");
            // Traemos la lista de los documentos solicitados y lo insertamos junto con el texto en el cuerpo del comunicado
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos_lista_soli_docs = {
                '_token': token,
                'parametro':"listado_solicitud_documentos",
                'id_proceso': id_proceso,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion 
            };
            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_soli_docs,
                success:function(data){

                    if (data.length > 0) {
                        var listado = '<ul>';
                        let listado_solicitud_documentos = Object.keys(data);
                        for (let i = 0; i < listado_solicitud_documentos.length; i++) {
                            var documento = data[listado_solicitud_documentos[i]];
                            var nombre = documento['Nombre_documento'] ? documento['Nombre_documento'] : '';
                            var descripcion = documento['Descripcion'] ? documento['Descripcion'] : '';
                            
                            if (nombre || descripcion) {
                                listado += '<li><b>'+descripcion+'</b></li>';
                            }
                        }
    
                        listado += '</ul>';
                        
                    } else {
                        listado = '';
                    }
                    var texto_insertar = "<p>Respetado(a) Señor(a),</p>"+
                        "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías Protección S.A.</p>"+
                        "<p>Con ocasión a la documentación médica radicada para el trámite de estudio de su prestación económica, respetuosamente, nos permitimos "+
                        "indicarle que luego de evaluar el contenido de la documentación aportada por usted, no obstante, a que la información suministrada es relevante, "+
                        "se hace necesario que allegue los documentos que se enuncian a continuación:</p>"
                        +listado+
                        "<p>Es indispensable el aporte de la historia clínica completa para la evaluación médica llevada a cabo por la Comisión Médico Laboral de Protección S.A., "+
                        "quien establecerá los criterios necesarios para una adecuada revisión. Lo anterior se solicita de acuerdo a lo establecido en el literal a, del artículo 4 del "+
                        "decreto 917 de 1999, que señala:"+
                        '<p class="cuerpo_doc_revPen">“<strong>REQUISITOS Y PROCEDIMIENTOS PARA LA CALIFICACIÓN DE LA INVALIDEZ Y LA FUNDAMENTACIÓN DEL DICTAMEN.</strong><br>'+
                        'Para efectos de la calificación de la invalidez, los calificadores se orientarán por los requisitos y procedimientos establecidos en el presente manual para emitir '+
                        'un dictamen. Deben tener en cuenta que dicho dictamen es el documento que, con carácter probatorio, contiene el concepto experto que los calificadores emiten sobre '+
                        'el grado de la incapacidad permanente parcial, la invalidez o la muerte de un afiliado y debe fundamentarse en: <br>'+
                        'a) Consideraciones de orden fáctico sobre la situación que es objeto de evaluación, donde se relacionan los hechos ocurridos que dieron lugar al accidente, '+
                        'la enfermedad o la muerte, indicando las circunstancias de modo, tiempo y lugar dentro de las cuales sucedieron; y el DIAGNÓSTICO CLÍNICO de carácter técnico-científico, '+
                        'soportado en la historia clínica, la historia ocupacional y con las ayudas de diagnóstico requeridas de acuerdo con la especificidad del problema…”</p>'+
                        '<p class="texto_con_padding">A su vez, la ley 1507 de 2014, en su artículo 3, inciso 13 establece: </p>'+
                        '<p class="cuerpo_doc_revPen">“Esta fecha (de estructuración) debe soportarse en la historia clínica, los exámenes clínicos y de ayuda diagnóstica y puede ser anterior '+
                        'o corresponder a la fecha de la declaratoria de la perdida de la capacidad laboral”.</p>'+
                        '<p>Por lo tanto, esta Administradora le concede el término de <strong>un (1) mes</strong>  contado a partir de la recepción de la presente comunicación, vencido el mismo sin cumplir '+
                        'con el requerimiento, se procederá a dar <strong>DESISTIMIENTO</strong> de su solicitud y archivo de la misma, de acuerdo con el artículo 17 de la ley 1437 de 2011, que señala:</p>'+
                        '<p class="cuerpo_doc_revPen">“…Cuando en el curso de una actuación administrativa la autoridad advierta que el peticionario debe realizar una gestión de trámite a '+
                        'su cargo, necesaria para adoptar una decisión de fondo, lo requerirá por una sola vez para que la efectúe en el término de un (1) mes, lapso durante el cual se '+
                        'suspenderá el término para decidir.<br>'+
                        '<strong>Se entenderá que el peticionario ha desistido de su solicitud o de la actuación cuando no satisfaga el requerimiento</strong>, salvo que antes de vencer el plazo concedido '+
                        'solicite prórroga hasta por un término igual”.</p>'+
                        "<p>Así las cosas, la anterior documentación es indispensable en los criterios que definen la calificación del estado de invalidez y no se puede realizar el dictamen "+
                        'sin la presencia de los mismos. Por ello, mientras la documentación faltante no sea allegada y no sea posible realizar un análisis adecuado de las circunstancias de '+
                        'hecho y de derecho, se entenderá que la solicitud no se ha recibido en debida forma, por lo que no será posible realizar la calificación de pérdida de capacidad '+
                        'laboral y en el caso en que definitivamente usted decida no allegar la documentación faltante en el término señalado, la Administradora deberá proceder con el cierre '+
                        'del trámite.</p>'+
                        "<p>La documentación debe ser allegada a cualquiera de las Oficinas de Servicio de Protección S.A más cercana o remitirla al correo electrónico "+
                        'documentos.calificacion@proteccion.com.co (El peso máximo del adjunto no podrá ser superior a 20 MB, por lo tanto, si excede esta capacidad deber remitir '+
                        'la información en varios correos); así mismo aclaramos que, este correo electrónico es únicamente para recibir documentación.</p>'+
                        "<p>Esperamos haber atendido satisfactoriamente su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna duda "+
                        "o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o comunicarse "+
                        "con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099, Barranquilla 319 7999, Cartagena 6424999 y desde el resto del país 01 8000 52 8000.</p>";
                    $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);
                }
            });

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas: Eps y AFP Conocimiento
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_eps").prop('checked', true);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#firmarcomunicado_editar").prop('checked', true);

        }else if (opc_seleccionada == "Formato_B_Revision_pension") {
            if(idRol == 6){
                $("#asunto_editar").prop('readonly', false);
                $(".note-editable").attr("contenteditable", true);
            }
            $("#asunto_editar").val("RATIFICACIÓN DEL ESTADO DE INVALIDEZ");
            var texto_insertar = "<p>Aprecido(a) {{$nombre_afiliado}}, </p>"+
            "<p>En <b>PROTECCIÓN</b> estamos para guiarle y acompañarle en cada momento de su vida. Como es de su conocimiento y de acuerdo con lo establecido "+ 
            "en el artículo 44 de la Ley 100 de 1993, esta Administradora solicitó copia de su historia clínica con el fin de revisar el estado de su invalidez.</p>"+
            "<p>Una vez revisada la documentación allegada, tenemos que <b>persisten</b> los diagnósticos que dieron lugar a la invalidez decretada en su oportunidad, sin que ocurran "+
            "cambios significativos en su estado de salud, en consecuencia, queremos informarle que Protección continuará con el reconocimiento de la pensión de invalidez y, "+
            "por ende, continuará con el pago de su mesada pensional.</p>"+
            "<p>Le agradecemos la confianza depositada en nosotros durante estos años y le recordamos que cuenta con nuestra asesoría. Ante cualquier duda, puede comunicarse "+
            "a nuestra Línea de Servicio: Bogotá: 744 44 64, Medellín y Cali: 510 90 99 Barranquilla: 319 79 99, Cartagena: 642 49 99 y desde el resto del país: 01 8000 52 8000.</p>";
            $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);
            

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('checked', true);

        }else if (opc_seleccionada == "Documento_Revision_pension") {
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("SOLICITUD DE DOCUMENTOS PARA REVISIÓN DE ESTADO DE INVALIDEZ");
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos_lista_soli_docs = {
                '_token': token,
                'parametro':"listado_solicitud_documentos",
                'id_proceso': id_proceso,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion 
            };
            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_soli_docs,
                success:function(data){
                    if (data.length > 0) {
                        var listado = '<ul>';
                        let listado_solicitud_documentos = Object.keys(data);
                        for (let i = 0; i < listado_solicitud_documentos.length; i++) {
                            var documento = data[listado_solicitud_documentos[i]];
                            var nombre = documento['Nombre_documento'] ? documento['Nombre_documento'] : '';
                            var descripcion = documento['Descripcion'] ? documento['Descripcion'] : '';
                            
                            if (nombre || descripcion) {
                                listado += '<li><b>'+descripcion+'</b></li>';
                            }
                        }

                        listado += '</ul>';
                        
                    } else {
                        listado = '';
                    }
                    var texto_insertar = '<p>Respetado(a) Señor(a)</p>'+
                        '<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>'+
                        '<p>En respuesta a la documentación médica radicada para la solicitud de estudio de su revisión del estado de invalidez, respetuosamente nos permitimos '+
                        'indicar que luego de evaluar el contenido se evidenció que hace falta documentación referente a su Historia Clínica, por lo tanto, se hace necesario que '+
                        'allegue los documentos que se enuncian a continuación:</p>'+
                        listado+
                        '<p>Solicitamos que, en un término no superior a <b>tres (3) meses</b>, sea recibida la información que define la calificación de tu estado de invalidez '+
                        'a la oficina de <b>PROTECCIÓN</b> más cercana a su ciudad, o se envíe al correo electrónico documentos.calificacion@proteccion.com.co. De esta manera, '+
                        'cumplido el tiempo indicado si la documentación solicitada no ha sido aportada, <b>se deberá suspender el pago de las mesadas pensionales</b> '+
                        'y la misma sólo podrá reactivarse con la presentación de los documentos. En caso de no poder tenerla en ese lapso de tiempo por favor informar de manera '+
                        'escrita el motivo, toda vez que esta documentación es necesaria para la revisión de su estado de invalidez.</p>'+
                        '<p>Lo anterior, está fundamentado en el artículo 44 de la ley 100 de 1993, que al establecer las condiciones en las cuales se realiza el proceso de revisión '+
                        'de las pensiones de invalidez ha establecido:</p>'+
                        '<p class="cuerpo_doc_revPen">“[...]<strong>ARTÍCULO 44. REVISIÓN DE LAS PENSIONES DE INVALIDEZ.</strong> El estado de invalidez podrá <br>'+
                        'revisarse: <br>'+
                        'a) Por solicitud de la entidad de previsión o seguridad social correspondiente cada tres (3) años, '+
                        'con el fin de ratificar, modificar o dejar sin efectos el dictamen que sirvió de base para la liquidación '+
                        'de la pensión que disfruta su beneficiario y proceder a la extinción, disminución o aumento de la '+
                        'misma, si a ello hubiera lugar.<br>'+
                        'Este nuevo dictamen se sujeta a las reglas de los artículos anteriores. <br>'+
                        'El pensionado tendrá un plazo de tres (3) meses contados a partir de la fecha de dicha solicitud, '+
                        'para someterse a la respectiva revisión del estado de invalidez. Salvo casos de fuerza mayor, <strong>si el '+
                        'pensionado no se presenta o impide dicha revisión dentro de dicho plazo, se suspenderá el pago de '+
                        'la pensión.</strong> Transcurridos doce (12) meses contados desde la misma fecha sin que el pensionado '+
                        'se presente o permita el examen, la respectiva pensión prescribirá. '+
                        'Para readquirir el derecho en forma posterior, el afiliado que alegue permanecer inválido deberá '+
                        'someterse a un nuevo dictamen. Los gastos de este nuevo dictamen serán pagados por el afiliado [...]”</p>'+
                        '<p>Esperamos haber atendido satisfactoriamente su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna '+
                        'duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o '+
                        'comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 y desde el resto del país '+
                        '01 8000 52 8000.</p>';
                        $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);
                    }
            });
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas: Eps
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', true);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#firmarcomunicado_editar").prop('checked', true);

        }else if (opc_seleccionada == "Reiteracion_Documento_Revision_pension") {
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("REITERACIÓN SOLICITUD DOCUMENTOS PARA REVISIÓN ESTADO DE INVALIDEZ");
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos_lista_soli_docs = {
                '_token': token,
                'parametro':"listado_solicitud_documentos",
                'id_proceso': id_proceso,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion 
            };
            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_soli_docs,
                success:function(data){
                    if (data.length > 0) {
                        var listado = '<ul>';
                        let listado_solicitud_documentos = Object.keys(data);
                        for (let i = 0; i < listado_solicitud_documentos.length; i++) {
                            var documento = data[listado_solicitud_documentos[i]];
                            var nombre = documento['Nombre_documento'] ? documento['Nombre_documento'] : '';
                            var descripcion = documento['Descripcion'] ? documento['Descripcion'] : '';
                            
                            if (nombre || descripcion) {
                                listado += '<li><b>'+descripcion+'</b></li>';
                            }
                        }

                        listado += '</ul>';
                        
                    } else {
                        listado = '';
                    }
                    // Obtener fecha del documento de solicitud de documentos de revisión pensión
                    let datos = {
                        '_token': token,
                        'id_evento': id_evento,
                        'id_asignacion': id_asignacion,
                        'id_proceso': id_proceso,
                        'tipo_documento': 'Reiteracion_Documento_Revision_pension'
                    };

                    $.ajax({
                        type: 'POST',
                        url: '/getInfoComuCorres',
                        data: datos,
                        success: function (infoData) {
                            let F_notificación_sol_doc_rev_pen = '(DIGITE LA FECHA DE PRIMER COMUNICADO)';
                            if(infoData['F_notificacion_sol_doc_rev_pen']){
                                F_notificación_sol_doc_rev_pen = infoData['F_notificacion_sol_doc_rev_pen'];

                                var partesFecha = F_notificación_sol_doc_rev_pen.split("-");
                                F_notificación_sol_doc_rev_pen = `${partesFecha[2]}/${partesFecha[1]}/${partesFecha[0]}`;
                            }
                            var texto_insertar = '<p>Respetado(a) Señor(a)</p>'+
                                '<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>'+
                                '<p>En respuesta a la documentación médica radicada para la solicitud de estudio de su revisión del estado de invalidez, respetuosamente nos permitimos '+
                                'indicar que luego de evaluar el contenido se evidenció que hace falta documentación referente a su Historia Clínica, por lo tanto, se hace necesario que '+
                                'allegue los documentos que se enuncian a continuación:</p>'+
                                listado+
                                '<p>Mediante {{$forma_envio}} del <b>'+F_notificación_sol_doc_rev_pen+'</b>, esta Administradora le solicitó la documentación anterior con la finalidad de '+
                                'revisar su condición de invalidez, de igual forma, se le indicó que contaba con un término de tres (3) meses para aportarla o de lo contrario se '+
                                'procedería con la suspensión de la mesada pensional.</p>'+
                                '<p>Así las cosas, con el objetivo de evitarle la suspensión de la mesada pensional, se le reitera que cuenta con un último plazo de <b>un (1) mes para '+
                                'que allegue la información solicitada, de lo contrario, procederemos con la suspensión, tal y como lo señala el literal a. del artículo 44 de la ley '+
                                '100 de 1993.</b> Es muy importante que tenga presente que después de doce (12) meses sin adjuntar los documentos empezará a correr la prescripción de mesadas.</p>'+
                                '<p>Finalmente, le informamos que la documentación puede ser aportada en cualquier momento en la oficina de <b>PROTECCIÓN</b> más cercana a su ciudad, o al '+
                                'correo electrónico documentos.calificacion@proteccion.com.co, esto con el fin de realizar el procedimiento de revisión. El tamaño de los archivos no '+
                                'puede ser superior a 20 MB, si excede este límite, debe remitirnos la información en varios correos.</p>'+
                                '<p>Esperamos haber atendido satisfactoriamente su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna '+
                                'duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o '+
                                'comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 y desde el resto del país '+
                                '01 8000 52 8000.</p>';
                            $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);
                        }
                    })
                }
            });
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas: Eps
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', true);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#firmarcomunicado_editar").prop('checked', true);

        }else if (opc_seleccionada == "Suspension_Mesada_Revision_pension") {
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("INFORMACIÓN SOBRE SUSPENSIÓN DE MESADA PENSIONAL");
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos = {
                '_token': token,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion,
                'id_proceso': id_proceso,
                'tipo_documento':'Suspension_Mesada_Revision_pension'
            };
            $.ajax({
                type:'POST',
                url:'/getInfoComuCorres',
                data: datos,
                success:function(data){
                    let F_notificación_sol_doc_rev_pen = '(DIGITE LA FECHA DE PRIMER COMUNICADO)';
                    let F_notificación_reiteracion_sol_doc_rev_pen = '(DIGITE LA FECHA DEL SEGUNDO COMUNICADO)';
                    if (data['F_notificacion_sol_doc_rev_pen']) {
                        F_notificación_sol_doc_rev_pen = data['F_notificacion_sol_doc_rev_pen'];
                        let partes_fecha = F_notificación_sol_doc_rev_pen.split("-");
                        F_notificación_sol_doc_rev_pen = `${partes_fecha[2]}/${partes_fecha[1]}/${partes_fecha[0]}`;
                    }
                    if (data['F_notificacion_reiteracion_sol_doc_rev_pen']) {
                        F_notificación_reiteracion_sol_doc_rev_pen = data['F_notificacion_reiteracion_sol_doc_rev_pen'];

                        var partesFecha = F_notificación_reiteracion_sol_doc_rev_pen.split("-");
                        F_notificación_reiteracion_sol_doc_rev_pen = `${partesFecha[2]}/${partesFecha[1]}/${partesFecha[0]}`;
                    }
                    var texto_insertar = '<p>Respetado(a) Señor(a),</p>'+
                    '<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>'+
                    '<p>Mediante {{$forma_envio}} del <b>'+F_notificación_sol_doc_rev_pen+'</b>, esta Administradora le solicitó <b>una copia actualizada a la fecha de toda la historia '+
                    'clínica incluyendo sus complementos</b> con la finalidad de revisar su condición de invalidez, para ese momento se le otorgó un término tres (3) meses para aportarla, '+
                    'transcurrido este término, sin que se hubiere allegado la documentación, esta Administradora nuevamente mediante {{$forma_envio}} '+
                    'del <b>'+F_notificación_reiteracion_sol_doc_rev_pen+'</b>, le otorgó un último plazo de un (1) mes para aportarla o de '+
                    'lo contrario se procedería con la suspensión de la mesada pensional.</p>'+
                    '<p>Así las cosas, habiendo transcurrido los términos otorgados para que pudiera allegar la historia clínica actualizada a la fecha y poder realizar de esta '+
                    'manera el proceso de revisión del estado de invalidez, queremos informarle que hemos procedido con la suspensión de su mesada pensional, <b>tal y como lo señala '+
                    'el literal a. del artículo 44 de la ley 100 de 1993.</b> Es muy importante que tenga presente que después de doce (12) meses sin adjuntar los documentos empezará '+
                    'a correr la prescripción de mesadas.</p>'+
                    '<p>Finalmente, le informamos que la documentación puede ser aportada en cualquier momento en la oficina de <b>PROTECCIÓN</b> más cercana a su ciudad, o al '+
                    'correo electrónico documentos.calificacion@proteccion.com.co, esto con el fin de realizar el procedimiento de revisión. El tamaño de los archivos no puede '+
                    'ser superior a 20 MB, si excede este límite, debe remitirnos la información en varios correos.</p>'+
                    '<p>Esperamos haber atendido satisfactoriamente su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna '+
                    'duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o '+
                    'comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 y desde el resto del país '+
                    '01 8000 52 8000.</p>';
                    $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);
                }
            });
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', false);
            $("#firmarcomunicado_editar").prop('checked', false);

        }else if (opc_seleccionada == "Documento_No_Recalificacion") {
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("RESPUESTA A SOLICITUD DE CALIFICACIÓN PÉRDIDA DE CAPACIDAD LABORAL");

            var texto_insertar = '<p>Apreciado(a) {{$nombre_afiliado}},</p>'+
            '<p>En Protección estamos para guiarle y acompañarle en cada momento de su vida. Con ocasión de la solicitud de calificación de pérdida de capacidad laboral '+
            'radicada por usted, la Administradora de Fondo de Pensiones y Cesantías <b>PROTECCIÓN</b> se permite dar respuesta en los términos que se describen a continuación. '+
            '<p>(Sustentación)</p>'+
            '<p>Le agradecemos la confianza depositada en nosotros durante estos años y le recordamos que cuenta con nuestra asesoría. Ante cualquier duda, puede comunicarse '+
            'a nuestra Línea de Servicio: Bogotá: 744 44 64, Medellín y Cali: 510 90 99, Barranquilla: 319 79 99, Cartagena: 642 49 99 y desde el resto del país: 01 8000 52 8000.</p>';

            $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);
            $('#btn_insertar_Origen_editar').removeClass('d-none')
            $('#btn_insertar_nombreCIE10_editar').removeClass('d-none')
            $('#btn_insertar_porPcl_editar').removeClass('d-none')
            $('#btn_insertar_F_estructuracion_editar').removeClass('d-none')
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Deselección automática de las copias a partes interesadas: Eps
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#firmarcomunicado_editar").prop('checked', true);
        }else if (opc_seleccionada == "Desistimiento_PCL") {
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("DESISTIMIENTO TÁCITO DE SOLICITUD DE CALIFICACIÓN DE PCL");
            // Traemos la lista de los documentos solicitados y lo insertamos junto con el texto en el cuerpo del comunicado
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos_lista_soli_docs = {
                '_token': token,
                'parametro':"listado_solicitud_documentos",
                'id_proceso': id_proceso,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion 
            };
            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_soli_docs,
                success:function(data){

                    if (data.length > 0) {
                        var listado = '<ul>';
                        let listado_solicitud_documentos = Object.keys(data);
                        for (let i = 0; i < listado_solicitud_documentos.length; i++) {
                            var documento = data[listado_solicitud_documentos[i]];
                            var nombre = documento['Nombre_documento'] ? documento['Nombre_documento'] : '';
                            var descripcion = documento['Descripcion'] ? documento['Descripcion'] : '';
                            
                            if (nombre || descripcion) {
                                listado += '<li><b>'+descripcion+'</b></li>';
                            }
                        }
    
                        listado += '</ul>';
                        
                    } else {
                        listado = '';
                    }
                    var texto_insertar = "<p>Respetado(a) Señor(a),</p>"+
                        "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías Protección S.A.</p>"+
                        "<p>Nos permitimos indicarle que luego de evaluar el contenido de la documentación aportada por usted, se evidenció que la misma se encontraba "+
                        "incompleta, esto le fue informado en días pasados, y se indicó que era necesario que, en un término no superior a un (1) mes, allegara los documentos "+
                        "que registraban faltantes anunciados a continuación:</p>"+
                        listado+
                        "<p>Vencido el plazo informado en dicha comunicación, se pudo constatar por parte de <b>PROTECCIÓN S.A.</b> que usted no aportó dentro del plazo concedido "+
                        "la documentación requerida ni informó sobre la imposibilidad de obtener el documento o cumplir con la gestión.</p>"+
                        "<p>Así las cosas y en aplicación del artículo 17 de la Ley 1755 de 2015, se procede a decretar el <b>DESISTIMIENTO</b> frente a su solicitud de calificación "+
                        "de Pérdida de capacidad laboral (PCL) y en consecuencia se <u>ARCHIVA</u> la mencionada solicitud.</p>"+
                        "<p>No obstante, usted cuenta con el derecho de presentar nuevamente la solicitud con el lleno de los requisitos legales. Si tiene alguna duda o quiere "+
                        "conocer más acerca de esta información, puede escribirnos a clientes@proteccion.com.co o comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en "+
                        "Medellín y Cali 5109099, Barranquilla 319 7999, Cartagena 6424999 y desde el resto del país 01 8000 52 8000.</p>";
                    $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);
                }
            });

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#firmarcomunicado_editar").prop('checked', true);

        }else if (opc_seleccionada == "Cierre_MMM_PCL") {
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("CIERRE ADMINISTRATIVO SOLICITUD DE CALIFICACIÓN PCL");
            var texto_insertar = "<p>Respetado(a) Señor(a),</p>"+
                "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>Protección S.A.</b></p>"+
                "<p>Nos permitimos informarle que luego de evaluar el contenido de la documentación aportada por usted, se evidenció que aún se encuentra mediando "+
                "tratamiento en su EPS, y aún no alcanza la mejoría médica máxima por lo que no es posible proceder con la calificación de su pérdida de capacidad laboral (PCL).</p>"+
                "<p>Lo anterior debido al Anexo Técnico - Manual Único para la Calificación de la Pérdida de Capacidad Laboral y Ocupacional expedido por orden del Decreto 1507 "+
                "de 2014, el cual establece en el Título Preliminar, lo siguiente:</p>"+
                '<p class="cuerpo_doc_revPen"><b>4.6. MEJORÍA MÉDICA MÁXIMA “MMM”:</b> Punto en el cual la condición patológica se estabiliza sustancialmente y es poco probable que '+
                'cambie, ya sea para mejorar o empeorar, en el próximo año, con o sin tratamiento (…)</p>'+
                '<p class="cuerpo_doc_revPen"><b>5. METODOLOGÍA PARA LA DETERMINACIÓN DEL GRADO EN UNA CLASE DE DEFICIENCIA:</b> Se realizará cuando la persona objeto de calificación alcance la mejoría médica '+
                'máxima (MMM) o cuando termine el proceso de rehabilitación integral y en todo caso antes de superar los quinientos cuarenta (540) días de haber ocurrido el '+
                'accidente o diagnóstico de la enfermedad (…)</p>'+
                "<p>Por tal motivo su trámite será finalizado hasta tanto, culmine dicho tratamiento. Una vez este se encuentre terminado, solicitamos radicar de nuevo su "+
                "solicitud, aportando historia clínica vigente y concepto de los médicos tratantes, documento con el cual se evaluará nuevamente el caso para poder emitir "+
                "una calificación de pérdida de capacidad laboral.</p>"+
                "<p>Así mismo, es importante aclarar que no procede el pago de incapacidades médicas a su nombre, puesto que dicho subsidio será otorgado únicamente por el "+
                "Fondo de Pensiones <b>PROTECCIÓN S.A.</b>, a aquella persona afiliada remitida por su Entidad Promotora de Salud (EPS) con un pronóstico de recuperación favorable, "+
                "evento que no ocurre en su situación particular.</p>"+
                "<p>Esperamos haber atendido su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna duda o quiere conocer "+
                "más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o comunicarse con nuestra "+
                "Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 y desde el resto del país 01 8000 52 8000.</p>";
            $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#firmarcomunicado_editar").prop('checked', true);

        }else if (opc_seleccionada == "Cierre_Cita_PCL") {
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("CIERRE ADMINISTRATIVO SOLICITUD DE CALIFICACIÓN PCL");
            var texto_insertar = "<p>Respetado(a) Señor(a):</p>"+
                "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>"+
                "<p>Una vez evaluada su solicitud de trámite ante el fondo de pensiones y teniendo presente la legislación actual vigente, decreto 2463 del 2001 y decreto 917/1999, "+
                "encontramos que es indispensable que usted asista a las citas de evaluación funcional y aporte Historia Clínica solicitada.</p>"+
                '<p>Por lo tanto, se evidencia que usted no asistió a la segunda cita de valoración funcional el día <b>{{$segunda_fecha}}</b>.</p>'+
                '<p>En virtud de lo anterior, nos permitimos informarle que, a partir de la fecha de notificación de la presente carta, hemos dado por terminada su reclamación '+
                'ante el fondo, ya que ha operado el <b>DESISTIMIENTO</b> tácito de su trámite.</p>'+
                '<p class="cuerpo_doc_revPen">“…Cuando en el curso de una actuación administrativa la autoridad advierta que el peticionario debe realizar una gestión de '+
                'trámite a su cargo, necesaria para adoptar una decisión de fondo, lo requerirá por una sola vez para que la efectúe en el término de un (1) mes, lapso durante '+
                'el cual se suspenderá el término para decidir.</p>'+
                '<p class="cuerpo_doc_revPen"><b>Se entenderá que el peticionario ha desistido de su solicitud o de la actuación cuando no satisfaga el requerimiento</b>, salvo que antes de vencer el plazo '+
                'concedido solicite prórroga hasta por un término igual”.</p>'+
                "<p>No obstante, lo anterior le informamos que la solicitud de reapertura de su caso puede ser presentada en cualquier momento con los documentos que se "+
                "requieran para el estudio del mismo, con la finalidad de que exista un pronunciamiento de fondo. </p>"+
                "<p>Si tiene alguna duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web "+
                "www.proteccion.com y App o comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 "+
                "y desde el resto del país 01 8000 52 8000.</p>";
            $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#firmarcomunicado_editar").prop('checked', true);

        }else if (opc_seleccionada == "Firmeza_PCL") {
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("FIRMEZA DE DICTAMEN DE PÉRDIDA DE CAPACIDAD LABORAL");
            var texto_insertar = "<p>Reciba un cordial saludo de <b>PROTECCIÓN S.A</b></p>"+
                "<p>En atención al Artículo 45 del Decreto 1352 de 2013, nos permitimos informar que <b>PROTECCIÓN S.A.</b>, emitió el dictamen N° <b>{{$N_Dictamen}}</b> de Pérdida de "+
                "Capacidad Laboral (PCL) el día <b>{{$F_visado_comite}}</b>, donde se determinó un porcentaje del <b>{{$PCL}}%</b>, origen <b>{{$Tipo_evento}} {{$Origen}}</b> y fecha de "+
                "estructuración del <b>{{$Fecha_estructuracion}}</b> notificado efectivamente a todas las partes.</p>"+
                "<p>Así la cosas, hechas las respectivas validaciones encontramos que ninguna de las partes interesadas manifestó desacuerdo contra el dictamen en los tiempos "+
                "establecidos por la norma, por lo anterior, confirmamos que la calificación de Pérdida de Capacidad Laboral (PCL) realizada <b><u>se encuentra en firme.</b></u></p>"+
                '<p>Le agradecemos la confianza depositada en nosotros durante estos años y le recordamos que cuenta con nuestra asesoría. Ante cualquier duda, puede comunicarse '+
                'a nuestra Línea de Servicio: Bogotá: 744 44 64, Medellín y Cali: 510 90 99 Barranquilla: 319 79 99, Cartagena: 642 49 99 y resto del país: 01 8000 52 8000.</p>';
            $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', true);
            

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#firmarcomunicado_editar").prop('checked', true);

        }else if (opc_seleccionada == 'No_Localizacion'){
            $("#asunto_editar").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto_editar").val("CIERRE ADMINISTRATIVO SOLICITUD DE CALIFICACIÓN POR NO LOCALIZACIÓN");
            var texto_insertar = "<p>Respetado(a) Señor(a):</p>"+
            "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>"+
            "<p>Una vez evaluada su solicitud de trámite ante el fondo de pensiones y teniendo presente la legislación actual vigente, "+
            "decreto 2463 del 2001 y decreto 1507 del 2014, encontramos que es indispensable que usted sea citado y valorado por medicina laboral.</p>"+
            "<p>Por lo tanto, se evidencia que no ha sido posible contacto con usted para asignar la cita, debido a que los teléfonos proporcionados no son efectivos.</p>"+
            "<p>En virtud de lo anterior nos permitimos informarle que, a partir de la fecha de notificación de la presente carta, hemos dado por terminada su reclamación ante el fondo, ya que ha operado el <b>DESISTIMIENTO</b> tácito de su trámite.</p>"+
            "<p class='cuerpo_doc_revPen'>“…Cuando en el curso de una actuación administrativa la autoridad advierta que el peticionario debe realizar una gestión de trámite a su cargo, "+
            "necesaria para adoptar una decisión de fondo, lo requerirá por una sola vez para que la efectúe en el término de un (1) mes, lapso durante el cual se suspenderá el término para decidir. "+
            "<b>Se entenderá que el peticionario ha desistido de su solicitud o de la actuación cuando no satisfaga el requerimiento</b>, salvo que antes de vencer el plazo concedido solicite prórroga hasta por un término igual”.</p>"+
            "<p>No obstante, lo anterior le informamos que la solicitud de reapertura de su caso puede ser presentada en cualquier momento con los documentos que se requieran para el estudio del mismo, con la finalidad de que exista un pronunciamiento de fondo.</p>"+
            "<p>Si tiene alguna duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o "+
            "comunicarse con nuestra línea de servicio en Bogotá 7444464, en Medellín y Cali 5109099, Barranquilla 319 7999, Cartagena 6424999 y desde el resto del país 01 8000 52 8000.</p>";
            
            $('#cuerpo_comunicado_editar').summernote('code', texto_insertar);

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').click();

             // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Deselección automática de las copias a partes interesadas:
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', true);
            $("#firmarcomunicado_editar").prop('checked', true);

        }
        else{
            $("#asunto_editar").val("");
            $('#cuerpo_comunicado_editar').summernote('code', '');
            $('#btn_insertar_Origen_editar').addClass('d-none');
            $('#btn_insertar_nombreCIE10_editar').addClass('d-none');
            $('#btn_insertar_porPcl_editar').addClass('d-none');
            $('#btn_insertar_F_estructuracion_editar').addClass('d-none');

            // Quitar auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado_editar').prop('checked', false);

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos_editar").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#edit_copia_afiliado").prop('checked', false);
            $("#edit_copia_empleador").prop('checked', false);
            $("#edit_copia_afp").prop('checked', false);
            $("#edit_copia_eps").prop('checked', false);
            $("#edit_copia_arl").prop('checked', false);
            $("#edit_copia_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado_editar").prop('disabled', false);
            $("#firmarcomunicado_editar").prop('checked', false);

        }
    });  
    
    $("#btn_insertar_Origen_editar").click(function(e){
        e.preventDefault();

        var etiqueta_nombreCIE10 = "{{$OrigenPcl_dp}}";
        $('#cuerpo_comunicado_editar').summernote('editor.insertText', etiqueta_nombreCIE10);
    });

    $("#btn_insertar_nombreCIE10_editar").click(function(e){
        e.preventDefault();

        var etiqueta_nombreCIE10 = "{{$CIE10Nombres}}";
        $('#cuerpo_comunicado_editar').summernote('editor.insertText', etiqueta_nombreCIE10);
    });

    $("#btn_insertar_porPcl_editar").click(function(e){
        e.preventDefault();

        var etiqueta_porPCL = "{{$PorcentajePcl_dp}}";
        $('#cuerpo_comunicado_editar').summernote('editor.insertText', etiqueta_porPCL);
    });  
    
    $("#btn_insertar_F_estructuracion_editar").click(function(e){
        e.preventDefault();

        var etiqueta_F_estructuracion = "{{$F_estructuracionPcl_dp}}";
        $('#cuerpo_comunicado_editar').summernote('editor.insertText', etiqueta_F_estructuracion);
    }); 

    // Función para verificar si todos los campos están llenos al momento de guardar el comunicado
    function verificarCamposLlenosGuardar() {
        var todosLlenos = true;
        // Lista de IDs de los campos que quieres verificar
        var camposIDs = ['#nombre_destinatario', '#nic_cc', '#direccion_destinatario', '#telefono_destinatario',
        '#email_destinatario', '#departamento_destinatario_editar', '#departamento_destinatario', '#asunto', 
        '#cuerpo_comunicado', '#forma_envio', '#reviso'];
        
        // Verifica cada campo por su ID
        camposIDs.forEach(function(id) {
            var campo = $(id);
            if (campo.is('input, select, textarea') && campo.val() === '') {
                todosLlenos = false;
                return false; // Sale del bucle si encuentra un campo vacío
            }
        });
        return todosLlenos;
    }

    // Temporizador que se ejecuta cada segundo
    setInterval(function() {
        if (verificarCamposLlenosGuardar()) {
            // Si todos los campos están llenos, habilita el botón
            if (idRol == 7) {
                $('#Generar_comunicados').prop('disabled', true); 
            } else {
                $('#Generar_comunicados').prop('disabled', false); 
            }
            // $('#Pdf').prop('disabled', false);           
        } else {
            // Si hay campos vacíos, deshabilita el botón
            $('#Generar_comunicados').prop('disabled', true); 
            // $('#Pdf').prop('disabled', true);           
        }
    }, 1000); // 1000 milisegundos = 1 segundo

    // Función para verificar si todos los campos están llenos al momento de actualizar el comunicado
    function verificarCamposLlenos() {
        var todosLlenos = true;
        // Lista de IDs de los campos que quieres verificar
        var camposIDs = ['#nombre_destinatario_editar', '#nic_cc_editar', '#direccion_destinatario_editar', '#telefono_destinatario_editar',
        '#email_destinatario_editar', '#departamento_destinatario_editar', '#ciudad_destinatario_editar', '#asunto_editar', 
        '#cuerpo_comunicado_editar', '#forma_envio_editar', '#reviso_editar'];
        
        // Verifica cada campo por su ID
        camposIDs.forEach(function(id) {
            var campo = $(id);
            if (campo.is('input, select, textarea') && campo.val() === '') {
                todosLlenos = false;
                return false; // Sale del bucle si encuentra un campo vacío
            }
        });
        return todosLlenos;
    }
    
    // Temporizador que se ejecuta cada segundo
    setInterval(function() {
        if (verificarCamposLlenos()) {
            // Si todos los campos están llenos, habilita el botón
            if (idRol == 7) {
                $('#Editar_comunicados').prop('disabled', true); 
            } else {
                $('#Editar_comunicados').prop('disabled', false); 
            }
            // $('#Pdf').prop('disabled', false);           
        } else {
            // Si hay campos vacíos, deshabilita el botón
            $('#Editar_comunicados').prop('disabled', true); 
            // $('#Pdf').prop('disabled', true);           
        }
    }, 1000); // 1000 milisegundos = 1 segundo

    // Captura de data para el fomulario de actualizar el comunicado

    $('#Editar_comunicados').click(function (e) {    
        e.preventDefault();  
        $('#Pdf').prop('disabled', false);
        $("#Editar_comunicados").prop('disabled', true);
        $("#Editar_comunicados").addClass('d-none');
        $("#mostrar_barra_actualizacion_comunicado").removeClass('d-none');     
        var Id_comunicado = $('#Id_comunicado_act').val();
        var ciudad = $('#ciudad_comunicado_editar').val();
        var Id_evento = $('#Id_evento_act').val();
        var Id_asignacion = $('#Id_asignacion_act').val();
        var Id_procesos = $('#Id_procesos_act').val();
        var fecha_comunicado2 = $('#fecha_comunicado2_editar').val();
        var radicado2 = $('#radicado2_comunicado_editar').val();
        var cliente_comunicado2 = $('#cliente_comunicado2_editar').val();
        var nombre_afiliado_comunicado2 = $('#nombre_afiliado_comunicado2_editar').val();
        var tipo_documento_comunicado2 = $('#tipo_documento_comunicado2_editar').val();
        var identificacion_comunicado2 = $('#identificacion_comunicado2_editar').val();                       
        var afiliado_comunicado = $('#afiliado_comunicado_editar').prop('checked');
        var empresa_comunicado = $('#empresa_comunicado_editar').prop('checked');
        var Otro = $('#Otro_editar').prop('checked');
        var radioafiliado_comunicado;
        var radioempresa_comunicado;
        var radioOtro;
        if(afiliado_comunicado){
           var radioafiliado_comunicado = afiliado_comunicado;
        }else if(empresa_comunicado){
           var radioempresa_comunicado = empresa_comunicado;
        }else if(Otro){
           var radioOtro = Otro;
        }
        //console.log(radioafiliado_comunicado);
        var nombre_destinatario = $('#nombre_destinatario_editar').val();
        var nic_cc = $('#nic_cc_editar').val();
        var direccion_destinatario = $('#direccion_destinatario_editar').val();
        var telefono_destinatario = $('#telefono_destinatario_editar').val();
        var email_destinatario = $('#email_destinatario_editar').val();
        var departamento_destinatario = $('#departamento_destinatario_editar').val();
        var ciudad_destinatario = $('#ciudad_destinatario_editar').val();
        var asunto = $('#asunto_editar').val();
        var cuerpo_comunicado = $('#cuerpo_comunicado_editar').val();
        var anexos = $('#anexos_editar').val();
        var forma_envio = $('#forma_envio_editar').val();
        var elaboro2 = $('#elaboro2_editar').val();
        var reviso = $('#reviso_editar').val();
        var N_siniestro = $("#n_siniestro_proforma_editar").val();
        var firmarcomunicadoPcl = [];
        cuerpo_comunicado = cuerpo_comunicado ? cuerpo_comunicado.replace(/"/g, "'"): '';
        $('input[type="checkbox"]').each(function() {
            var firmarcomunicado = $(this).attr('id');   
            if (firmarcomunicado === 'firmarcomunicado_editar') {                
                if ($(this).is(':checked')) {                
                var Valorfirmarcomunicado = $(this).val();
                firmarcomunicadoPcl.push(Valorfirmarcomunicado);
                }
            }
        });
        //var arrayinputs = [];
        // Función para capturar los valores de todos los inputs de Agregar copia
        // function capturarValores() {            
        //     var contenedor = document.getElementById("contenedorCopia2");                        
        //     var inputs = contenedor.getElementsByTagName("input");                        
        //     for (var i = 0; i < inputs.length; i++) {                
        //         var valor = inputs[i].value;
        //     arrayinputs.push(valor)
        //     }
        //     if (arrayinputs.length === 0) {
        //         arrayinputs = ['CopiaVacia'];
        //     }else{
        //         arrayinputs;  
        //     }
        // }    
        // capturarValores();
        //console.log(arrayinputs); 
        var EditComunicadosPcl = [];
        // creamos un objeto para almacenar el resultado de las entidades de conocimiento cuando el ajax la procese
        let acabo_ajax_entidades_conocimiento_ed = [];
        $('input[type="checkbox"]').each(function() {
                var copiaComunicado2 = $(this).attr('id');
                if (copiaComunicado2 === 'edit_copia_afiliado' || copiaComunicado2 === 'edit_copia_empleador' || 
                    copiaComunicado2 === 'edit_copia_eps' || copiaComunicado2 === 'edit_copia_afp' || 
                    copiaComunicado2 === 'edit_copia_arl' || copiaComunicado2 === 'edit_copia_afp_conocimiento') {                
                    if ($(this).is(':checked')) {               
                        var relacionCopiaValor2 = $(this).val();
                        // EditComunicadosPcl.push(relacionCopiaValor2);
                        if (relacionCopiaValor2 == 'AFP_Conocimiento') {
                            let request = $.ajax({
                                url: '/string_entidades_conocimiento',
                                method: 'POST',
                                data: {
                                    id_evento: Id_evento,
                                    _token: $('input[name=_token]').val()
                                },
                                success: function(response) {
                                    EditComunicadosPcl.push(response);
                                }
                            });

                            acabo_ajax_entidades_conocimiento_ed.push(request);
                        } else {
                            EditComunicadosPcl.push(relacionCopiaValor2);
                        }
                    }
                }
        });
        var tipo_descarga = $("[name='tipo_documento_descarga_califi_editar']").filter(":checked").val();
                
        cuerpo_comunicado = cuerpo_comunicado ? cuerpo_comunicado.replace(/"/g, "'") : '';
        let token = $('input[name=_token]').val();
        $.when.apply($, acabo_ajax_entidades_conocimiento_ed).then(function() {
            var datos_actualizarComunicado = {
                '_token': token,
                'Id_comunicado_editar':Id_comunicado,
                'ciudad_editar':ciudad,
                'Id_evento_editar':Id_evento,
                'Id_asignacion_editar':Id_asignacion,
                'Id_procesos_editar':Id_procesos,
                'fecha_comunicado2_editar':fecha_comunicado2,
                'radicado2_editar':radicado2,
                'cliente_comunicado2_editar':cliente_comunicado2,
                'nombre_afiliado_comunicado2_editar':nombre_afiliado_comunicado2,
                'tipo_documento_comunicado2_editar':tipo_documento_comunicado2,
                'identificacion_comunicado2_editar':identificacion_comunicado2,  
                'tipo_descarga':tipo_descarga,
                'radioafiliado_comunicado_editar':radioafiliado_comunicado,
                'radioempresa_comunicado_editar':radioempresa_comunicado,
                'radioOtro_editar':radioOtro,
                'nombre_destinatario_editar':nombre_destinatario,
                'nic_cc_editar':nic_cc,
                'direccion_destinatario_editar':direccion_destinatario,
                'telefono_destinatario_editar':telefono_destinatario,
                'email_destinatario_editar':email_destinatario,
                'departamento_destinatario_editar':departamento_destinatario,
                'ciudad_destinatario_editar':ciudad_destinatario,
                'asunto_editar':asunto,
                'cuerpo_comunicado_editar':cuerpo_comunicado,
                'anexos_editar':anexos,
                'forma_envio_editar':forma_envio,
                'elaboro2_editar':elaboro2,
                'reviso_editar':reviso,
                'firmarcomunicado_editar':firmarcomunicadoPcl,
                'agregar_copia_editar':EditComunicadosPcl,
                'N_siniestro':N_siniestro,
            }
            // console.log('Copias a guardar',EditComunicadosPcl )
            document.querySelector("#Editar_comunicados").disabled = true;
            if(tipo_descarga === 'Cierre_Cita_PCL'){
                if(cuerpo_comunicado.includes('DD/MM/AAAA')){
                    $("#mostrar_barra_actualizacion_comunicado").addClass('d-none');
                    $('.danger_editar_comunicado').removeClass('d-none');
                    $('.danger_editar_comunicado').append('<strong>"Para generar éste comunicado debe diligenciar la fecha de la segunda cita en el tercer párrafo</strong>');
                    setTimeout(function(){
                        $('.danger_editar_comunicado').addClass('d-none');
                        $('.danger_editar_comunicado').empty();
                        $("#Editar_comunicados").prop('disabled', false);
                        $("#Editar_comunicados").removeClass('d-none');
                    }, 3000);
                    return;
                }
            }
            $.ajax({
                type:'POST',
                url:'/actualizarComunicado',
                data: datos_actualizarComunicado,            
                success:function(respuesta){
                    let bandera_descarga = 'BotonGuardarComunicado';
                    datos_comunicado = {
                        '_token': token,
                        'cliente_comunicado2_act': cliente_comunicado2,
                        'nombre_afiliado_comunicado2_act': nombre_afiliado_comunicado2,
                        'tipo_documento_comunicado2_act': tipo_documento_comunicado2,
                        'identificacion_comunicado2_act': identificacion_comunicado2,
                        'id_evento_comunicado2_act': Id_evento,
                        'tipo_documento_descarga_califi_editar': tipo_descarga,
                        'radioafiliado_comunicado':radioafiliado_comunicado,
                        'radioempresa_comunicado':radioempresa_comunicado,
                        'radioOtro':radioOtro,                        
                        'nombre_destinatario_act2': nombre_destinatario,
                        'nic_cc_act2': nic_cc,
                        'direccion_destinatario_act2': direccion_destinatario,
                        'telefono_destinatario_act2': telefono_destinatario,
                        'email_destinatario_act2': email_destinatario,
                        'departamento_pdf': departamento_destinatario,
                        'ciudad_pdf': ciudad_destinatario,
                        'asunto_act': asunto,
                        'cuerpo_comunicado_act': cuerpo_comunicado,
                        'files': null,
                        'anexos_act': anexos,
                        'forma_envio_act': forma_envio,
                        'elaboro2_act': elaboro2,
                        'reviso_act': reviso,
                        'firmarcomunicado_editar': firmarcomunicadoPcl,
                        'ciudad_comunicado_act': ciudad,
                        'Id_comunicado_act': Id_comunicado,
                        'Id_evento_act': Id_evento,
                        'Id_asignacion_act': Id_asignacion,
                        'Id_procesos_act': Id_procesos,
                        'fecha_comunicado2_act': fecha_comunicado2,
                        'agregar_copia_editar':EditComunicadosPcl,
                        'radicado2_act': radicado2,                    
                        'n_siniestro_proforma_editar': N_siniestro,
                        'bandera_descarga':bandera_descarga,
                    };
                    // console.log(datos_comunicado);
                    $.ajax({
                        type:'POST',
                        url:'/generarPdf',
                        data: datos_comunicado,                                       
                        success: function (response, status, xhr) {                 
                            if (respuesta.parametro == 'actualizar_comunicado') {
                                $("#mostrar_barra_actualizacion_comunicado").addClass('d-none');
                                $('.alerta_editar_comunicado').removeClass('d-none');
                                $('.alerta_editar_comunicado').append('<strong>'+respuesta.mensaje+'</strong>');
                                setTimeout(function(){
                                    $('.alerta_editar_comunicado').addClass('d-none');
                                    $('.alerta_editar_comunicado').empty();
                                    $("#Editar_comunicados").removeClass('d-none');
                                    document.querySelector("#Editar_comunicados").disabled = false;
                                    localStorage.setItem("#Generar_comunicados", true);
                                    location.reload();
                                }, 3000);
                            }
                        },
                        error: function (error) {
                            // Manejar casos de error
                            console.error('Error al descargar el PDF:', error);
                        }                    
                    });
                }
            })
        });
    }) 

    // Captura de data para la tabla de Historial de seguimientos
    // data de la modal de agregar seguimientos

    let datos_historial_seguimiento ={
        '_token':token,
        'HistorialSeguimientoPcl': "CargaHistorialSeguimiento",
        'newId_evento':newId_evento,
        'newId_asignacion':newId_asignacion,
    }

    $.ajax({
        type:'POST',
        url:'/historialSeguimientoPCL',
        data: datos_historial_seguimiento,
        success:function(data){
            $.each(data, function(index, value) {
                capturar_informacion_historial_seguimiento(data, index, value)
            })
        }
    });

    // DataTable Historial de seguimientos
    function capturar_informacion_historial_seguimiento(response, index, value) {
        $('#listado_agregar_seguimientos').DataTable({
            orderCellsTop:true,
            fixedHeader:true,
            "destroy":true,
            "data": response,
            paging:true,
            "pageLength": 5,
            "order": [[0, 'desc']],
            "columns":[
                {"data":"F_seguimiento"},
                {"data":"Causal_seguimiento"},
                {"data":"Descripcion_seguimiento"},
                {"data":"Nombre_usuario"},
            ],            
            "language":{                
                "search": "Buscar",
                "lengthMenu": "Mostrar _MENU_ registros",
                "info": "Mostrando registros _START_ a _END_ de un total de _TOTAL_ registros",
                
                "paginate": {
                    "previous": "Anterior",
                    "next": "Siguiente",
                    "first": "Primero",
                    "last": "Último"
                },
                "zeroRecords": "No se encontraron resultados",
                "emptyTable": "No se encontró información",
                "infoEmpty": "No se encontró información",
            }            
        });
    }

    /*  FUNCIONALIDAD: HABILITAR O DESHABILITAR: BOTÓN AGREGAR FILA, BOTÓN GUARDAR, BOTÓN CARGUE DOCUMENTOS
    CUANDO SE HACE CHECK EN LA OPCIÓN NO APORTA DOCUMENTOS */
    $("#No_aporta_documentos").click(function () {
        if ($(this).is(':checked')) {
               $("#btn_agregar_fila").css('display', 'none');
               $("#cargue_docs_modal_listado_docs").prop('disabled', true);
               $("#cargue_docs_modal_listado_docs").hover(function(){
                   $(this).css('cursor', 'not-allowed');
               });

        } else {
               $("#btn_agregar_fila").css('display', 'block');
               $("#cargue_docs_modal_listado_docs").prop('disabled', false);
               $("#cargue_docs_modal_listado_docs").hover(function(){
                   $(this).css('cursor', 'pointer');
               });
        }
    });
 
    /* FUNCIONALIDAD PARA VALIDAR SI APORTÓ O NO APORTÓ DOCUMENTOS PARA SETEAR EL CHECK */
    if($("#validacion_aporta_doc").val() == "No"){
        $("#No_aporta_documentos").prop("checked", true);
        $("#btn_agregar_fila").css('display', 'none');
        $("#cargue_docs_modal_listado_docs").prop('disabled', true);
        $("#cargue_docs_modal_listado_docs").hover(function(){
            $(this).css('cursor', 'not-allowed');
        });

    }else{
        $("#No_aporta_documentos").prop("checked", false);
        $("#btn_agregar_fila").css('display', 'block');
        $("#cargue_docs_modal_listado_docs").prop('disabled', false);
        $("#cargue_docs_modal_listado_docs").hover(function(){
            $(this).css('cursor', 'pointer');
        });
    }

    // Captura de datos segun la opcion seleccionada en destinatario principal
    // En la modal de generar comunicado
    $('input[type="radio"]').change(function(){
        var destinarioPrincipal = $(this).val();
        var identificacion_comunicado_afiliado = $('#identificacion_comunicado').val();
        var newId_evento = $('#newId_evento').val();
        var newId_asignacion = $('#newId_asignacion').val();
        var Id_proceso = $('#Id_proceso').val();
        var datos_destinarioPrincipal ={
            '_token':token,            
            'destinatarioPrincipal': destinarioPrincipal,
            'identificacion_comunicado_afiliado':identificacion_comunicado_afiliado,
            'newId_evento': newId_evento,
            'newId_asignacion': newId_asignacion,
            'Id_proceso': Id_proceso,
        }
        $.ajax({
            type:'POST',
            url:'/captuarDestinatario',
            data: datos_destinarioPrincipal,
            success: function(data){
                /* $('#destinatarioPrincipal').text(data.destinatarioPrincipal);
                $('#datos').text(JSON.stringify(data.data)); */
                if (data.destinatarioPrincipal == 'Afiliado') {
                    // console.log(data.array_datos_destinatarios);
                    var Nombre_afiliado = $('#nombre_destinatario');
                    Nombre_afiliado.val(data.array_datos_destinatarios[0].Nombre_afiliado);                    
                    document.querySelector("#nombre_destinatario").disabled = true;
                    var nitccafiliado = $('#nic_cc');
                    nitccafiliado.val(data.array_datos_destinatarios[0].Nro_identificacion);
                    document.querySelector("#nic_cc").disabled = true;
                    var direccionafiliado = $('#direccion_destinatario');
                    direccionafiliado.val(data.array_datos_destinatarios[0].Direccion_afiliado);
                    document.querySelector("#direccion_destinatario").disabled = true;
                    var telefonoafiliado = $('#telefono_destinatario');
                    telefonoafiliado.val(data.array_datos_destinatarios[0].Telefono_contacto);
                    document.querySelector("#telefono_destinatario").disabled = true;
                    var emailafiliado = $('#email_destinatario');
                    emailafiliado.val(data.array_datos_destinatarios[0].Email_afiliado);
                    document.querySelector("#email_destinatario").disabled = true;
                    var departamentoafiliado = $('#departamento_destinatario');
                    departamentoafiliado.empty();
                    departamentoafiliado.append('<option value="'+data.array_datos_destinatarios[0].Id_departamento_afiliado+'" selected>'+data.array_datos_destinatarios[0].Nombre_departamento_afiliado+'</option>');
                    document.querySelector("#departamento_destinatario").disabled = true;
                    var ciudadafiliado =$('#ciudad_destinatario');
                    ciudadafiliado.empty();
                    ciudadafiliado.append('<option value="'+data.array_datos_destinatarios[0].Id_municipio_afiliado+'">'+data.array_datos_destinatarios[0].Nombre_municipio_afiliado+'</option>')
                    document.querySelector("#ciudad_destinatario").disabled = true;

                    // Seleccción de la forma de envío acorde a la selección del afiliado
                    if (data.info_medio_noti[0].Medio_notificacion == "Físico") {
                        $('#forma_envio').val('46').trigger('change.select2');
                    }else{
                        $('#forma_envio').val('47').trigger('change.select2');
                    }

                    var nombre_usuario = $('#elaboro');
                    nombre_usuario.val(data.nombreusuario);
                    var nombre_usuario2 = $('#elaboro2');
                    nombre_usuario2.val(data.nombreusuario);
                    var reviso = $('#reviso');
                    reviso.empty();
                    reviso.append('<option value="" selected>Seleccione una opción</option>');
                    let revisolider = Object.keys(data.array_datos_lider);
                    for (let i = 0; i < revisolider.length; i++) {
                        reviso.append('<option value="'+data.array_datos_lider[revisolider[i]]["id"]+'">'+data.array_datos_lider[revisolider[i]]["name"]+'</option>');
                    }
                    $("#reviso").prop("selectedIndex", 1);
                }else if(data.destinatarioPrincipal == 'Empleador'){      
                    //console.log(data.array_datos_destinatarios);
                    var Nombre_afiliado = $('#nombre_destinatario');
                    Nombre_afiliado.val(data.array_datos_destinatarios[0].Nombre_empresa);
                    document.querySelector("#nombre_destinatario").disabled = true;
                    var nitccafiliado = $('#nic_cc');
                    nitccafiliado.val(data.array_datos_destinatarios[0].Nit_o_cc);
                    document.querySelector("#nic_cc").disabled = true;
                    var direccionafiliado = $('#direccion_destinatario');
                    direccionafiliado.val(data.array_datos_destinatarios[0].Direccion_empresa);
                    document.querySelector("#direccion_destinatario").disabled = true;
                    var telefonoafiliado = $('#telefono_destinatario');
                    telefonoafiliado.val(data.array_datos_destinatarios[0].Telefono_empresa);
                    document.querySelector("#telefono_destinatario").disabled = true;
                    var emailafiliado = $('#email_destinatario');
                    emailafiliado.val(data.array_datos_destinatarios[0].Email_empresa);
                    document.querySelector("#email_destinatario").disabled = true;
                    var departamentoafiliado = $('#departamento_destinatario');
                    departamentoafiliado.empty();
                    departamentoafiliado.append('<option value="'+data.array_datos_destinatarios[0].Id_departamento_empresa+'" selected>'+data.array_datos_destinatarios[0].Nombre_departamento_empresa+'</option>');
                    document.querySelector("#departamento_destinatario").disabled = true;
                    var ciudadafiliado =$('#ciudad_destinatario');
                    ciudadafiliado.empty();
                    ciudadafiliado.append('<option value="'+data.array_datos_destinatarios[0].Id_municipio_empresa+'">'+data.array_datos_destinatarios[0].Nombre_municipio_empresa+'</option>')
                    document.querySelector("#ciudad_destinatario").disabled = true;

                    // Seleccción de la forma de envío acorde a la selección del empleador
                    if (data.info_medio_noti[0].Medio_notificacion == "Físico") {
                        $('#forma_envio').val('46').trigger('change.select2');
                    }else{
                        $('#forma_envio').val('47').trigger('change.select2');
                    }

                    var nombre_usuario = $('#elaboro');
                    nombre_usuario.val(data.nombreusuario);
                    var nombre_usuario2 = $('#elaboro2');
                    nombre_usuario2.val(data.nombreusuario);
                    var reviso = $('#reviso');
                    reviso.empty();
                    reviso.append('<option value="" selected>Seleccione una opción</option>');
                    let revisolider = Object.keys(data.array_datos_lider);
                    for (let i = 0; i < revisolider.length; i++) {
                        reviso.append('<option value="'+data.array_datos_lider[revisolider[i]]["id"]+'">'+data.array_datos_lider[revisolider[i]]["name"]+'</option>');
                    }
                    $("#reviso").prop("selectedIndex", 1);
                }else if(data.destinatarioPrincipal == 'Otro'){
                    //console.log(data.destinatarioPrincipal);
                    document.querySelector("#nombre_destinatario").disabled = false;
                    $('#nombre_destinatario').val('');
                    document.querySelector("#nic_cc").disabled = false;
                    $('#nic_cc').val('');
                    document.querySelector("#direccion_destinatario").disabled = false;
                    $('#direccion_destinatario').val('');
                    document.querySelector("#telefono_destinatario").disabled = false;
                    $('#telefono_destinatario').val('');
                    document.querySelector("#email_destinatario").disabled = false;
                    $('#email_destinatario').val('');
                    document.querySelector("#departamento_destinatario").disabled = false;
                    document.querySelector("#ciudad_destinatario").disabled = false;
                    // Listado de departamento generar comunicado
                    let datos_lista_departamentos_generar_comunicado = {
                        '_token': token,
                        'parametro' : "departamentos_generar_comunicado"
                    };
                    $.ajax({
                        type:'POST',
                        url:'/selectoresModuloCalificacionPCL',
                        data: datos_lista_departamentos_generar_comunicado,
                        success:function(data) {
                            // console.log(data);
                            $('#departamento_destinatario').empty();
                            $('#ciudad_destinatario').empty();
                            $('#departamento_destinatario').append('<option value="" selected>Seleccione</option>');
                            let claves = Object.keys(data);
                            for (let i = 0; i < claves.length; i++) {
                                $('#departamento_destinatario').append('<option value="'+data[claves[i]]["Id_departamento"]+'">'+data[claves[i]]["Nombre_departamento"]+'</option>');
                            }
                        }
                    });
                    // listado municipios dependiendo del departamentos generar comunicado
                    $('#departamento_destinatario').change(function(){
                        $('#ciudad_destinatario').prop('disabled', false);
                        let id_departamento_destinatario = $('#departamento_destinatario').val();
                        let datos_lista_municipios_generar_comunicado = {
                            '_token': token,
                            'parametro' : "municipios_generar_comunicado",
                            'id_departamento_destinatario': id_departamento_destinatario
                        };
                        $.ajax({
                            type:'POST',
                            url:'/selectoresModuloCalificacionPCL',
                            data: datos_lista_municipios_generar_comunicado,
                            success:function(data) {
                                // console.log(data);
                                $('#ciudad_destinatario').empty();
                                $('#ciudad_destinatario').append('<option value="" selected>Seleccione</option>');
                                let claves = Object.keys(data);
                                for (let i = 0; i < claves.length; i++) {
                                    $('#ciudad_destinatario').append('<option value="'+data[claves[i]]["Id_municipios"]+'">'+data[claves[i]]["Nombre_municipio"]+'</option>');
                                }
                            }
                        });
                    });
                    var nombre_usuario = $('#elaboro');
                    nombre_usuario.val(data.nombreusuario);
                    var nombre_usuario2 = $('#elaboro2');
                    nombre_usuario2.val(data.nombreusuario);
                    var reviso = $('#reviso');
                    reviso.empty();
                    reviso.append('<option value="" selected>Seleccione una opción</option>');
                    let revisolider = Object.keys(data.array_datos_lider);
                    for (let i = 0; i < revisolider.length; i++) {
                        reviso.append('<option value="'+data.array_datos_lider[revisolider[i]]["id"]+'">'+data.array_datos_lider[revisolider[i]]["name"]+'</option>');
                    }

                    $("#reviso").prop("selectedIndex", 1);
                }

            }        
        });
        
    });

    // validacion para numeros enteros en anexos modal agregar seguimiento
    var input = document.getElementById("anexos");
    // Agrega un event listener para el evento "input"
    input.addEventListener("input", function() {
        var valor = input.value;
        if (Number.isInteger(Number(valor))) {
            //console.log("El valor es un número entero");            
        } else {
            input.value = "";
            //console.log("El valor no es un número entero");
        }
    });    

    /* Funcionalidad para insertar la etiqueta de pruebas solicitadas */
    $("#cuerpo_comunicado").summernote({
        height: 'auto',
        toolbar: false,
        callbacks: {
            onPaste: function (e) {
                var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
                e.preventDefault();
                document.execCommand('insertText', false, bufferText);
            },
        }
    });
    $('.note-editing-area').css("background", "white");
    $('.note-editor').css("border", "1px solid black");

    $("#btn_insertar_pruebas").click(function(e){
        e.preventDefault();

        var etiqueta_pruebas = "{{$pruebas_solicitadas}}";
        $('#cuerpo_comunicado').summernote('editor.insertText', etiqueta_pruebas);
    });

    /* Funcionalidad radio buttons Solicitud documentos Origen y Otro documento */
    $("[name='tipo_documento_descarga_califi']").on("change", async function(){
        var opc_seleccionada = $(this).val();
        $("#asunto").prop('readonly', true);
        $(".note-editable").attr("contenteditable", false);
        if (opc_seleccionada == "Documento_PCL") {
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").val("SOLICITUD DOCUMENTOS CALIFICACIÓN DE PÉRDIDA DE CAPACIDAD LABORAL");
            // Traemos la lista de los documentos solicitados y lo insertamos junto con el texto en el cuerpo del comunicado
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos_lista_soli_docs = {
                '_token': token,
                'parametro':"listado_solicitud_documentos",
                'id_proceso': id_proceso,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion 
            };
            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_soli_docs,
                success:function(data){

                    if (data.length > 0) {
                        var listado = '<ul>';
                        let listado_solicitud_documentos = Object.keys(data);
                        for (let i = 0; i < listado_solicitud_documentos.length; i++) {
                            var documento = data[listado_solicitud_documentos[i]];
                            var nombre = documento['Nombre_documento'] ? documento['Nombre_documento'] : '';
                            var descripcion = documento['Descripcion'] ? documento['Descripcion'] : '';
                            
                            if (nombre || descripcion) {
                                listado += '<li><b>'+descripcion+'</b></li>';
                            }
                        }
    
                        listado += '</ul>';
                        
                    } else {
                        listado = '';
                    }
                    
                    var texto_insertar = "<p>Respetado(a) Señor(a),</p>"+
                        "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías Protección S.A.</p>"+
                        "<p>Con ocasión a la documentación médica radicada para el trámite de estudio de su prestación económica, respetuosamente, nos permitimos "+
                        "indicarle que luego de evaluar el contenido de la documentación aportada por usted, no obstante, a que la información suministrada es relevante, "+
                        "se hace necesario que allegue los documentos que se enuncian a continuación:</p>"
                        +listado+
                        "<p>Es indispensable el aporte de la historia clínica completa para la evaluación médica llevada a cabo por la Comisión Médico Laboral de Protección S.A., "+
                        "quien establecerá los criterios necesarios para una adecuada revisión. Lo anterior se solicita de acuerdo a lo establecido en el literal a, del artículo 4 del "+
                        "decreto 917 de 1999, que señala:"+
                        '<p class="cuerpo_doc_revPen">“<strong>REQUISITOS Y PROCEDIMIENTOS PARA LA CALIFICACIÓN DE LA INVALIDEZ Y LA FUNDAMENTACIÓN DEL DICTAMEN.</strong><br>'+
                        'Para efectos de la calificación de la invalidez, los calificadores se orientarán por los requisitos y procedimientos establecidos en el presente manual para emitir '+
                        'un dictamen. Deben tener en cuenta que dicho dictamen es el documento que, con carácter probatorio, contiene el concepto experto que los calificadores emiten sobre '+
                        'el grado de la incapacidad permanente parcial, la invalidez o la muerte de un afiliado y debe fundamentarse en: <br>'+
                        'a) Consideraciones de orden fáctico sobre la situación que es objeto de evaluación, donde se relacionan los hechos ocurridos que dieron lugar al accidente, '+
                        'la enfermedad o la muerte, indicando las circunstancias de modo, tiempo y lugar dentro de las cuales sucedieron; y el DIAGNÓSTICO CLÍNICO de carácter técnico-científico, '+
                        'soportado en la historia clínica, la historia ocupacional y con las ayudas de diagnóstico requeridas de acuerdo con la especificidad del problema…”</p>'+
                        '<p class="texto_con_padding">A su vez, la ley 1507 de 2014, en su artículo 3, inciso 13 establece: </p>'+
                        '<p class="cuerpo_doc_revPen">“Esta fecha (de estructuración) debe soportarse en la historia clínica, los exámenes clínicos y de ayuda diagnóstica y puede ser anterior '+
                        'o corresponder a la fecha de la declaratoria de la perdida de la capacidad laboral”.</p>'+
                        '<p>Por lo tanto, esta Administradora le concede el término de <strong>un (1) mes</strong>  contado a partir de la recepción de la presente comunicación, vencido el mismo sin cumplir '+
                        'con el requerimiento, se procederá a dar <strong>DESISTIMIENTO</strong> de su solicitud y archivo de la misma, de acuerdo con el artículo 17 de la ley 1437 de 2011, que señala:</p>'+
                        '<p class="cuerpo_doc_revPen">“…Cuando en el curso de una actuación administrativa la autoridad advierta que el peticionario debe realizar una gestión de trámite a '+
                        'su cargo, necesaria para adoptar una decisión de fondo, lo requerirá por una sola vez para que la efectúe en el término de un (1) mes, lapso durante el cual se '+
                        'suspenderá el término para decidir.<br>'+
                        '<strong>Se entenderá que el peticionario ha desistido de su solicitud o de la actuación cuando no satisfaga el requerimiento</strong>, salvo que antes de vencer el plazo concedido '+
                        'solicite prórroga hasta por un término igual”.</p>'+
                        "<p>Así las cosas, la anterior documentación es indispensable en los criterios que definen la calificación del estado de invalidez y no se puede realizar el dictamen "+
                        'sin la presencia de los mismos. Por ello, mientras la documentación faltante no sea allegada y no sea posible realizar un análisis adecuado de las circunstancias de '+
                        'hecho y de derecho, se entenderá que la solicitud no se ha recibido en debida forma, por lo que no será posible realizar la calificación de pérdida de capacidad '+
                        'laboral y en el caso en que definitivamente usted decida no allegar la documentación faltante en el término señalado, la Administradora deberá proceder con el cierre '+
                        'del trámite.</p>'+
                        "<p>La documentación debe ser allegada a cualquiera de las Oficinas de Servicio de Protección S.A más cercana o remitirla al correo electrónico "+
                        'documentos.calificacion@proteccion.com.co (El peso máximo del adjunto no podrá ser superior a 20 MB, por lo tanto, si excede esta capacidad deber remitir '+
                        'la información en varios correos); así mismo aclaramos que, este correo electrónico es únicamente para recibir documentación.</p>'+
                        "<p>Esperamos haber atendido satisfactoriamente su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna duda "+
                        "o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o comunicarse "+
                        "con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099, Barranquilla 319 7999, Cartagena 6424999 y desde el resto del país 01 8000 52 8000.</p>";
                    $('#cuerpo_comunicado').summernote('code', texto_insertar);
                }
                
            });
            
            // $('#btn_insertar_Detalle_calificacion').addClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', false);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', true);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);

        }else if (opc_seleccionada == "Formato_B_Revision_pension") {
            if(idRol == 6){
                $("#asunto").prop('readonly', false);
                $(".note-editable").attr("contenteditable", true);
            }
            $("#asunto").val("RATIFICACIÓN DEL ESTADO DE INVALIDEZ");
            var texto_insertar = "<p>Aprecido(a) {{$nombre_afiliado}}, </p>"+
            "<p>En <b>PROTECCIÓN</b> estamos para guiarle y acompañarle en cada momento de su vida. Como es de su conocimiento y de acuerdo con lo establecido "+ 
            "en el artículo 44 de la Ley 100 de 1993, esta Administradora solicitó copia de su historia clínica con el fin de revisar el estado de su invalidez.</p>"+
            "<p>Una vez revisada la documentación allegada, tenemos que <b>persisten</b> los diagnósticos que dieron lugar a la invalidez decretada en su oportunidad, sin que ocurran "+
            "cambios significativos en su estado de salud, en consecuencia, queremos informarle que Protección continuará con el reconocimiento de la pensión de invalidez y, "+
            "por ende, continuará con el pago de su mesada pensional.</p>"+
            "<p>Le agradecemos la confianza depositada en nosotros durante estos años y le recordamos que cuenta con nuestra asesoría. Ante cualquier duda, puede comunicarse "+
            "a nuestra Línea de Servicio: Bogotá: 744 44 64, Medellín y Cali: 510 90 99 Barranquilla: 319 79 99, Cartagena: 642 49 99 y desde el resto del país: 01 8000 52 8000.</p>";
            $('#cuerpo_comunicado').summernote('code', texto_insertar);
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', false);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);
            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);
            
        }else if (opc_seleccionada == "Documento_Revision_pension") {
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").prop('readonly', false);
            $("#asunto").val("SOLICITUD DE DOCUMENTOS PARA REVISIÓN DE ESTADO DE INVALIDEZ");
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos_lista_soli_docs = {
                '_token': token,
                'parametro':"listado_solicitud_documentos",
                'id_proceso': id_proceso,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion 
            };
            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_soli_docs,
                success:function(data){

                    if (data.length > 0) {
                        var listado = '<ul>';
                        let listado_solicitud_documentos = Object.keys(data);
                        for (let i = 0; i < listado_solicitud_documentos.length; i++) {
                            var documento = data[listado_solicitud_documentos[i]];
                            var nombre = documento['Nombre_documento'] ? documento['Nombre_documento'] : '';
                            var descripcion = documento['Descripcion'] ? documento['Descripcion'] : '';
                            
                            if (nombre || descripcion) {
                                listado += '<li><b>'+descripcion+'</b></li>';
                            }
                        }
    
                        listado += '</ul>';
                        
                    } else {
                        listado = '';
                    }
                    var texto_insertar = '<p>Respetado(a) Señor(a)</p>'+
                        '<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>'+
                        '<p>En respuesta a la documentación médica radicada para la solicitud de estudio de su revisión del estado de invalidez, respetuosamente nos permitimos '+
                        'indicar que luego de evaluar el contenido se evidenció que hace falta documentación referente a su Historia Clínica, por lo tanto, se hace necesario que '+
                        'allegue los documentos que se enuncian a continuación:</p>'+
                        listado+
                        '<p>Solicitamos que, en un término no superior a <b>tres (3) meses</b>, sea recibida la información que define la calificación de tu estado de invalidez '+
                        'a la oficina de <b>PROTECCIÓN</b> más cercana a su ciudad, o se envíe al correo electrónico documentos.calificacion@proteccion.com.co. De esta manera, '+
                        'cumplido el tiempo indicado si la documentación solicitada no ha sido aportada, <b>se deberá suspender el pago de las mesadas pensionales</b> '+
                        'y la misma sólo podrá reactivarse con la presentación de los documentos. En caso de no poder tenerla en ese lapso de tiempo por favor informar de manera '+
                        'escrita el motivo, toda vez que esta documentación es necesaria para la revisión de su estado de invalidez.</p>'+
                        '<p>Lo anterior, está fundamentado en el artículo 44 de la ley 100 de 1993, que al establecer las condiciones en las cuales se realiza el proceso de revisión '+
                        'de las pensiones de invalidez ha establecido:</p>'+
                        '<p class="cuerpo_doc_revPen">“[...]<strong>ARTÍCULO 44. REVISIÓN DE LAS PENSIONES DE INVALIDEZ.</strong> El estado de invalidez podrá <br>'+
                        'revisarse: <br>'+
                        'a) Por solicitud de la entidad de previsión o seguridad social correspondiente cada tres (3) años, '+
                        'con el fin de ratificar, modificar o dejar sin efectos el dictamen que sirvió de base para la liquidación '+
                        'de la pensión que disfruta su beneficiario y proceder a la extinción, disminución o aumento de la '+
                        'misma, si a ello hubiera lugar.<br>'+
                        'Este nuevo dictamen se sujeta a las reglas de los artículos anteriores. <br>'+
                        'El pensionado tendrá un plazo de tres (3) meses contados a partir de la fecha de dicha solicitud, '+
                        'para someterse a la respectiva revisión del estado de invalidez. Salvo casos de fuerza mayor, <strong>si el '+
                        'pensionado no se presenta o impide dicha revisión dentro de dicho plazo, se suspenderá el pago de '+
                        'la pensión.</strong> Transcurridos doce (12) meses contados desde la misma fecha sin que el pensionado '+
                        'se presente o permita el examen, la respectiva pensión prescribirá. '+
                        'Para readquirir el derecho en forma posterior, el afiliado que alegue permanecer inválido deberá '+
                        'someterse a un nuevo dictamen. Los gastos de este nuevo dictamen serán pagados por el afiliado [...]”</p>'+
                        '<p>Esperamos haber atendido satisfactoriamente su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna '+
                        'duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o '+
                        'comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 y desde el resto del país '+
                        '01 8000 52 8000.</p>';
                    $('#cuerpo_comunicado').summernote('code', texto_insertar);
                }
            });
            
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', true);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);
            
        }else if (opc_seleccionada == "Reiteracion_Documento_Revision_pension") {
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").prop('readonly', false);
            $("#asunto").val("REITERACIÓN SOLICITUD DOCUMENTOS PARA REVISIÓN ESTADO DE INVALIDEZ");
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos_lista_soli_docs = {
                '_token': token,
                'parametro':"listado_solicitud_documentos",
                'id_proceso': id_proceso,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion 
            };
            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_soli_docs,
                success:function(data){

                    if (data.length > 0) {
                        var listado = '<ul>';
                        let listado_solicitud_documentos = Object.keys(data);
                        for (let i = 0; i < listado_solicitud_documentos.length; i++) {
                            var documento = data[listado_solicitud_documentos[i]];
                            var nombre = documento['Nombre_documento'] ? documento['Nombre_documento'] : '';
                            var descripcion = documento['Descripcion'] ? documento['Descripcion'] : '';
                            
                            if (nombre || descripcion) {
                                listado += '<li><b>'+descripcion+'</b></li>';
                            }
                        }
    
                        listado += '</ul>';
                        
                    } else {
                        listado = '';
                    }
                    // Obtener fecha del documento de solicitud de documentos de revisión pensión
                    let datos = {
                        '_token': token,
                        'id_evento': id_evento,
                        'id_asignacion': id_asignacion,
                        'id_proceso': id_proceso,
                        'tipo_documento': 'Reiteracion_Documento_Revision_pension'
                    };

                    $.ajax({
                        type: 'POST',
                        url: '/getInfoComuCorres',
                        data: datos,
                        success: function (infoData) {
                            let F_notificación_sol_doc_rev_pen = '(DIGITE LA FECHA DE PRIMER COMUNICADO)';
                            if(infoData['F_notificacion_sol_doc_rev_pen']){
                                F_notificación_sol_doc_rev_pen = infoData['F_notificacion_sol_doc_rev_pen'];

                                var partesFecha = F_notificación_sol_doc_rev_pen.split("-");
                                F_notificación_sol_doc_rev_pen = `${partesFecha[2]}/${partesFecha[1]}/${partesFecha[0]}`;
                            }
                            var texto_insertar = '<p>Respetado(a) Señor(a)</p>'+
                                '<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>'+
                                '<p>En respuesta a la documentación médica radicada para la solicitud de estudio de su revisión del estado de invalidez, respetuosamente nos permitimos '+
                                'indicar que luego de evaluar el contenido se evidenció que hace falta documentación referente a su Historia Clínica, por lo tanto, se hace necesario que '+
                                'allegue los documentos que se enuncian a continuación:</p>'+
                                listado+
                                '<p>Mediante {{$forma_envio}} del <b>'+F_notificación_sol_doc_rev_pen+'</b>, esta Administradora le solicitó la documentación anterior con la finalidad de '+
                                'revisar su condición de invalidez, de igual forma, se le indicó que contaba con un término de tres (3) meses para aportarla o de lo contrario se '+
                                'procedería con la suspensión de la mesada pensional.</p>'+
                                '<p>Así las cosas, con el objetivo de evitarle la suspensión de la mesada pensional, se le reitera que cuenta con un último plazo de <b>un (1) mes para '+
                                'que allegue la información solicitada, de lo contrario, procederemos con la suspensión, tal y como lo señala el literal a. del artículo 44 de la ley '+
                                '100 de 1993.</b> Es muy importante que tenga presente que después de doce (12) meses sin adjuntar los documentos empezará a correr la prescripción de mesadas.</p>'+
                                '<p>Finalmente, le informamos que la documentación puede ser aportada en cualquier momento en la oficina de <b>PROTECCIÓN</b> más cercana a su ciudad, o al '+
                                'correo electrónico documentos.calificacion@proteccion.com.co, esto con el fin de realizar el procedimiento de revisión. El tamaño de los archivos no '+
                                'puede ser superior a 20 MB, si excede este límite, debe remitirnos la información en varios correos.</p>'+
                                '<p>Esperamos haber atendido satisfactoriamente su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna '+
                                'duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o '+
                                'comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 y desde el resto del país '+
                                '01 8000 52 8000.</p>';
                            $('#cuerpo_comunicado').summernote('code', texto_insertar);
                        }
                    });
                }
            });
            
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', true);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);
            
        }else if (opc_seleccionada == "Suspension_Mesada_Revision_pension") {
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").prop('readonly', false);
            $("#asunto").val("INFORMACIÓN SOBRE SUSPENSIÓN DE MESADA PENSIONAL");
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos = {
                '_token': token,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion,
                'id_proceso': id_proceso,
                'tipo_documento':'Suspension_Mesada_Revision_pension'
            };
            $.ajax({
                type:'POST',
                url:'/getInfoComuCorres',
                data: datos,
                success:function(data){
                    let F_notificación_sol_doc_rev_pen = '(DIGITE LA FECHA DE PRIMER COMUNICADO)';
                    let F_notificación_reiteracion_sol_doc_rev_pen = '(DIGITE LA FECHA DEL SEGUNDO COMUNICADO)';
                    if (data['F_notificacion_sol_doc_rev_pen']) {
                        F_notificación_sol_doc_rev_pen = data['F_notificacion_sol_doc_rev_pen'];
                        let partes_fecha = F_notificación_sol_doc_rev_pen.split("-");
                        F_notificación_sol_doc_rev_pen = `${partes_fecha[2]}/${partes_fecha[1]}/${partes_fecha[0]}`;
                    }
                    if (data['F_notificacion_reiteracion_sol_doc_rev_pen']) {
                        F_notificación_reiteracion_sol_doc_rev_pen = data['F_notificacion_reiteracion_sol_doc_rev_pen'];

                        var partesFecha = F_notificación_reiteracion_sol_doc_rev_pen.split("-");
                        F_notificación_reiteracion_sol_doc_rev_pen = `${partesFecha[2]}/${partesFecha[1]}/${partesFecha[0]}`;
                    }
                    var texto_insertar = '<p>Respetado(a) Señor(a),</p>'+
                    '<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>'+
                    '<p>Mediante {{$forma_envio}} del <b>'+F_notificación_sol_doc_rev_pen+'</b>, esta Administradora le solicitó <b>una copia actualizada a la fecha de toda la historia '+
                    'clínica incluyendo sus complementos</b> con la finalidad de revisar su condición de invalidez, para ese momento se le otorgó un término tres (3) meses para aportarla, '+
                    'transcurrido este término, sin que se hubiere allegado la documentación, esta Administradora nuevamente mediante {{$forma_envio}} '+
                    'del <b>'+F_notificación_reiteracion_sol_doc_rev_pen+'</b>, le otorgó un último plazo de un (1) mes para aportarla o de '+
                    'lo contrario se procedería con la suspensión de la mesada pensional.</p>'+
                    '<p>Así las cosas, habiendo transcurrido los términos otorgados para que pudiera allegar la historia clínica actualizada a la fecha y poder realizar de esta '+
                    'manera el proceso de revisión del estado de invalidez, queremos informarle que hemos procedido con la suspensión de su mesada pensional, <b>tal y como lo señala '+
                    'el literal a. del artículo 44 de la ley 100 de 1993.</b> Es muy importante que tenga presente que después de doce (12) meses sin adjuntar los documentos empezará '+
                    'a correr la prescripción de mesadas.</p>'+
                    '<p>Finalmente, le informamos que la documentación puede ser aportada en cualquier momento en la oficina de <b>PROTECCIÓN</b> más cercana a su ciudad, o al '+
                    'correo electrónico documentos.calificacion@proteccion.com.co, esto con el fin de realizar el procedimiento de revisión. El tamaño de los archivos no puede '+
                    'ser superior a 20 MB, si excede este límite, debe remitirnos la información en varios correos.</p>'+
                    '<p>Esperamos haber atendido satisfactoriamente su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna '+
                    'duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o '+
                    'comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 y desde el resto del país '+
                    '01 8000 52 8000.</p>';
                    $('#cuerpo_comunicado').summernote('code', texto_insertar);
                }
            });
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', false);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', false);
            $("#firmarcomunicado").prop('checked', false);
            
        }else if (opc_seleccionada == "Documento_No_Recalificacion") {
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").val("RESPUESTA A SOLICITUD DE CALIFICACIÓN PÉRDIDA DE CAPACIDAD LABORAL");

            var texto_insertar = '<p>Apreciado(a) {{$nombre_afiliado}},</p>'+
            '<p>En Protección estamos para guiarle y acompañarle en cada momento de su vida. Con ocasión de la solicitud de calificación de pérdida de capacidad laboral '+
            'radicada por usted, la Administradora de Fondo de Pensiones y Cesantías <b>PROTECCIÓN</b> se permite dar respuesta en los términos que se describen a continuación. '+
            '<p>(Sustentación)</p>'+
            '<p>Le agradecemos la confianza depositada en nosotros durante estos años y le recordamos que cuenta con nuestra asesoría. Ante cualquier duda, puede comunicarse '+
            'a nuestra Línea de Servicio: Bogotá: 744 44 64, Medellín y Cali: 510 90 99, Barranquilla: 319 79 99, Cartagena: 642 49 99 y desde el resto del país: 01 8000 52 8000.</p>';

            $('#cuerpo_comunicado').summernote('code', texto_insertar);
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');
            // $('#btn_insertar_Origen').removeClass('d-none');
            // $('#btn_insertar_nombreCIE10').removeClass('d-none');
            // $('#btn_insertar_porPcl').removeClass('d-none');
            // $('#btn_insertar_F_estructuracion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', false);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);
        }else if (opc_seleccionada == "Desistimiento_PCL") {
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").val("DESISTIMIENTO TÁCITO DE SOLICITUD DE CALIFICACIÓN DE PCL");
            // Traemos la lista de los documentos solicitados y lo insertamos junto con el texto en el cuerpo del comunicado
            var id_evento = $('#newId_evento').val();
            var id_proceso = $('#Id_proceso').val();
            var id_asignacion = $('#newId_asignacion').val();

            let datos_lista_soli_docs = {
                '_token': token,
                'parametro':"listado_solicitud_documentos",
                'id_proceso': id_proceso,
                'id_evento': id_evento,
                'id_asignacion': id_asignacion 
            };
            $.ajax({
                type:'POST',
                url:'/selectoresModuloCalificacionPCL',
                data: datos_lista_soli_docs,
                success:function(data){
                    if (data.length > 0) {
                        var listado = '<ul>';
                        let listado_solicitud_documentos = Object.keys(data);
                        for (let i = 0; i < listado_solicitud_documentos.length; i++) {
                            var documento = data[listado_solicitud_documentos[i]];
                            var nombre = documento['Nombre_documento'] ? documento['Nombre_documento'] : '';
                            var descripcion = documento['Descripcion'] ? documento['Descripcion'] : '';
                            
                            if (nombre || descripcion) {
                                listado += '<li><b>'+descripcion+'</b></li>';
                            }
                        }

                        listado += '</ul>';
                        
                    } else {
                        listado = '';
                    }
                    var texto_insertar = "<p>Respetado(a) Señor(a),</p>"+
                        "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías Protección S.A.</p>"+
                        "<p>Nos permitimos indicarle que luego de evaluar el contenido de la documentación aportada por usted, se evidenció que la misma se encontraba "+
                        "incompleta, esto le fue informado en días pasados, y se indicó que era necesario que, en un término no superior a un (1) mes, allegara los documentos "+
                        "que registraban faltantes anunciados a continuación:</p>"+
                        listado+
                        "<p>Vencido el plazo informado en dicha comunicación, se pudo constatar por parte de <b>PROTECCIÓN S.A.</b> que usted no aportó dentro del plazo concedido "+
                        "la documentación requerida ni informó sobre la imposibilidad de obtener el documento o cumplir con la gestión.</p>"+
                        "<p>Así las cosas y en aplicación del artículo 17 de la Ley 1755 de 2015, se procede a decretar el <b>DESISTIMIENTO</b> frente a su solicitud de calificación "+
                        "de Pérdida de capacidad laboral (PCL) y en consecuencia se <u>ARCHIVA</u> la mencionada solicitud.</p>"+
                        "<p>No obstante, usted cuenta con el derecho de presentar nuevamente la solicitud con el lleno de los requisitos legales. Si tiene alguna duda o quiere "+
                        "conocer más acerca de esta información, puede escribirnos a clientes@proteccion.com.co o comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en "+
                        "Medellín y Cali 5109099, Barranquilla 319 7999, Cartagena 6424999 y desde el resto del país 01 8000 52 8000.</p>";
                    $('#cuerpo_comunicado').summernote('code', texto_insertar);
                }
            });
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');
            // $('#btn_insertar_Origen').removeClass('d-none');
            // $('#btn_insertar_nombreCIE10').removeClass('d-none');
            // $('#btn_insertar_porPcl').removeClass('d-none');
            // $('#btn_insertar_F_estructuracion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', false);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);
        }else if (opc_seleccionada == "Cierre_MMM_PCL") {
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").val("CIERRE ADMINISTRATIVO SOLICITUD DE CALIFICACIÓN PCL");
            var texto_insertar = "<p>Respetado(a) Señor(a),</p>"+
                "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>"+
                "<p>Nos permitimos informarle que luego de evaluar el contenido de la documentación aportada por usted, se evidenció que aún se encuentra mediando "+
                "tratamiento en su EPS, y aún no alcanza la mejoría médica máxima por lo que no es posible proceder con la calificación de su pérdida de capacidad laboral (PCL).</p>"+
                "<p>Lo anterior debido al Anexo Técnico - Manual Único para la Calificación de la Pérdida de Capacidad Laboral y Ocupacional expedido por orden del Decreto 1507 "+
                "de 2014, el cual establece en el Título Preliminar, lo siguiente:</p>"+
                '<p class="cuerpo_doc_revPen"><b>4.6. MEJORÍA MÉDICA MÁXIMA “MMM”:</b> Punto en el cual la condición patológica se estabiliza sustancialmente y es poco probable que '+
                'cambie, ya sea para mejorar o empeorar, en el próximo año, con o sin tratamiento (…)</p>'+
                '<p class="cuerpo_doc_revPen"><b>5. METODOLOGÍA PARA LA DETERMINACIÓN DEL GRADO EN UNA CLASE DE DEFICIENCIA:</b> Se realizará cuando la persona objeto de calificación alcance la mejoría médica '+
                'máxima (MMM) o cuando termine el proceso de rehabilitación integral y en todo caso antes de superar los quinientos cuarenta (540) días de haber ocurrido el '+
                'accidente o diagnóstico de la enfermedad (…)</p>'+
                "<p>Por tal motivo su trámite será finalizado hasta tanto, culmine dicho tratamiento. Una vez este se encuentre terminado, solicitamos radicar de nuevo su "+
                "solicitud, aportando historia clínica vigente y concepto de los médicos tratantes, documento con el cual se evaluará nuevamente el caso para poder emitir "+
                "una calificación de pérdida de capacidad laboral.</p>"+
                "<p>Así mismo, es importante aclarar que no procede el pago de incapacidades médicas a su nombre, puesto que dicho subsidio será otorgado únicamente por el "+
                "Fondo de Pensiones <b>PROTECCIÓN S.A.</b>, a aquella persona afiliada remitida por su Entidad Promotora de Salud (EPS) con un pronóstico de recuperación favorable, "+
                "evento que no ocurre en su situación particular.</p>"+
                "<p>Esperamos haber atendido su solicitud, permanecemos a su disposición para aclarar cualquier información adicional. Si tiene alguna duda o quiere conocer "+
                "más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o comunicarse con nuestra "+
                "Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 y desde el resto del país 01 8000 52 8000.</p>";
            $('#cuerpo_comunicado').summernote('code', texto_insertar);
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');
            // $('#btn_insertar_Origen').removeClass('d-none');
            // $('#btn_insertar_nombreCIE10').removeClass('d-none');
            // $('#btn_insertar_porPcl').removeClass('d-none');
            // $('#btn_insertar_F_estructuracion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', false);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);
        }else if (opc_seleccionada == "Cierre_Cita_PCL") {
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").val("CIERRE ADMINISTRATIVO SOLICITUD DE CALIFICACIÓN PCL");
            var texto_insertar = "<p>Respetado(a) Señor(a):</p>"+
                "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>"+
                "<p>Una vez evaluada su solicitud de trámite ante el fondo de pensiones y teniendo presente la legislación actual vigente, decreto 2463 del 2001 y decreto 917/1999, "+
                "encontramos que es indispensable que usted asista a las citas de evaluación funcional y aporte Historia Clínica solicitada.</p>"+
                '<p>Por lo tanto, se evidencia que usted no asistió a la segunda cita de valoración funcional el día <b>{{$segunda_fecha}}</b>.</p>'+
                '<p>En virtud de lo anterior, nos permitimos informarle que, a partir de la fecha de notificación de la presente carta, hemos dado por terminada su reclamación '+
                'ante el fondo, ya que ha operado el <b>DESISTIMIENTO</b> tácito de su trámite.</p>'+
                '<p class="cuerpo_doc_revPen">“…Cuando en el curso de una actuación administrativa la autoridad advierta que el peticionario debe realizar una gestión de '+
                'trámite a su cargo, necesaria para adoptar una decisión de fondo, lo requerirá por una sola vez para que la efectúe en el término de un (1) mes, lapso durante '+
                'el cual se suspenderá el término para decidir.</p>'+
                '<p class="cuerpo_doc_revPen"><b>Se entenderá que el peticionario ha desistido de su solicitud o de la actuación cuando no satisfaga el requerimiento</b>, salvo que antes de vencer el plazo '+
                'concedido solicite prórroga hasta por un término igual”.</p>'+
                "<p>No obstante, lo anterior le informamos que la solicitud de reapertura de su caso puede ser presentada en cualquier momento con los documentos que se "+
                "requieran para el estudio del mismo, con la finalidad de que exista un pronunciamiento de fondo. </p>"+
                "<p>Si tiene alguna duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web "+
                "www.proteccion.com y App o comunicarse con nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099 Barranquilla 319 7999 Cartagena 6424999 "+
                "y desde el resto del país 01 8000 52 8000.</p>";
            $('#cuerpo_comunicado').summernote('code', texto_insertar);
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');
            // $('#btn_insertar_Origen').removeClass('d-none');
            // $('#btn_insertar_nombreCIE10').removeClass('d-none');
            // $('#btn_insertar_porPcl').removeClass('d-none');
            // $('#btn_insertar_F_estructuracion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', false);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);
        }else if (opc_seleccionada == "Firmeza_PCL") {
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").val("FIRMEZA DE DICTAMEN DE PÉRDIDA DE CAPACIDAD LABORAL");
            var texto_insertar = "<p>Reciba un cordial saludo de <b>PROTECCIÓN S.A</b></p>"+
                "<p>En atención al Artículo 45 del Decreto 1352 de 2013, nos permitimos informar que <b>PROTECCIÓN S.A.</b>, emitió el dictamen N° <b>{{$N_Dictamen}}</b> de Pérdida de "+
                "Capacidad Laboral (PCL) el día <b>{{$F_visado_comite}}</b>, donde se determinó un porcentaje del <b>{{$PCL}}%</b>, origen <b>{{$Tipo_evento}} {{$Origen}}</b> y fecha de "+
                "estructuración del <b>{{$Fecha_estructuracion}}</b> notificado efectivamente a todas las partes.</p>"+
                "<p>Así la cosas, hechas las respectivas validaciones encontramos que ninguna de las partes interesadas manifestó desacuerdo contra el dictamen en los tiempos "+
                "establecidos por la norma, por lo anterior, confirmamos que la calificación de Pérdida de Capacidad Laboral (PCL) realizada <b><u>se encuentra en firme.</b></u></p>"+
                '<p>Le agradecemos la confianza depositada en nosotros durante estos años y le recordamos que cuenta con nuestra asesoría. Ante cualquier duda, puede comunicarse '+
                'a nuestra Línea de Servicio: Bogotá: 744 44 64, Medellín y Cali: 510 90 99 Barranquilla: 319 79 99, Cartagena: 642 49 99 y resto del país: 01 8000 52 8000.</p>';
            $('#cuerpo_comunicado').summernote('code', texto_insertar);
            // $('#btn_insertar_Detalle_calificacion').removeClass('d-none');
            // $('#btn_insertar_Origen').removeClass('d-none');
            // $('#btn_insertar_nombreCIE10').removeClass('d-none');
            // $('#btn_insertar_porPcl').removeClass('d-none');
            // $('#btn_insertar_F_estructuracion').removeClass('d-none');

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Selección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', false);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);
            

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);
        }else if (opc_seleccionada == 'No_Localizacion'){
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").val("CIERRE ADMINISTRATIVO SOLICITUD DE CALIFICACIÓN POR NO LOCALIZACIÓN");
            var texto_insertar = "<p>Respetado(a) Señor(a):</p>"+
            "<p>Reciba un cordial saludo de la Administradora de Fondos de Pensiones y Cesantías <b>PROTECCIÓN S.A.</b></p>"+
            "<p>Una vez evaluada su solicitud de trámite ante el fondo de pensiones y teniendo presente la legislación actual vigente, "+
            "decreto 2463 del 2001 y decreto 1507 del 2014, encontramos que es indispensable que usted sea citado y valorado por medicina laboral.</p>"+
            "<p>Por lo tanto, se evidencia que no ha sido posible contacto con usted para asignar la cita, debido a que los teléfonos proporcionados no son efectivos.</p>"+
            "<p>En virtud de lo anterior nos permitimos informarle que, a partir de la fecha de notificación de la presente carta, hemos dado por terminada su reclamación ante el fondo, ya que ha operado el <b>DESISTIMIENTO</b> tácito de su trámite.</p>"+
            "<p class='cuerpo_doc_revPen'>“…Cuando en el curso de una actuación administrativa la autoridad advierta que el peticionario debe realizar una gestión de trámite a su cargo, "+
            "necesaria para adoptar una decisión de fondo, lo requerirá por una sola vez para que la efectúe en el término de un (1) mes, lapso durante el cual se suspenderá el término para decidir. "+
            "<b>Se entenderá que el peticionario ha desistido de su solicitud o de la actuación cuando no satisfaga el requerimiento</b>, salvo que antes de vencer el plazo concedido solicite prórroga hasta por un término igual”.</p>"+
            "<p>No obstante, lo anterior le informamos que la solicitud de reapertura de su caso puede ser presentada en cualquier momento con los documentos que se requieran para el estudio del mismo, con la finalidad de que exista un pronunciamiento de fondo.</p>"+
            "<p>Si tiene alguna duda o quiere conocer más acerca de esta información, puede comunicarse con nuestro Asesor Virtual Pronto en nuestro Portal Web www.proteccion.com y App o "+
            "comunicarse con nuestra línea de servicio en Bogotá 7444464, en Medellín y Cali 5109099, Barranquilla 319 7999, Cartagena 6424999 y desde el resto del país 01 8000 52 8000.</p>";
            
            $('#cuerpo_comunicado').summernote('code', texto_insertar);

            // Auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').click();

             // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Deselección automática de las copias a partes interesadas:
            $("#copia_afiliado").prop('checked', false);
            $("#copia_empleador").prop('checked', false);
            $("#copia_afp").prop('checked', false);
            $("#copia_eps").prop('checked', false);
            $("#copia_arl").prop('checked', false);
            $("#copia_afp_conocimiento").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', true);
            $("#firmarcomunicado").prop('checked', true);

        }
        else{
            $("#asunto").prop('readonly', false);
            $(".note-editable").attr("contenteditable", true);
            $("#asunto").val("");
            $('#cuerpo_comunicado').summernote('code', '');
            // $('#btn_insertar_Detalle_calificacion').addClass('d-none');
            $('#btn_insertar_Origen').addClass('d-none');
            $('#btn_insertar_nombreCIE10').addClass('d-none');
            $('#btn_insertar_porPcl').addClass('d-none');
            $('#btn_insertar_F_estructuracion').addClass('d-none');

            // Quitar auto selección de la opción Afiliado (Destinatario Principal)
            $('#afiliado_comunicado').prop('checked', false);

            // Seteo automático del nro de anexos:
            var seteo_nro_anexos = 0;
            $("#anexos").val(seteo_nro_anexos);

            // Deselección automática de las copias a partes interesadas: Eps
            $("#copia_eps").prop('checked', false);

            // Selección automática del checkbox firmar
            $("#firmarcomunicado").prop('disabled', false);
            $("#firmarcomunicado").prop('checked', false);

        }
    });

    // $("#btn_insertar_Detalle_calificacion").click(function(e){
    //     e.preventDefault(); 

    //     var etiqueta_Detalle_calificacion = "{{$Detalle_calificacion_Fbdp}}";
    //     $('#cuerpo_comunicado').summernote('editor.insertText', etiqueta_Detalle_calificacion);
    // });    
    
    $("#btn_insertar_Origen").click(function(e){
        e.preventDefault();

        var etiqueta_nombreCIE10 = "{{$OrigenPcl_dp}}";
        $('#cuerpo_comunicado').summernote('editor.insertText', etiqueta_nombreCIE10);
    });

    $("#btn_insertar_nombreCIE10").click(function(e){
        e.preventDefault();

        var etiqueta_nombreCIE10 = "{{$CIE10Nombres}}";
        $('#cuerpo_comunicado').summernote('editor.insertText', etiqueta_nombreCIE10);
    });

    $("#btn_insertar_porPcl").click(function(e){
        e.preventDefault();

        var etiqueta_porPCL = "{{$PorcentajePcl_dp}}";
        $('#cuerpo_comunicado').summernote('editor.insertText', etiqueta_porPCL);
    });  
    
    $("#btn_insertar_F_estructuracion").click(function(e){
        e.preventDefault();

        var etiqueta_F_estructuracion = "{{$F_estructuracionPcl_dp}}";
        $('#cuerpo_comunicado').summernote('editor.insertText', etiqueta_F_estructuracion);
    });    

    //Cargar_comunicadopcl
    $('#cargarComunicado').click(function(){
        if(!$('#cargue_comunicados')[0].files[0]){
            return $(".cargueundocumentoprimero").removeClass('d-none');
        }
        $(".cargueundocumentoprimero").addClass('d-none');
        var archivo = $('#cargue_comunicados')[0].files[0];
        var documentName = archivo.name;
        var formData = new FormData($('form')[0]);
        formData.append('cargue_comunicados', archivo);
        formData.append('token', $('input[name=_token]').val());
        formData.append('ciudad', $('#ciudad').val());
        formData.append('Id_evento',$('#newId_evento').val());
        formData.append('Id_asignacion',$('#newId_asignacion').val());
        formData.append('Id_procesos',$('#Id_proceso').val());
        formData.append('fecha_comunicado2',$('#fecha_comunicado2').val());
        formData.append('radicado2',$('#radicado2').val());
        formData.append('cliente_comunicado2',$('#cliente').val());
        formData.append('nombre_afiliado_comunicado2',$('#nombre_afiliado_comunicado2').val());
        formData.append('tipo_documento_comunicado2',$('#tipo_documento_comunicado2').val());
        formData.append('identificacion_comunicado2',$('#identificacion_comunicado2').val());
        formData.append('destinatario', 'N/A');
        formData.append('nombre_destinatario','N/A');
        formData.append('nic_cc','N/A');
        formData.append('direccion_destinatario','N/A');
        formData.append('telefono_destinatario',1);
        formData.append('email_destinatario','N/A');
        formData.append('departamento_destinatario',1);
        formData.append('ciudad_destinatario',1);
        formData.append('asunto',documentName);
        formData.append('cuerpo_comunicado','N/A');
        formData.append('anexos',0);
        formData.append('forma_envio',0);
        formData.append('reviso',0);
        formData.append('firmarcomunicado',null);
        formData.append('tipo_descarga', 'Manual');
        formData.append('Nombre_documento', documentName);
        formData.append('modulo','Solicitud documentos - seguimientos calificacion origen');
        
        document.querySelector("#Generar_comunicados").disabled = true;   
        $.ajax({
            type:'POST',
            url:'/registrarComunicado',
            data: formData,   
            processData: false,
            contentType: false,
            beforeSend:  function() {
                $("#cargarComunicado").addClass("descarga-deshabilitada");
            },           
            success:function(response){
                if (response.parametro == 'agregar_comunicado') {
                    $('.alerta_externa_comunicado').removeClass('d-none');
                    $('.alerta_externa_comunicado').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.alerta_externa_comunicado').addClass('d-none');
                        $('.alerta_externa_comunicado').empty();
                        localStorage.setItem("#Generar_comunicados", true);
                        location.reload();
                    }, 3000);
                }
            },
            complete:function(){
                $("#cargarComunicado").removeClass("descarga-deshabilitada");
            }
        });  
    });

    // llenado del formulario para la captura de la modal de Generar Comunicado
    $('#form_generarComunicadoPcl').submit(function (e) {
        e.preventDefault();  
        $("#Generar_comunicados").prop('disabled', true);
        $("#Generar_comunicados").addClass('d-none');
        $("#mostrar_barra_creacion_comunicado").removeClass('d-none');
        var ciudad = $('#ciudad').val();
        var Id_evento = $('#Id_evento').val();
        var Id_asignacion = $('#Id_asignacion').val();
        var Id_procesos = $('#Id_procesos').val();
        var fecha_comunicado2 = $('#fecha_comunicado2').val();
        var radicado2 = $('#radicado2').val();
        var cliente_comunicado2 = $('#cliente_comunicado2').val();
        var nombre_afiliado_comunicado2 = $('#nombre_afiliado_comunicado2').val();
        var tipo_documento_comunicado2 = $('#tipo_documento_comunicado2').val();
        var identificacion_comunicado2 = $('#identificacion_comunicado2').val();                       
        var afiliado_comunicado = $('#afiliado_comunicado').prop('checked');
        var empresa_comunicado = $('#empresa_comunicado').prop('checked');
        var Otro = $('#Otro').prop('checked');
        var radioafiliado_comunicado;
        var radioempresa_comunicado;
        var radioOtro;
        if(afiliado_comunicado){
           var radioafiliado_comunicado = afiliado_comunicado;
        }else if(empresa_comunicado){
           var radioempresa_comunicado = empresa_comunicado;
        }else if(Otro){
           var radioOtro = Otro;
        }
        //console.log(radioafiliado_comunicado);
        var nombre_destinatario = $('#nombre_destinatario').val();
        var nic_cc = $('#nic_cc').val();
        var direccion_destinatario = $('#direccion_destinatario').val();
        var telefono_destinatario = $('#telefono_destinatario').val();
        var email_destinatario = $('#email_destinatario').val();
        var departamento_destinatario = $('#departamento_destinatario').val();
        var ciudad_destinatario = $('#ciudad_destinatario').val();
        var asunto = $('#asunto').val();
        var cuerpo_comunicado = $('#cuerpo_comunicado').val();
        var anexos = $('#anexos').val();
        var forma_envio = $('#forma_envio').val();
        var elaboro2 = $('#elaboro2').val();
        var reviso = $('#reviso').val();
        var firmarcomunicadoPcl = [];
        var N_siniestro = $("#n_siniestro").val();
        $('input[type="checkbox"]').each(function() {
            var firmarcomunicado = $(this).attr('id');   
            if (firmarcomunicado === 'firmarcomunicado') {                
                if ($(this).is(':checked')) {                
                var Valorfirmarcomunicado = $(this).val();
                firmarcomunicadoPcl.push(Valorfirmarcomunicado);
                }
            }
        });
        cuerpo_comunicado = cuerpo_comunicado ? cuerpo_comunicado.replace(/"/g, "'") : '';
               
        var copiaComunicadosPcl = [];
        // creamos un objeto para almacenar el resultado de las entidades de conocimiento cuando el ajax la procese
        let acabo_ajax_entidades_conocimiento = [];
        $('input[type="checkbox"]').each(function() {
            var copiaComunicado = $(this).attr('id');      
            if (copiaComunicado === 'copia_afiliado' || copiaComunicado === 'copia_empleador' || 
                copiaComunicado === 'copia_eps' || copiaComunicado === 'copia_afp' || 
                copiaComunicado === 'copia_arl' || copiaComunicado === 'copia_afp_conocimiento') {                
                    if ($(this).is(':checked')) {                
                        var relacionCopiaValor = $(this).val();
                        // copiaComunicadosPcl.push(relacionCopiaValor);
                        if (relacionCopiaValor == 'AFP_Conocimiento') {
                            let request = $.ajax({
                                url: '/string_entidades_conocimiento',
                                method: 'POST',
                                data: {
                                    id_evento: Id_evento,
                                    _token: $('input[name=_token]').val()
                                },
                                success: function(response) {
                                    copiaComunicadosPcl.push(response);
                                }
                            });
    
                            acabo_ajax_entidades_conocimiento.push(request);
                        } else {
                            copiaComunicadosPcl.push(relacionCopiaValor);
                        }
                    }
            }
        });
        var tipo_descarga = $("[name='tipo_documento_descarga_califi']").filter(":checked").val();
        let token = $('input[name=_token]').val();
        // Cuando el ajax de la entidad de conocimiento se ejecute se procede a crear el comunicado
        $.when.apply($, acabo_ajax_entidades_conocimiento).then(function() {
            var datos_generarComunicado = {
                '_token': token,
                'ciudad':ciudad,
                'Id_evento':Id_evento,
                'Id_asignacion':Id_asignacion,
                'Id_procesos':Id_procesos,
                'fecha_comunicado2':fecha_comunicado2,
                'radicado2':radicado2,            
                'cliente_comunicado2':cliente_comunicado2,
                'nombre_afiliado_comunicado2':nombre_afiliado_comunicado2,
                'tipo_documento_comunicado2':tipo_documento_comunicado2,
                'identificacion_comunicado2':identificacion_comunicado2,            
                'radioafiliado_comunicado':radioafiliado_comunicado,
                'radioempresa_comunicado':radioempresa_comunicado,
                'radioOtro':radioOtro,
                'nombre_destinatario':nombre_destinatario,
                'nic_cc':nic_cc,
                'direccion_destinatario':direccion_destinatario,
                'telefono_destinatario':telefono_destinatario,
                'email_destinatario':email_destinatario,
                'departamento_destinatario':departamento_destinatario,
                'ciudad_destinatario':ciudad_destinatario,
                'asunto':asunto,
                'cuerpo_comunicado':cuerpo_comunicado,
                'anexos':anexos,
                'forma_envio':forma_envio,
                'elaboro2':elaboro2,
                'reviso':reviso,
                'firmarcomunicado':firmarcomunicadoPcl,
                'agregar_copia':copiaComunicadosPcl,
                'tipo_descarga':tipo_descarga,
                'N_siniestro':N_siniestro,
            }
            // console.log("Cuerpo comunicado : ", cuerpo_comunicado);
            if(tipo_descarga === 'Cierre_Cita_PCL'){
                if(cuerpo_comunicado.includes('DD/MM/AAAA')){
                    $("#mostrar_barra_creacion_comunicado").addClass('d-none');
                    $('.danger_comunicado').removeClass('d-none');
                    $('.danger_comunicado').append('<strong>"Para generar éste comunicado debe diligenciar la fecha de la segunda cita en el tercer párrafo</strong>');
                    setTimeout(function(){
                        $('.danger_comunicado').addClass('d-none');
                        $('.danger_comunicado').empty();
                        $("#Generar_comunicados").prop('disabled', false);
                        $("#Generar_comunicados").removeClass('d-none');
                    }, 3000);
                    return;
                }
            }
            $.ajax({
                type:'POST',
                url:'/registrarComunicado',
                data: datos_generarComunicado,            
                success:function(respuesta){
                    let comunicadosSigmel = respuesta.comunicadoSigmel;
                    if (comunicadosSigmel == 'DocumentoSigmel') {                    
                        let Id_Comunicados = respuesta.Id_Comunicado;
                        let bandera_descarga = 'BotonGuardarComunicado';     
                        datos_comunicado = {
                            '_token': token,
                            'cliente_comunicado2_act': cliente_comunicado2,
                            'nombre_afiliado_comunicado2_act': nombre_afiliado_comunicado2,
                            'tipo_documento_comunicado2_act': tipo_documento_comunicado2,
                            'identificacion_comunicado2_act': identificacion_comunicado2,
                            'id_evento_comunicado2_act': Id_evento,
                            'tipo_documento_descarga_califi_editar': tipo_descarga,
                            'radioafiliado_comunicado':radioafiliado_comunicado,
                            'radioempresa_comunicado':radioempresa_comunicado,
                            'radioOtro':radioOtro,                        
                            'nombre_destinatario_act2': nombre_destinatario,
                            'nic_cc_act2': nic_cc,
                            'direccion_destinatario_act2': direccion_destinatario,
                            'telefono_destinatario_act2': telefono_destinatario,
                            'email_destinatario_act2': email_destinatario,
                            'departamento_pdf': departamento_destinatario,
                            'ciudad_pdf': ciudad_destinatario,
                            'asunto_act': asunto,
                            'cuerpo_comunicado_act': cuerpo_comunicado,
                            'files': null,
                            'anexos_act': anexos,
                            'forma_envio_act': forma_envio,
                            'elaboro2_act': elaboro2,
                            'reviso_act': reviso,
                            'firmarcomunicado_editar': firmarcomunicadoPcl,
                            'ciudad_comunicado_act': ciudad,
                            'Id_comunicado_act': Id_Comunicados,
                            'Id_evento_act': Id_evento,
                            'Id_asignacion_act': Id_asignacion,
                            'Id_procesos_act': Id_procesos,
                            'fecha_comunicado2_act': fecha_comunicado2,
                            'agregar_copia_editar':copiaComunicadosPcl,
                            'radicado2_act': radicado2,                    
                            'n_siniestro_proforma_editar': N_siniestro,
                            'bandera_descarga':bandera_descarga,
                        };
                        
                        $.ajax({
                            type:'POST',
                            url:'/generarPdf',
                            data: datos_comunicado,                                       
                            success: function (response, status, xhr) {
                                if (respuesta.parametro == 'agregar_comunicado') {
                                    $("#mostrar_barra_creacion_comunicado").addClass('d-none');
                                    $('.alerta_comunicado').removeClass('d-none');
                                    $('.alerta_comunicado').append('<strong>'+respuesta.mensaje+'</strong>');
                                    setTimeout(function(){
                                        $('.alerta_comunicado').addClass('d-none');
                                        $('.alerta_comunicado').empty();
                                        $("#Generar_comunicados").removeClass('d-none');
                                        localStorage.setItem("#Generar_comunicados", true);
                                        location.reload();
                                    }, 3000);
                                }
                            },
                            error: function (error) {
                                // Manejar casos de error
                                console.error('Error al descargar el PDF:', error);
                            }                    
                        });
                    } else {
    
                        if (respuesta.parametro == 'agregar_comunicado') {
                            $("#mostrar_barra_creacion_comunicado").addClass('d-none');
                            $('.alerta_comunicado').removeClass('d-none');
                            $('.alerta_comunicado').append('<strong>'+respuesta.mensaje+'</strong>');
                            setTimeout(function(){
                                $('.alerta_comunicado').addClass('d-none');
                                $('.alerta_comunicado').empty();
                                $("#Generar_comunicados").removeClass('d-none');
                                localStorage.setItem("#Generar_comunicados", true);
                                location.reload();
                            }, 3000);
                        }
                        
                    }
                }
            });
        });
    }) 

    // Abrir modal de agregar solictudes despues de guardar 
    if (localStorage.getItem("#Generar_comunicados")) {
        // Simular el clic en la etiqueta a después de recargar la página
        localStorage.removeItem("#Generar_comunicados");
        document.querySelector("#clicGuardado").click();
    }

    $('#Hacciones').click(function(){
        $('#borrar_tabla_historial_acciones').empty();

        var datos_llenar_tabla_historial_acciones = {
            '_token': $('input[name=_token]').val(),
            'ID_evento' : $('#id_evento').val(),
            'Id_proceso': $('#Id_proceso').val()
        };
         
        $.ajax({
            type:'POST',
            url:'/historialAccionesEventosPcl',
            data: datos_llenar_tabla_historial_acciones,
            success:function(data) {
                if(data.length == 0){
                    $('#borrar_tabla_historial_acciones').empty();
                }else{
                    // console.log(data);
                    var descargaDocHistorial = '';

                    for (let i = 0; i < data.length; i++) {                                   
                        
                        if (data[i]['Documento'] != 'N/A'){
                            descargaDocHistorial = '<a href="javascript:void(0);" id="DescargaHistorialdoc_' + data[i]['Id_historial_accion'] + '" data-id_doc_descargar="' + data[i]['Id_historial_accion'] + '"><i class="fas fa-download text-info"></i></a>' + 
                                        '<input type="hidden" name="nom_archivo" id="nom_archivo" value="'+data[i]["Documento"]+'">'+
                                        '<input type="hidden" type="text" name="Id_historial_accion" id="Id_historial_accion" value="'+data[i]["Id_historial_accion"]+'">'+                                        
                                        '<input type="hidden" name="ID_evento" id="ID_evento" value="'+data[i]["ID_evento"]+'">'+
                                        '<input type="hidden" name="Id_proceso" id="Id_proceso" value="'+data[i]["Id_proceso"]+'">'+
                                        '<input type="hidden" name="Id_servicio" id="Id_servicio" value="'+data[i]["Id_servicio"]+'">';                          
                            data[i]['descargardoc'] = descargaDocHistorial;
                            
                        }else{
                            data[i]['descargardoc'] = ""; 
                        } 
                    } 

                    $.each(data, function(index, value){
                        llenar_historial_acciones(data, index, value);
                    });
                }
            }
        });
    });

    function llenar_historial_acciones(response, index, value){
        $('#listado_historial_acciones_evento').DataTable({
            dom: 'Bfrtip',                      
            buttons:{
                dom:{
                    buttons:{
                        className: 'btn'
                    }
                },
                buttons:[
                    {
                        extend:"excel",
                        title: 'Historial de acciones',
                        text:'Exportar historial',
                        className: 'btn btn-info',
                        "excelStyles": [                      // estilos de excel
                                                    
                        ],
                        //Limitar columnas para el reporte
                        exportOptions: {
                            columns: [0,1,2,3]
                        }  
                    }
                ]
            }, 
            "destroy": true,
            "data": response,
            "order": [[0, 'desc']],
            "columns":[
                {"data":"F_accion"},
                {"data":"Nombre_usuario"},
                {"data":"Accion"},
                {"data":"Descripcion"},
                {"data":"descargardoc"},
            ],
            "language":{
                "search": "Buscar",
                "info": "Mostrando registros _START_ de _END_ de un total de _TOTAL_ registros",
                "paginate": {
                    "previous": "Anterior",
                    "next": "Siguiente",
                    "first": "Primero",
                    "last": "Último"
                },
                "emptyTable": "No se encontró información",
                "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
            }
        });
    }

    // Descargar documento del historial de acciones
    $(document).on('click', 'a[id^="DescargaHistorialdoc_"]', function() {
        var id_documento = $(this).data('id_doc_descargar');
        var nom_archivo = $(this).siblings('input[name="nom_archivo"]').val();
        var ID_evento = $(this).siblings('input[name="ID_evento"]').val();     
    
        // Crear un enlace temporal para la descarga
        var enlaceDescarga = document.createElement('a');
        enlaceDescarga.href = '/descargar-archivo/'+nom_archivo+'/'+ID_evento;
        enlaceDescarga.target = '_self'; // Abrir en una nueva ventana/tab
        enlaceDescarga.style.display = 'none';
        document.body.appendChild(enlaceDescarga);
    
        // Simular clic en el enlace para iniciar la descarga
        enlaceDescarga.click();
    
        // Eliminar el enlace después de la descarga
        setTimeout(function() {
            document.body.removeChild(enlaceDescarga);
        }, 1000);

    });

    /* Validaciones para el rol Consulta cuando entra a la vista */
    if (idRol == 7) {
        // Desactivar todos los elementos excepto los especificados
        $(':input, select, a, button').not('#listado_roles_usuario, #Hacciones, #histo_servicios, #botonVerEdicionEvento, #cargue_docs, #clicGuardado, #cargue_docs_modal_listado_docs, #abrir_agregar_seguimiento, #fecha_seguimiento, #causal_seguimiento, #descripcion_seguimiento, #Guardar_seguimientos, #botonFormulario2, .btn-danger, a[id^="EditarComunicado_"]').prop('disabled', true);
        $('#aumentarColAccionRealizar').addClass('d-none');
        // Quitar el disabled al formulario oculto para permitirme ir a la edicion del evento.
        $("#enlace_ed_evento").hover(function(){
            $("input[name='_token']").prop('disabled', false);
            $("#bandera_buscador_clpcl").prop('disabled', false);
            $("#newIdEvento").prop('disabled', false);
            $("#newIdAsignacion").prop('disabled', false);
            $("#newIdproceso").prop('disabled', false);
            $("#newIdservicio").prop('disabled', false);
        });
        
        // Si el servicio es Pronunciamiento deshabilita la entrada al submodulo

        //  se quitó a petición de la operación el día 19/12/2024
        
        // if ($("#newIdservicio").val() == 9) {
        //     $("#botonFormulario2").prop('disabled', true);
        // }

        // Quitar el disabled al formulario oculto para permitirme ir al submodulo
        $("#llevar_servicio").hover(function(){
            $("input[name='_token']").prop('disabled', false);
            $("#Id_evento_pcl").prop('disabled', false);
            $("#Id_asignacion_pcl").prop('disabled', false);
        });
        // Deshabilitar el botón Actualizar y Activar el botón Pdf en los comunicados
        $("#Pdf").prop('disabled', false);

        $("button[id^='CargarDocumento_']").prop('disabled', true);
        $("#listado_tipos_documentos_guias").prop('disabled', true);
        $("#CargarDocumento_guias").prop('disabled', true);

    }
    
    //Validacion radicados duplicados
    setTimeout(function() {
        radicados_duplicados('listado_comunicados_pcl');
    }, 500);
    
    // A los usuarios que no tengan el rol Administrador se les aplica los siguientes controles en el formulario de correspondencia:
    // inhabilita los campos nro anexos, asunto, etiquetas, cuerpo comunicado, firmar
    //28-05-24 Se inhabilita validacion de rol, dado que se solicita que sea de manera general y habilitar accciones sobre el cuerpo del comunicado
    //if (idRol != 6) {
        $("#anexos").prop('readonly', true);
        $("#anexos_editar").prop('readonly', true);
        $("#asunto").prop('readonly', true);
        $("#asunto_editar").prop('readonly', true);
        $('#btn_insertar_Origen').prop('disabled', false);
        $('#btn_insertar_nombreCIE10').prop('disabled', false);
        $('#btn_insertar_porPcl').prop('disabled', false);
        $('#btn_insertar_F_estructuracion').prop('disabled', false);

        $('#btn_insertar_Origen_editar').prop('disabled', true);
        $('#btn_insertar_nombreCIE10_editar').prop('disabled', true);
        $('#btn_insertar_porPcl_editar').prop('disabled', true);
        $('#btn_insertar_F_estructuracion_editar').prop('disabled', true);
        
        $(".note-editable").attr("contenteditable", true);
        $("#firmarcomunicado").prop('disabled', true);
        $("#firmarcomunicado_editar").prop('disabled', true);
    //}


});

var copia = 1;
function duplicate() {
    // se crea el contenedor principal
    var container = document.getElementById('contenedorCopia');    
    // se crea el contenedor con el col-6
    var newDiv = document.createElement('div');
    newDiv.className= 'col-6';
    newDiv.id = 'contenerdorCol';
    // Se crea el contenedro con el form-group
    var newDiv2 = document.createElement('div');
    newDiv2.className ='form-group';
    newDiv2.id = 'contenerform';    
    // Se crea un nuevo elemento de entrada input
    var newInput = document.createElement('input');
    newInput.type = 'text';  
    newInput.className = 'form-control';
    // Se genera un nuevo id para el elemento de entrada duplicado
    function incrementarCopia() {
        copia++;
    }      
    var newId = 'input' + (container.getElementsByTagName('input').length + 1);
    newInput.id = newId;
    newInput.name = newId;   
    newInput.placeholder = 'Copia ' + copia;
    incrementarCopia();
    //Se crea el col-3 para el boton
    var newDiv3 = document.createElement('div');
    newDiv3.className = 'col-3';
    newDiv3.id = 'contenerdorCol2';
    //se crea el form-group y se ajusta la posicion
    var newDiv4 = document.createElement('div');
    newDiv4.className = 'form-group';
    newDiv4.id = 'contenerform2';    
    // Se crea el boton de remover la copia
    var removerButton = document.createElement("button");
    removerButton.className = 'btn btn-info';
    removerButton.style = 'border-radius: 50%';
    var icono= document.createElement('i');
    icono.className = 'fas fa-minus';

    removerButton.onclick = function () {    
    container.removeChild(newDiv);
    container.removeChild(newDiv3);
    copia = 1;
    };

    container.appendChild(newDiv);
    newDiv.appendChild(newDiv2);
    newDiv2.appendChild(newInput);
    container.appendChild(newDiv3);
    newDiv3.appendChild(newDiv4);
    newDiv4.appendChild(removerButton);
    removerButton.appendChild(icono);
   
}

var copia2 = 1;
function duplicate2(registro) {
    // se crea el contenedor principal
    var container = document.getElementById('contenedorCopia2');    
    // se crea el contenedor con el col-6
    var newDiv = document.createElement('div');
    newDiv.className= 'col-6';
    newDiv.id = 'contenerdorCol';
    // Se crea el contenedro con el form-group
    var newDiv2 = document.createElement('div');
    newDiv2.className ='form-group';
    newDiv2.id = 'contenerform';    
    // Se crea un nuevo elemento de entrada input
    var newInput = document.createElement('input');
    newInput.type = 'text';  
    newInput.className = 'form-control';
    newInput.value = registro; 
    // Se genera un nuevo id para el elemento de entrada duplicado
    function incrementarCopia() {
        copia2++;
    }      
    var newId = 'input' + (container.getElementsByTagName('input').length + 1);
    newInput.id = newId;
    newInput.name = newId;   
    newInput.placeholder = 'Copia ' + copia2;
    incrementarCopia();
    //Se crea el col-3 para el boton
    var newDiv3 = document.createElement('div');
    newDiv3.className = 'col-3';
    newDiv3.id = 'contenerdorCol2';
    //se crea el form-group y se ajusta la posicion
    var newDiv4 = document.createElement('div');
    newDiv4.className = 'form-group';
    newDiv4.id = 'contenerform2';    
    // Se crea el boton de remover la copia
    var removerButton = document.createElement("button");
    removerButton.className = 'btn btn-info';
    removerButton.style = 'border-radius: 50%';
    var icono= document.createElement('i');
    icono.className = 'fas fa-minus';

    removerButton.onclick = function () {    
    container.removeChild(newDiv);
    container.removeChild(newDiv3);
    copia2 = 1;
    };

    container.appendChild(newDiv);
    newDiv.appendChild(newDiv2);
    newDiv2.appendChild(newInput);
    container.appendChild(newDiv3);
    newDiv3.appendChild(newDiv4);
    newDiv4.appendChild(removerButton);
    removerButton.appendChild(icono);
   
}

var copia3 = 1;
function duplicate3() {
    // se crea el contenedor principal
    var container = document.getElementById('contenedorCopia2');    
    // se crea el contenedor con el col-6
    var newDiv = document.createElement('div');
    newDiv.className= 'col-6';
    newDiv.id = 'contenerdorCol';
    // Se crea el contenedro con el form-group
    var newDiv2 = document.createElement('div');
    newDiv2.className ='form-group';
    newDiv2.id = 'contenerform';    
    // Se crea un nuevo elemento de entrada input
    var newInput = document.createElement('input');
    newInput.type = 'text';  
    newInput.className = 'form-control';
    // Se genera un nuevo id para el elemento de entrada duplicado
    function incrementarCopia() {
        copia3++;
    }      
    var newId = 'input' + (container.getElementsByTagName('input').length + 1);
    newInput.id = newId;
    newInput.name = newId;   
    newInput.placeholder = 'Copia ' + copia3;
    incrementarCopia();
    //Se crea el col-3 para el boton
    var newDiv3 = document.createElement('div');
    newDiv3.className = 'col-3';
    newDiv3.id = 'contenerdorCol2';
    //se crea el form-group y se ajusta la posicion
    var newDiv4 = document.createElement('div');
    newDiv4.className = 'form-group';
    newDiv4.id = 'contenerform2';    
    // Se crea el boton de remover la copia
    var removerButton = document.createElement("button");
    removerButton.className = 'btn btn-info';
    removerButton.style = 'border-radius: 50%';
    var icono= document.createElement('i');
    icono.className = 'fas fa-minus';

    removerButton.onclick = function () {    
    container.removeChild(newDiv);
    container.removeChild(newDiv3);
    copia3 = 1;
    };

    container.appendChild(newDiv);
    newDiv.appendChild(newDiv2);
    newDiv2.appendChild(newInput);
    container.appendChild(newDiv3);
    newDiv3.appendChild(newDiv4);
    newDiv4.appendChild(removerButton);
    removerButton.appendChild(icono);
   
}


/* Función para añadir los controles de cada elemento de cada fila */
function funciones_elementos_fila(num_consecutivo) {
    /* SELECT 2 LISTADO DOCUMENTOS SOLICITADOS */
    $("#lista_docs_fila_"+num_consecutivo).select2({
        width: '100%',
        placeholder: "Seleccione",
        allowClear: false
    });

    // Cargue de Documentos solicitados
    let token = $("input[name='_token']").val();
    let datos_consultar_documentos_solicitados = {
        '_token': token,
        'parametro' : "listado_documentos_solicitados",
    };
    $.ajax({
        type:'POST',
        url:'/CargarDatosSolicitados',
        data: datos_consultar_documentos_solicitados,
        success:function(data){
            // $("select[id^='lista_docs_fila_']").empty();
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $("#lista_docs_fila_"+num_consecutivo).append('<option value="'+data[claves[i]]["Id_Documento"]+'">'+data[claves[i]]["Nombre_documento"]+'</option>');
            }
        }
    });

    /* SELECT 2 LISTADO SOLICITANTES */
    $("#lista_solicitante_fila_"+num_consecutivo).select2({
        width: '100%',
        placeholder: "Seleccione",
        allowClear: false
    });

    // Cargue de listado de Solicitantes
    let datos_consultar_solicitantes = {
        '_token': token,
        'parametro' : "listado_solicitantes",
    };
    $.ajax({
        type:'POST',
        url:'/CargarDatosSolicitados',
        data: datos_consultar_solicitantes,
        success:function(data){
            // $("select[id^='lista_docs_fila_']").empty();
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $("#lista_solicitante_fila_"+num_consecutivo).append('<option value="'+data[claves[i]]["Id_solicitante"]+'">'+data[claves[i]]["Solicitante"]+'</option>');
            }
        }
    });
}

/* Si se selecciona la opción Otros Documentos Inserta un campo de texto (SELECTOR DE DOCUMENTOS) */
$(document).on('change', "select[id^='lista_docs_fila_']", function(){
    
    var id_selecccionado = $(this).attr("id");
    var consecutivo = id_selecccionado.match(/[0-9]+/);
    if ($(this).find('option:selected').text() == 'Otros documentos') {
        $string_input_otro_doc = '<input type="text" class="form-control" name="nombre_otro_doc" id="nombre_otro_doc_'+consecutivo[0]+'" placeholder="Escriba el nombre del documento." required>';
        $('#contenedor_otro_doc_fila_'+consecutivo[0]).append($string_input_otro_doc);
    }else{
        $('#contenedor_otro_doc_fila_'+consecutivo[0]).empty();
    }
});

/* Si se selecciona la opción Otro Cual Inserta un campo de texto (SELECTOR DE SOLICITANTES) */
$(document).on('change', "select[id^='lista_solicitante_fila_']", function(){
    var id_selecccionado = $(this).attr("id");
    var consecutivo = id_selecccionado.match(/[0-9]+/);
    if ($(this).find('option:selected').text() == 'Otro/¿Cual?') {
        $string_input_otro_doc = '<input type="text" class="form-control" name="nombre_otro_solicitante" id="nombre_otro_solicitante_'+consecutivo[0]+'" placeholder="Escriba el nombre del solicitante." required>';
        $('#contenedor_otro_solicitante_fila_'+consecutivo[0]).append($string_input_otro_doc);
    }else{
        $('#contenedor_otro_solicitante_fila_'+consecutivo[0]).empty();
    }
});

/* FUNCIONALIDAD PARA RECOPILAR LOS DATOS POR CADA FILA DE LA TABLA */
$(document).ready(function(){
    $("#guardar_datos_tabla").click(function(){

        // Validación: Se checkea la opción no aporta documentos y se intenta enviar pero ya con registros existentes en la tabla
        if ($("#No_aporta_documentos").is(':checked') == true && $("#conteo_listado_documentos_solicitados").val() > 0) {
            $("#No_aporta_documentos").prop("checked", false);
            $('#resultado_insercion').removeClass('d-none');
            $('#resultado_insercion').addClass('alert-danger');
            $('#resultado_insercion').append('<strong>No puede seleccionar la opción No aporta documentos debido a que existe información guardada en el sistema.</strong>');
            setTimeout(() => {
                $('#resultado_insercion').addClass('d-none');
                $('#resultado_insercion').removeClass('alert-danger');
                $('#resultado_insercion').empty();
            }, 4000);
        }else{
            
            let token = $("input[name='_token']").val();
            var guardar_datos = [];
            var datos_finales_documentos_solicitados = [];
            var coincidencia_1 = "lista_docs_fila_";
            var coincidencia_2 = "lista_solicitante_fila_";
    
            var array_id_filas = [];
            // RECORREMOS LOS TD DE LA TABLA PARA EXTRAER LOS DATOS E INSERTARLOS EN UN ARREGLO (LA INSERCIÓN LA HACE POR CADA FILA, POR ENDE, ES UN ARRAY MULTIDIMENSIONAL)
            $('#listado_docs_solicitados tbody tr').each(function (index) {
                array_id_filas.push($(this).attr('id'));
                if ($(this).attr('id') !== "datos_visuales") {
                    $(this).children("td").each(function (index2) {
                        var nombres_ids = $(this).find('*').attr("id");
                        if (nombres_ids != undefined) {
                            guardar_datos.push($('#'+nombres_ids).val());
                            if (nombres_ids.startsWith(coincidencia_1)) {
        
                                if ($('#'+nombres_ids).val() == 37) {
                                    guardar_datos.push($(this).find("input[id^='nombre_otro_doc_']").val());
                                }else{
                                    guardar_datos.push($('#'+nombres_ids).find('option:selected').text());
                                }
                            }
                            if (nombres_ids.startsWith(coincidencia_2)) {
                                if ($('#'+nombres_ids).val() == 8) {
                                    guardar_datos.push($(this).find("input[id^='nombre_otro_solicitante_']").val());
                                }else{
                                    guardar_datos.push($('#'+nombres_ids).find('option:selected').text());
                                }
                            }
                        }
                        if((index2+1) % 5 === 0){
                            datos_finales_documentos_solicitados.push(guardar_datos);
                            guardar_datos = [];
                        }
                    });
                }
            });
    
            // ENVÍO POR AJAX LA INFORMACIÓN FINAL DE LA TABLA, JUNTO CON EL ID EVENTO, ID ASIGNACION, ID PROCESO
            if (datos_finales_documentos_solicitados.length > 0) {
                // Validacion: Se desmarca la opción no aporta documentos y se inserta registros.
                if ($('#validacion_aporta_doc').data("id_tupla_no_aporta") != undefined) {
                    var tupla_no_aporta = $('#validacion_aporta_doc').data("id_tupla_no_aporta");
                }else{
                    var tupla_no_aporta = 0;
                }
                let envio_datos = {
                    '_token': token,
                    'datos_finales_documentos_solicitados' : datos_finales_documentos_solicitados,
                    'Id_evento': $('#newId_evento').val(),
                    'Id_Asignacion': $('#newId_asignacion').val(),
                    'Id_proceso': $('#Id_proceso').val(),
                    'tupla_no_aporta': tupla_no_aporta,
                    'parametro': "datos_bitacora"
                };
                
                $.ajax({
                    type:'POST',
                    url:'/GuardarDocumentosSolicitados',
                    data: envio_datos,
                    beforeSend:  function() {
                        $("#guardar_datos_tabla").addClass("descarga-deshabilitada");
                    },
                    success:function(response){
                        // console.log(response);
                        if (response.parametro == "inserto_informacion") {
                            $('#resultado_insercion').removeClass('d-none');
                            $('#resultado_insercion').addClass('alert-success');
                            $('#resultado_insercion').append('<strong>'+response.mensaje+'</strong>');
                            setTimeout(() => {
                                $('#resultado_insercion').addClass('d-none');
                                $('#resultado_insercion').removeClass('alert-success');
                                $('#resultado_insercion').empty();
                            }, 3000);
                        }
                    },
                    complete:function(){
                        localStorage.setItem("#guardar_datos_tabla", true);
                        location.reload();
                        // $("#guardar_datos_tabla").removeClass("descarga-deshabilitada");
                    }
                });            
            }else{
    
                // Validación: No se inserta datos y selecciona el checkbox de No aporta documentos
                if ($("#No_aporta_documentos").is(':checked')) {
                    let envio_datos = {
                        '_token': token,
                        'Id_evento': $('#newId_evento').val(),
                        'Id_Asignacion': $('#newId_asignacion').val(),
                        'Id_proceso': $('#Id_proceso').val(),
                        'parametro': "no_aporta"
                    };
            
                    $.ajax({
                        type:'POST',
                        url:'/GuardarDocumentosSolicitados',
                        data: envio_datos,
                        beforeSend:  function() {
                            $("#guardar_datos_tabla").addClass("descarga-deshabilitada");
                        },
                        success:function(response){
                            if (response.parametro == "inserto_informacion") {
                                $('#resultado_insercion').removeClass('d-none');
                                $('#resultado_insercion').addClass('alert-success');
                                $('#resultado_insercion').append('<strong>'+response.mensaje+'</strong>');
                                setTimeout(() => {
                                    $('#resultado_insercion').addClass('d-none');
                                    $('#resultado_insercion').removeClass('alert-success');
                                    $('#resultado_insercion').empty();
                                }, 3000);
                            }else{
                                $('#resultado_insercion').removeClass('d-none');
                                $('#resultado_insercion').addClass('alert-danger');
                                $('#resultado_insercion').append('<strong>'+response.mensaje+'</strong>');
                                setTimeout(() => {
                                    $('#resultado_insercion').addClass('d-none');
                                    $('#resultado_insercion').removeClass('alert-danger');
                                    $('#resultado_insercion').empty();
                                }, 3000);
                            }
                        },
                        complete:function(){
                            localStorage.setItem("#guardar_datos_tabla", true);
                            location.reload();
                            // $("#guardar_datos_tabla").removeClass("descarga-deshabilitada");
                        }
                    }); 
                }else{
                    $('#resultado_insercion').removeClass('d-none');
                    $('#resultado_insercion').addClass('alert-danger');
                    $('#resultado_insercion').append('<strong>No se encontró información para guardar en el sistema.</strong>');
                    setTimeout(() => {
                        $('#resultado_insercion').addClass('d-none');
                        $('#resultado_insercion').removeClass('alert-danger');
                        $('#resultado_insercion').empty();
                    }, 3000);
                }
            }
        }

    });

    // Abrir modal de agregar seguimiento despues de guardar 
    if (localStorage.getItem("#guardar_datos_tabla")) {
        // Simular el clic en la etiqueta a después de recargar la página
        localStorage.removeItem("#guardar_datos_tabla");
        document.querySelector("#clicGuardado").click();
    }

});

/* FUNCIONALIDAD PARA ELIMINAR LAS FILAS INFORMATIVAS */
$(document).ready(function(){

    $(document).on('click', "a[id^='btn_remover_fila_visual_']", function(){

        var id_seleccion = $(this).attr("id");

        let token = $("input[name='_token']").val();
        let datos_fila_quitar = {
            '_token': token,
            'fila' : $(this).data("id_fila_quitar"),
            'Id_evento': $('#newId_evento').val()
        };
        
        $.ajax({
            type:'POST',
            url:'/EliminarFila',
            data: datos_fila_quitar,
            success:function(response){
                // console.log(response);
                if (response.parametro == "fila_eliminada") {
                    $('#resultado_insercion').empty();
                    $('#resultado_insercion').removeClass('d-none');
                    $('#resultado_insercion').addClass('alert-success');
                    $('#resultado_insercion').append('<strong>'+response.mensaje+'</strong>');
                    
                    setTimeout(() => {
                        $('#resultado_insercion').addClass('d-none');
                        $('#resultado_insercion').removeClass('alert-success');
                        $('#resultado_insercion').empty();
                    }, 3000);
                }
                if (response.total_registros == 0) {
                    $("#conteo_listado_documentos_solicitados").val(response.total_registros);
                }

                // localStorage.setItem("#"+id_seleccion, true);

                // setTimeout(() => {
                //     location.reload();
                // }, 3000);

                // // Abrir modal de agregar seguimiento despues de guardar 
                // if (localStorage.getItem("#"+id_seleccion)) {
                //     // Simular el clic en la etiqueta a después de recargar la página
                //     localStorage.removeItem("#"+id_seleccion);
                //     document.querySelector("#clicGuardado").click();
                // }

            }
        });

        

    });

    $('#actualizar_datos_tabla').click(function (e) {
        e.preventDefault();            
        var valoresInputsFecha = {};
        $('input[id^="fecha_recepcion_"]').each(function() {
            var id = $(this).attr('id').split('_').pop();
            var valor = $(this).val();
            if (valor !== "" && typeof valor !== "undefined") {
                valoresInputsFecha[id] = valor;
            }
        });
        // console.log(valoresInputsFecha);
        // Convertir el objeto en un array de objetos
        var Fechas_recepcion = Object.keys(valoresInputsFecha).map(function(key) {
            return { id: key, fecha: valoresInputsFecha[key] };
        });
        // console.log(Fechas_recepcion);

        let token = $("input[name='_token']").val();
        let datos_fila_editar= {
            '_token': token,
            'Fechas_recepcion' : Fechas_recepcion,
            'Id_evento': $('#newId_evento').val()
        };    

        $.ajax({
            type:'POST',
            url:'/EditarFecha_Recepcion_Doc_soliPCl',
            data: datos_fila_editar,
            success:function(response){
                // console.log(response);
                if (response.parametro == "filas_editadas") {
                    $('#resultado_insercion').empty();
                    $('#resultado_insercion').removeClass('d-none');
                    $('#resultado_insercion').addClass('alert-success');
                    $('#resultado_insercion').append('<strong>'+response.mensaje+'</strong>');
                    
                    setTimeout(() => {
                        $('#resultado_insercion').addClass('d-none');
                        $('#resultado_insercion').removeClass('alert-success');
                        $('#resultado_insercion').empty();
                    }, 3000);
                    localStorage.setItem("#guardar_datos_tabla", true);
                    
                    setTimeout(() => {
                        location.reload();
                    }, 3000);
                }
                // else{
                //     $('#resultado_insercion').empty();
                //     $('#resultado_insercion').removeClass('d-none');
                //     $('#resultado_insercion').addClass('alert-danger');
                //     $('#resultado_insercion').append('<strong>'+response.mensaje+'</strong>');
                    
                //     setTimeout(() => {
                //         $('#resultado_insercion').addClass('d-none');
                //         $('#resultado_insercion').removeClass('alert-danger');
                //         $('#resultado_insercion').empty();
                //     }, 3000);
                // }             
            }
        });

    });
    // Abrir modal de agregar seguimiento despues de guardar 
    if (localStorage.getItem("#guardar_datos_tabla")) {
        // Simular el clic en la etiqueta a después de recargar la página
        localStorage.removeItem("#guardar_datos_tabla");
        document.querySelector("#clicGuardado").click();
    }

    /* 
        Funcionalidad de no permitir capturar fechas inferiores a la actual
        en los inputs date de Fecha de 1ra cita y Fecha de 2da cita
    */
    $(document).on('keyup change', '#fecha_primera_cita, #fecha_segunda_cita', function(event){

        var fecha_actual = obtenerFechaActual();
        var tipo_evento = event.type;

        if (tipo_evento == 'keyup' || tipo_evento == 'change') {
            if ($(this).val() < fecha_actual) {
                // Eliminar cualquier alerta previa
                if ($(this).next('i').length) {
                    $(this).next('i').remove();
                }
                let alerta = '<i style="color:red;">La fecha ingresada debe ser igual o superior a la fecha actual.</i>';
                $(this).after(alerta);
            }else{
                if ($(this).next('i').length) {
                    $(this).next('i').remove();
                }
            }
        }
    });
});

/* Función para obtener la fecha actual */
function obtenerFechaActual() {
    var hoy = new Date();
    var dia = hoy.getDate();
    var mes = hoy.getMonth() + 1; // Los meses van de 0 a 11
    var año = hoy.getFullYear();

    // Formatear la fecha como AAAA-MM-DD
    if (mes < 10) {
        mes = '0' + mes; // Agregar un cero si el mes es menor a 10
    }
    if (dia < 10) {
        dia = '0' + dia; // Agregar un cero si el día es menor a 10
    }

    return año + '-' + mes + '-' + dia;
};