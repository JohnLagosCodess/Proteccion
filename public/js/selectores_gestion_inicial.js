$(document).ready(function(){

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE CLIENTES */
    $(".cliente").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE TIPOS CLIENTES */
    $(".tipo_cliente").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE TIPO DE EVENTOS */
    $(".tipo_evento").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE TIPO DE DOCUMENTO */
    $(".tipo_documento").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE GÉNERO */
    $(".genero").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE ESTADO CIVIL */
    $(".estado_civil").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE NIVEL ESCOLAR */
    $(".nivel_escolar").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE DOMINANCIA */
    $(".dominancia").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE DEPARTAMENOS (INFORMACIÓN AFILIADO) */
    $(".departamento_info_afiliado").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE MUNCIPIOS (INFORMACIÓN AFILIADO) */
    $(".municipio_info_afiliado").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE TIPOS DE AFILIADO */
    $(".tipo_afiliado").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE EPS */
    $(".eps").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE AFP */
    $(".afp").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE ARL (INFORMACIÓN AFILIADO) */
    $(".arl_info_afiliado").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE APODERADO */
    $(".apoderado").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DE ACTIVO */
    $(".activo").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });


    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO ARL (INFORMACIÓN LABORAL) */
    $(".arl_info_laboral").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO DEPARTAMENTO (INFORMACIÓN LABORAL) */
    $(".departamento_info_laboral").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO MUNICIPIO (INFORMACIÓN LABORAL) */
    $(".municipio_info_laboral").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO ACTIVIDAD ECONOMICA */
    $(".actividad_economica").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO CLASE RIESGO */
    $(".clase_riesgo").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO CIUO */
    $(".codigo_ciuo").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO MOTIVO SOLICITUD */
    $(".motivo_solicitud").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO TIPO DE VINCULO */
    $(".tipovinculo").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO REGIMEN */
    $(".regimen").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO SOLICITANTE */
    $(".solicitante").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO NOMBRE SOLICITANTE */
    $(".nombre_solicitante").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO FUENTE DE INFORMACION */
    $(".fuente_informacion").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO PROCESO */
    $(".proceso").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO SERVICIO */
    $(".servicio").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* INICIALIZACIÓN DEL SELECT2 DE LISTADO ACCION */
    $(".accion").select2({
        placeholder: "Seleccione una opción",
        allowClear: false
    });

    /* VALIDACIÓN CUANDO SE ESCRIBA EL NOMBRE DEL AFILIADO SIEMPRE SEA EN MAYUSCULA */
    $('#nombre_afiliado').keyup(function(){
        $('#nombre_afiliado').val($(this).val().toUpperCase());
    });

    /* VALIDACIÓN CUANDO SE ESCRIBA EL NOMBRE DEL APODERADO SIEMPRE SEA EN MAYUSCULA */
    $('#nombre_apoderado').keyup(function(){
        $('#nombre_apoderado').val($(this).val().toUpperCase());
    });

    /* VALIDACIÓN CUANDO SE ESCRIBA LA EMPRESA SIEMPRE SEA EN MAYUSCULA */
    $('#empresa').keyup(function(){
        $('#empresa').val($(this).val().toUpperCase());
    });

    /* LLENADO DE SELECTORES PRINCIPALES */
    let token = $('input[name=_token]').val();

    // listado de clientes
    let datos_lista_clientes = {
        '_token': token,
        'parametro' : "lista_clientes"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_clientes,
        success:function(data) {
            // console.log(data);
            $('#cliente').empty();
            $('#cliente').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#cliente').append('<option value="'+data[claves[i]]["Id_Cliente"]+'">'+data[claves[i]]["Nombre_cliente"]+'</option>');
            }
        }
    });
    // listado de tipos de clientes
    let datos_lista_tipo_clientes = {
        '_token': token,
        'parametro' : "lista_tipo_clientes"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_tipo_clientes,
        success:function(data) {
            // console.log(data);
            $('#tipo_cliente').empty();
            $('#tipo_cliente').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#tipo_cliente').append('<option value="'+data[claves[i]]["Id_TipoCliente"]+'">'+data[claves[i]]["Nombre_tipo_cliente"]+'</option>');
            }
        }
    });
    // listado tipo de evento
    let datos_lista_tipo_evento = {
        '_token': token,
        'parametro' : "lista_tipo_evento"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_tipo_evento,
        success:function(data) {
            // console.log(data);
            $('#tipo_evento').empty();
            $('#tipo_evento').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#tipo_evento').append('<option value="'+data[claves[i]]["Id_Evento"]+'">'+data[claves[i]]["Nombre_evento"]+'</option>');
            }
        }
    });
    // listado tipos de documento
    let datos_lista_tipo_documento = {
        '_token': token,
        'parametro' : "lista_tipo_documento"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_tipo_documento,
        success:function(data) {
            // console.log(data);
            $('#tipo_documento').empty();
            $('#tipo_documento').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#tipo_documento').append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });
    // listado generos
    let datos_lista_generos = {
        '_token': token,
        'parametro' : "genero"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_generos,
        success:function(data) {
            // console.log(data);
            $('#genero').empty();
            $('#genero').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#genero').append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });
    // listado estado civil
    let datos_lista_estado_civil = {
        '_token': token,
        'parametro' : "estado_civil"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_estado_civil,
        success:function(data) {
            // console.log(data);
            $('#estado_civil').empty();
            $('#estado_civil').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#estado_civil').append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });
    // listado nivel escolar
    let datos_lista_nivel_escolar = {
        '_token': token,
        'parametro' : "nivel_escolar"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_nivel_escolar,
        success:function(data) {
            // console.log(data);
            $('#nivel_escolar').empty();
            $('#nivel_escolar').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#nivel_escolar').append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });
    // listado dominancia
    let datos_lista_dominancia = {
        '_token': token,
        'parametro' : "dominancia"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_dominancia,
        success:function(data) {
            // console.log(data);
            $('#dominancia').empty();
            $('#dominancia').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#dominancia').append('<option value="'+data[claves[i]]["Id_Dominancia"]+'">'+data[claves[i]]["Nombre_dominancia"]+'</option>');
            }
        }
    });
    // listado Departamentos (Informacion Afiliado)
    let datos_lista_departamentos_info_afiliado = {
        '_token': token,
        'parametro' : "departamentos_info_afiliado"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_departamentos_info_afiliado,
        success:function(data) {
            // console.log(data);
            $('#departamento_info_afiliado').empty();
            $('#departamento_info_afiliado').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#departamento_info_afiliado').append('<option value="'+data[claves[i]]["Id_departamento"]+'">'+data[claves[i]]["Nombre_departamento"]+'</option>');
            }
        }
    });
    // listado municipios dependiendo del departamentos (informacion afiliado)
    $('#departamento_info_afiliado').change(function(){
        $('#municipio_info_afiliado').prop('disabled', false);
        let id_departamento_info_afiliado = $('#departamento_info_afiliado').val();
        let datos_lista_municipios_info_afiliado = {
            '_token': token,
            'parametro' : "municipios_info_afiliado",
            'id_departamento_info_afiliado': id_departamento_info_afiliado
        };
        $.ajax({
            type:'POST',
            url:'/cargarselectores',
            data: datos_lista_municipios_info_afiliado,
            success:function(data) {
                // console.log(data);
                $('#municipio_info_afiliado').empty();
                $('#municipio_info_afiliado').append('<option value="" selected>Seleccione</option>');
                let claves = Object.keys(data);
                for (let i = 0; i < claves.length; i++) {
                    $('#municipio_info_afiliado').append('<option value="'+data[claves[i]]["Id_municipios"]+'">'+data[claves[i]]["Nombre_municipio"]+'</option>');
                }
            }
        });
    });

    // listado tipo de afiliado
    let datos_lista_tipo_afiliado = {
        '_token': token,
        'parametro' : "tipo_afiliado"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_tipo_afiliado,
        success:function(data) {
            // console.log(data);
            $('#tipo_afiliado').empty();
            $('#tipo_afiliado').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#tipo_afiliado').append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });
    // lista eps
    let datos_lista_eps = {
        '_token': token,
        'parametro' : "lista_eps"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_eps,
        success:function(data) {
            // console.log(data);
            $('#eps').empty();
            $('#eps').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#eps').append('<option value="'+data[claves[i]]["Id_Eps"]+'">'+data[claves[i]]["Nombre_eps"]+'</option>');
            }
        }
    });

    // lista afp
    let datos_lista_afp = {
        '_token': token,
        'parametro' : "lista_afp"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_afp,
        success:function(data) {
            // console.log(data);
            $('#afp').empty();
            $('#afp').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#afp').append('<option value="'+data[claves[i]]["Id_Afp"]+'">'+data[claves[i]]["Nombre_afp"]+'</option>');
            }
        }
    });
    // lista arl (información afiliado)
    let datos_lista_arl_info_afiliado = {
        '_token': token,
        'parametro' : "lista_arl_info_afiliado"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_arl_info_afiliado,
        success:function(data) {
            // console.log(data);
            $('#arl_info_afiliado').empty();
            $('#arl_info_afiliado').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#arl_info_afiliado').append('<option value="'+data[claves[i]]["Id_Arl"]+'">'+data[claves[i]]["Nombre_arl"]+'</option>');
            }
        }
    });
    // lista apoderado
    let datos_lista_arl_apoderado = {
        '_token': token,
        'parametro' : "apoderado"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_arl_apoderado,
        success:function(data) {
            // console.log(data);
            $('#apoderado').empty();
            $('#apoderado').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#apoderado').append('<option value="'+data[claves[i]]["Nombre_parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });
    // lista activo
    let datos_lista_activo = {
        '_token': token,
        'parametro' : "activo"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_activo,
        success:function(data) {
            // console.log(data);
            $('#activo').empty();
            $('#activo').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#activo').append('<option value="'+data[claves[i]]["Nombre_parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });

    //LISTADO ARL (Información Laboral)
    let datos_lista_arl = {
        '_token': token,
        'parametro' : "listado_arl_info_laboral"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_arl,
        success:function(data) {
            // console.log(data);
            $('#arl_info_laboral').empty();
            $('#arl_info_laboral').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#arl_info_laboral').append('<option value="'+data[claves[i]]["Id_Arl"]+'">'+data[claves[i]]["Nombre_arl"]+'</option>');
            }
        }
    });


    //LISTADO DEPARTAMENTO (Información Laboral)
    let datos_listado_departamento = {
        '_token': token,
        'parametro' : "listado_departamento_info_laboral"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_listado_departamento,
        success:function(data) {
            //console.log(data);
            $('#departamento_info_laboral').empty();
            $('#departamento_info_laboral').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#departamento_info_laboral').append('<option value="'+data[claves[i]]["Id_departamento"]+'">'+data[claves[i]]["Nombre_departamento"]+'</option>');
            }
        }
    });
    

    // LISTADO DE MUNICIPIOS (Información Laboral)
    $('#departamento_info_laboral').change( function(){
        $('#municipio_info_laboral').prop('disabled', false);
        let id_departamento_info_laboral = $('#departamento_info_laboral').val();
        let datos_municipio_info_laboral = {
            '_token': token,
            'parametro' : "municipios_info_laboral",
            'id_departamento_info_laboral': id_departamento_info_laboral
        };

        $.ajax({
            type:'POST',
            url:'/cargarselectores',
            data: datos_municipio_info_laboral,
            success:function(data) {
                //console.log(data);
                $('#municipio_info_laboral').empty();
                $('#municipio_info_laboral').append('<option value="" selected>Seleccione</option>');
                let claves = Object.keys(data);
                for (let i = 0; i < claves.length; i++) {
                    $('#municipio_info_laboral').append('<option value="'+data[claves[i]]["Id_municipios"]+'">'+data[claves[i]]["Nombre_municipio"]+'</option>');
                }
            }
        });
    });

    //LISTADO ACTIVIDAD ECONOMICA
    let datos_lista_actividad_economica = {
        '_token': token,
        'parametro' : "listado_actividad_economica"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_actividad_economica,
        success:function(data) {
            //console.log(data);
            $('#actividad_economica').empty();
            $('#actividad_economica').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#actividad_economica').append('<option value="'+data[claves[i]]["Id_ActEco"]+'">'+data[claves[i]]["id_codigo"]+' - '+data[claves[i]]["Nombre_actividad"]+'</option>');
            }
        }
    });

    //LISTADO CLASE DE RIESGO
    let datos_lista_clase_de_riesgos = {
        '_token': token,
        'parametro' : "listado_clase_riesgo"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_clase_de_riesgos,
        success:function(data) {
            //console.log(data);
            $('#clase_riesgo').empty();
            $('#clase_riesgo').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#clase_riesgo').append('<option value="'+data[claves[i]]["Id_Riesgo"]+'">'+data[claves[i]]["Nombre_riesgo"]+'</option>');
            }
        }
    });

    //LISTADO CIUO
    let datos_lista_ciuo = {
        '_token': token,
        'parametro' : "listado_codigo_ciuo"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_ciuo,
        success:function(data) {
            //console.log(data);
            $('#codigo_ciuo').empty();
            $('#codigo_ciuo').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#codigo_ciuo').append('<option value="'+data[claves[i]]["Id_Codigo"]+'">'+data[claves[i]]["id_codigo_ciuo"]+' - '+data[claves[i]]["Nombre_ciuo"]+'</option>');
            }
        }
    });

    //LISTADO MOTIVO SOLICITUD
    let datos_lista_motivo_solicitud = {
        '_token': token,
        'parametro' : "listado_motivo_solicitud"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_motivo_solicitud,
        success:function(data) {
            //console.log(data);
            $('#motivo_solicitud').empty();
            $('#motivo_solicitud').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#motivo_solicitud').append('<option value="'+data[claves[i]]["Id_Solicitud"]+'">'+data[claves[i]]["Nombre_solicitud"]+'</option>');
            }
        }
    });

    //LISTADO TIPO VINCULACION
    let datos_lista_tipo_viculacion = {
        '_token': token,
        'parametro' : "listado_tipo_vinculo"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_lista_tipo_viculacion,
        success:function(data) {
            //console.log(data);
            $('#tipovinculo').empty();
            $('#tipovinculo').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#tipovinculo').append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });

    //LISTADO REGIMEN EN SALUD
    let datos_listado_solicitud_regimen_en_salud = {
        '_token': token,
        'parametro' : "listado_solicitud_regimen_en_salud"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_listado_solicitud_regimen_en_salud,
        success:function(data) {
            //console.log(data);
            $('#regimen').empty();
            $('#regimen').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#regimen').append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });

    //LISTADO SOLICITANTE
    let datos_listado_solicitante = {
        '_token': token,
        'parametro' : "listado_solicitante"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_listado_solicitante,
        success:function(data) {
            //console.log(data);
            $('#solicitante').empty();
            $('#solicitante').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#solicitante').append('<option value="'+data[claves[i]]["Id_solicitante"]+'">'+data[claves[i]]["Solicitante"]+'</option>');
            }
        }
    });

    // LISTADO NOMBRE SOLICITANTE
    $('#solicitante').change(function(){
        $('#nombre_solicitante').prop('disabled', false);
        let id_solicitante = $('#solicitante').val();
        let datos_listado_nombre_solicitante = {
            '_token': token,
            'parametro' : "nombre_solicitante",
            'id_solicitante': id_solicitante
        };
        $.ajax({
            type:'POST',
            url:'/cargarselectores',
            data: datos_listado_nombre_solicitante,
            success:function(data) {
                // console.log(data);
                $('#nombre_solicitante').empty();
                $('#nombre_solicitante').append('<option value="" selected>Seleccione</option>');
                let claves = Object.keys(data);
                for (let i = 0; i < claves.length; i++) {
                    $('#nombre_solicitante').append('<option value="'+data[claves[i]]["Id_Nombre_solicitante"]+'">'+data[claves[i]]["Nombre_solicitante"]+'</option>');
                }
            }
        });
    });

    //LISTADO FUENTE DE INFORMACION
    let datos_listado_fuente_informacion = {
        '_token': token,
        'parametro' : "listado_fuente_informacion"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_listado_fuente_informacion,
        success:function(data) {
            //console.log(data);
            $('#fuente_informacion').empty();
            $('#fuente_informacion').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#fuente_informacion').append('<option value="'+data[claves[i]]["Id_Parametro"]+'">'+data[claves[i]]["Nombre_parametro"]+'</option>');
            }
        }
    });

    //LISTADO PROCESO
    let datos_listado_proceso = {
        '_token': token,
        'parametro' : "listado_proceso"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_listado_proceso,
        success:function(data) {
            //console.log(data);
            $('#proceso').empty();
            $('#proceso').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#proceso').append('<option value="'+data[claves[i]]["Id_proceso"]+'">'+data[claves[i]]["Nombre_proceso"]+'</option>');
            }
        }
    });

    // LISTADO DE SERVICIOS
    $('#proceso').change(function(){
        $('#servicio').prop('disabled', false);
        let id_proceso = $('#proceso').val();
        let datos_listado_servicios = {
            '_token': token,
            'parametro' : "listado_servicios",
            'id_proceso' : id_proceso
        };
        $.ajax({
            type:'POST',
            url:'/cargarselectores',
            data: datos_listado_servicios,
            success:function(data) {
                //console.log(data);
                $('#servicio').empty();
                $('#servicio').append('<option value="" selected>Seleccione</option>');
                let claves = Object.keys(data);
                for (let i = 0; i < claves.length; i++) {
                    $('#servicio').append('<option value="'+data[claves[i]]["Id_Servicio"]+'">'+data[claves[i]]["Nombre_servicio"]+'</option>');
                }
            }
        });

    });

    //LISTADO ACCION
    let datos_listado_accion = {
        '_token': token,
        'parametro' : "listado_accion"
    };
    $.ajax({
        type:'POST',
        url:'/cargarselectores',
        data: datos_listado_accion,
        success:function(data) {
            //console.log(data);
            $('#accion').empty();
            $('#accion').append('<option value="" selected>Seleccione</option>');
            let claves = Object.keys(data);
            for (let i = 0; i < claves.length; i++) {
                $('#accion').append('<option value="'+data[claves[i]]["Id_Accion"]+'">'+data[claves[i]]["Nombre_accion"]+'</option>');
            }
        }
    });

    /* VALIDACIÓN OPCIONES OTRO */

    /* Validación opción OTRO/¿Cuál? del selector Tipo de Cliente */
    $('.columna_otro_tipo_cliente').css('display','none');
    $('#tipo_cliente').change(function(){
        let opt_otro_cual_tipo_cliente = $("#tipo_cliente option:selected").text();
        if (opt_otro_cual_tipo_cliente === "OTRO/¿Cuál?") {
            $(".columna_otro_tipo_cliente").slideDown('slow');
            $('#otro_tipo_cliente').prop('required', true);
        }else{
            $(".columna_otro_tipo_cliente").slideUp('slow');
            $('#otro_tipo_cliente').prop('required', false);
        }
    });

    /* Validación opción Otro/¿Cuál? del selector Tipo de documento */
    $('#tipo_documento').change(function (){
        let opt_otro_tipo_documento = $("#tipo_documento option:selected").text();
        if (opt_otro_tipo_documento === "Otro/¿Cuál?") {
            $(".otro_documento").removeClass('d-none');
            $(".otro_documento").slideDown('slow');
            // $('#otro_nombre_documento').prop('required', true);
        } else {
            $(".otro_documento").slideUp('slow');
            // $('#otro_nombre_documento').prop('required', false);
        }
    });

    /* Validación opción Otro/¿Cual? del selector de Estado Civil */
    $('#estado_civil').change(function(){
        let opt_otro_estado_civil = $("#estado_civil option:selected").text();
        if (opt_otro_estado_civil === "Otro/¿Cual?") {
            $(".columna_otro_estado_civil").removeClass('d-none');
            $(".columna_otro_estado_civil").slideDown('slow');
            // $('#otro_estado_civil').prop('required', true);
        } else {
            $(".columna_otro_estado_civil").slideUp('slow');
            // $('#otro_estado_civil').prop('required', false);
        }
    });

    /* Validación opción Otro/¿Cual? del selector Nivel de Escolar */
    $('#nivel_escolar').change(function(){
        let opt_otro_nivel_escolar = $('#nivel_escolar option:selected').text();
        if (opt_otro_nivel_escolar === "Otro/¿Cual?") {
            $(".columna_otro_nivel_escolar").removeClass('d-none');
            $(".columna_otro_nivel_escolar").slideDown('slow');
            // $('#otro_nivel_escolar').prop('required', true);
        } else {
            $(".columna_otro_nivel_escolar").slideUp('slow');
            // $('#otro_nivel_escolar').prop('required', false);
        }
    });

    /* Validación opción Exterior del selector Departamento (Información Afiliado) */
    $('#departamento_info_afiliado').change(function(){
        let opt_exterior_info_afiliado = $('#departamento_info_afiliado option:selected').text();
        if (opt_exterior_info_afiliado != "Exterior") {
            $(".columna_pais_exterior_info_afiliado").addClass('d-none');
            $(".columna_pais_exterior_info_afiliado").slideUp('slow');
            // $('#pais_exterior_info_afiliado').prop('required', true);
        }
    });

    /* Validación opción País? del selector Municipio (Información Afiliado) */
    $('#municipio_info_afiliado').change(function(){
        let opt_exterior_info_afiliado = $('#municipio_info_afiliado option:selected').text();
        if (opt_exterior_info_afiliado === "País?") {
            $(".columna_pais_exterior_info_afiliado").removeClass('d-none');
            $(".columna_pais_exterior_info_afiliado").slideDown('slow');
            // $('#pais_exterior_info_afiliado').prop('required', true);
        } else {
            $(".columna_pais_exterior_info_afiliado").slideUp('slow');
            // $('#otro_nivel_escolar').prop('required', false);
        }
    });


    /* Validación opción Otro/¿Cuál? del selector Tipo de afiliado */
    $('#tipo_afiliado').change(function(){
        let opt_otro_afiliado = $('#tipo_afiliado option:selected').text();
        if (opt_otro_afiliado === "Otro/¿Cuál?") {
            $(".columna_otro_tipo_afiliado").removeClass('d-none');
            $(".columna_otro_tipo_afiliado").slideDown('slow');
            // $('#otro_tipo_afiliado').prop('required', true);
        } else {
            $(".columna_otro_tipo_afiliado").slideUp('slow');
            // $('#otro_nivel_escolar').prop('required', false);
        }
    });

    /* Validación opción Otro/¿Cual? del selector EPS */
    $('#eps').change(function(){
        let opt_otra_eps = $('#eps option:selected').text();
        if (opt_otra_eps === "Otro/¿Cual?") {
            $(".columna_otro_eps").removeClass('d-none');
            $(".columna_otro_eps").slideDown('slow');
            // $('#otra_eps').prop('required', true);
        } else {
            $(".columna_otro_eps").slideUp('slow');
            // $('#otra_eps').prop('required', false);
        }
    });

    /* Validación opción Si del selector Apoderado */
    $('#apoderado').change(function(){
        let opt_apoderado = $('#apoderado').val();
        if (opt_apoderado === "Si") {
            $(".columna_nombre_apoderado").removeClass('d-none');
            $(".columna_nombre_apoderado").slideDown('slow');
            // $('#nombre_apoderado').prop('required', true);
            $(".columna_identificacion_apoderado").removeClass('d-none');
            $(".columna_identificacion_apoderado").slideDown('slow');
            // $('#nro_identificacion_apoderado').prop('required', true);

        } else {
            $(".columna_nombre_apoderado").slideUp('slow');
            // $('#nombre_apoderado').prop('required', true);
            $(".columna_identificacion_apoderado").slideUp('slow');
            // $('#nro_identificacion_apoderado').prop('required', true);
        }
    });

    /* Validación opción OTRO/¿Cuál? del selector Tipo AFP  */
    $('#afp').change(function (){
        let opt_otro_afp = $("#afp option:selected").text();
        if (opt_otro_afp === "Otro/¿Cual?") {
            $(".columna_otro_afp").removeClass('d-none');
            $(".columna_otro_afp").slideDown('slow');
        } else {
            $(".columna_otro_afp").slideUp('slow');
        }
    });

    /* Validación opción OTRO/¿Cuál? del selector Tipo ARL (Información Afiliado) */
    $('#arl_info_afiliado').change(function(){
        let opt_otro_arl_info_afiliado = $('#arl_info_afiliado option:selected').text();
        if (opt_otro_arl_info_afiliado === "Otro/¿Cual?") {
            $(".columna_otro_arl_info_afiliado").removeClass('d-none');
            $(".columna_otro_arl_info_afiliado").slideDown('slow');
        } else {
            $(".columna_otro_arl_info_afiliado").slideUp('slow');
        }
    });

    /* Validación opción OTRO/¿Cuál? del selector Tipo ARL (Información Laboral) */
    $('#arl_info_laboral').change(function (){
        let opt_otro_arl_info_laboral = $("#arl_info_laboral option:selected").text();
        if (opt_otro_arl_info_laboral === "Otro/¿Cual?") {
            $(".otro_arl_info_laboral").removeClass('d-none');
            $(".otro_arl_info_laboral").slideDown('slow');
        } else {
            $(".otro_arl_info_laboral").slideUp('slow');
        }
    });

    /* Validación opción Exterior del selector Departamentos (Información Laboral) */
    $('#departamento_info_laboral').change(function (){
        let opt_otro_departamento_exterior = $("#departamento_info_laboral option:selected").text();
        if (opt_otro_departamento_exterior != "Exterior") {
            $(".columna_pais_exterior_info_laboral").addClass('d-none');
            $(".columna_pais_exterior_info_laboral").slideUp('slow');            
        }
    });

     /* Validación opción País? del selector Municipios (Información Laboral) */
     $('#municipio_info_laboral').change(function (){
        let opt_otro_departamento_exterior = $("#municipio_info_laboral option:selected").text();
        if (opt_otro_departamento_exterior === "País?") {
            $(".columna_pais_exterior_info_laboral").removeClass('d-none');
            $(".columna_pais_exterior_info_laboral").slideDown('slow');            
        } else {
            $(".columna_pais_exterior_info_laboral").slideUp('slow');

        }
    });

    /* Validación opción OTRO/¿Cuál? del selector Solicitante  */
    $('#solicitante').change(function (){
        let opt_otro_solicitante = $("#solicitante option:selected").text();
        if (opt_otro_solicitante === "Otro/¿Cual?") {
            $(".columna_otro_solicitante").removeClass('d-none');
            $(".columna_otro_solicitante").slideDown('slow');
            $(".columna_nombre_solicitante").slideUp('slow');
            $(".columna_otro_nombre_solicitante").slideUp('slow');
        } else {
            $(".columna_otro_solicitante").slideUp('slow');
            $(".columna_nombre_solicitante").slideDown('slow');

        }
    });

    /* Validación opción OTRO/¿Cuál? del selector Nombre Solicitante  */
    $('#nombre_solicitante').change(function (){
        let opt_otro_nombre_solicitante = $("#nombre_solicitante option:selected").text();
        if (opt_otro_nombre_solicitante === "Otro/¿Cual?") {
            $(".columna_otro_nombre_solicitante").removeClass('d-none');
            $(".columna_otro_nombre_solicitante").slideDown('slow');
        } else {
            $(".columna_otro_nombre_solicitante").slideUp('slow');
        }
    });

    /* Validación opción OTRO/¿Cuál? del selector Fuente de informacion  */
    $('#fuente_informacion').change(function (){
        let opt_otro_fuente_informacion = $("#fuente_informacion option:selected").text();
        if (opt_otro_fuente_informacion === "Otro/¿Cual?") {
            $(".columna_otra_fuente_informacion").removeClass('d-none');
            $(".columna_otra_fuente_informacion").slideDown('slow');
        } else {
            $(".columna_otra_fuente_informacion").slideUp('slow');
        }
    });


    /* VALIDACIONES CON EL CAMPO DE NÚMERO DE IDENTIFICACIÓN */
    $('#nro_identificacion').keyup(function(){
        let numero_ident_afiliado = $(this).val();
        let fecha_evento = $('#fecha_evento').val();

        /* AUTOCOMPLETADO DE DATOS: SECCIÓN FORMULARIO INFORMACIÓN AFILIADO */
        let datos_para_llenar_info_afiliado = {
            '_token': token,
            'numero_ident_afiliado' : numero_ident_afiliado,
        };
        $.ajax({
            type:'POST',
            url:'/consultarInfoAfiliadoLlenar',
            data: datos_para_llenar_info_afiliado,
            success:function(data) {
                // console.log(data);
                let claves_info_afiliado = Object.keys(data);
                if (claves_info_afiliado.length > 0) {
                    for (let i = 0; i < claves_info_afiliado.length; i++) {
                        $('#nombre_afiliado').val(data[claves_info_afiliado[i]]["Nombre_afiliado"]);
                        $('#direccion_info_afiliado').val(data[claves_info_afiliado[i]]["Direccion"]);
                        $('#tipo_documento').val(data[claves_info_afiliado[i]]["Tipo_documento"]).change();
                        $('#fecha_nacimiento').val(data[claves_info_afiliado[i]]["F_nacimiento"]);
                        $('#edad').val(data[claves_info_afiliado[i]]["Edad"]);
                        $('#genero').val(data[claves_info_afiliado[i]]["Genero"]).change();
                        $('#email_info_afiliado').val(data[claves_info_afiliado[i]]["Email"]);
                        $('#telefono').val(data[claves_info_afiliado[i]]["Telefono_contacto"]);
                        $('#estado_civil').val(data[claves_info_afiliado[i]]["Estado_civil"]).change();
                        $('#nivel_escolar').val(data[claves_info_afiliado[i]]["Nivel_escolar"]).change();
                        $('#dominancia').val(data[claves_info_afiliado[i]]["Id_dominancia"]).change();
                        $('#departamento_info_afiliado').val(data[claves_info_afiliado[i]]["Id_departamento"]).change();
                        setTimeout(function(){
                            $('#municipio_info_afiliado').val(data[claves_info_afiliado[i]]["Id_municipio"]).change().prop('disabled', false);
                        }, 100);
                        $('#ocupacion').val(data[claves_info_afiliado[i]]["Ocupacion"]);
                        $('#tipo_afiliado').val(data[claves_info_afiliado[i]]["Tipo_afiliado"]).change();
                        $('#ibc').val(data[claves_info_afiliado[i]]["Ibc"]);
                        $('#eps').val(data[claves_info_afiliado[i]]["Id_eps"]).change();
                        $('#afp').val(data[claves_info_afiliado[i]]["Id_afp"]).change();
                        $('#arl_info_afiliado').val(data[claves_info_afiliado[i]]["Id_arl"]).change();
                        $('#apoderado').val(data[claves_info_afiliado[i]]["Apoderado"]).change();
                        if (data[claves_info_afiliado[i]]["Apoderado"] == 'Si') {
                            $('.columna_nombre_apoderado').removeClass('d-none');
                            $('.columna_identificacion_apoderado').removeClass('d-none');
                            $('#nombre_apoderado').val(data[claves_info_afiliado[i]]["Nombre_apoderado"]);
                            $('#nro_identificacion_apoderado').val(data[claves_info_afiliado[i]]["Nro_identificacion_apoderado"]);
                        }else{
                            $('.columna_nombre_apoderado').addClass('d-none');
                            $('.columna_identificacion_apoderado').addClass('d-none');
                        }
                        $('#activo').val(data[claves_info_afiliado[i]]["Activo"]).change();
                    }
                }
                else{
                    $('#nombre_afiliado').val('');
                    $('#direccion_info_afiliado').val('');
                    $('#tipo_documento').val('').change();
                    $('#fecha_nacimiento').val('');
                    $('#edad').val('');
                    $('#genero').val('').change();
                    $('#email_info_afiliado').val('');
                    $('#telefono').val('');
                    $('#estado_civil').val('').change();
                    $('#nivel_escolar').val('').change();
                    $('#dominancia').val('').change();
                    $('#departamento_info_afiliado').val('').change();
                    $('#municipio_info_afiliado').val('').change().prop('disabled', true);
                    $('#ocupacion').val('');
                    $('#tipo_afiliado').val('').change();
                    $('#ibc').val('');
                    $('#eps').val('').change();
                    $('#afp').val('').change();
                    $('#arl_info_afiliado').val('').change();
                    $('#apoderado').val('').change();
                    $('.columna_nombre_apoderado').addClass('d-none');
                    $('.columna_identificacion_apoderado').addClass('d-none');
                    $('#nombre_apoderado').val('');
                    $('#nro_identificacion_apoderado').val('');
                    $('#activo').val('').change();
                }
            }
        });
        
        /* AUTOCOMPLETADO DE DATOS: SECCIÓN FORMULARIO INFORMACIÓN LABORAL */
        let datos_para_llenar_info_laboral = {
            '_token': token,
            'numero_ident_laboral' : numero_ident_afiliado,
        };
        $.ajax({
            type:'POST',
            url:'/consultarInfoLaboralLlenar',
            data: datos_para_llenar_info_laboral,
            success:function(data) {
                // console.log(data);
                let claves_info_laboral = Object.keys(data);
                if (claves_info_laboral.length > 0) {
                    for (let i = 0; i < claves_info_laboral.length; i++) {
                        let tipo_empleo = data[claves_info_laboral[i]]["Tipo_empleado"];

                        switch (tipo_empleo) {
                            case 'Empleado actual':
                                $('#empleo_actual').prop('checked', true);
                            break;
                            case 'Independiente':
                                $('#independiente').prop('checked', true);
                            break;
                            case 'Beneficiario':
                                $('#beneficiario').prop('checked', true);
                            break;
                            default:
                            break;
                        }

                        $('#arl_info_laboral').val(data[claves_info_laboral[i]]["Id_arl"]).change();
                        $('#empresa').val(data[claves_info_laboral[i]]["Empresa"]);
                        $('#nit_cc').val(data[claves_info_laboral[i]]["Nit_o_cc"]);
                        $('#telefono_empresa').val(data[claves_info_laboral[i]]["Telefono_empresa"]);
                        $('#email_info_laboral').val(data[claves_info_laboral[i]]["Email"]);
                        $('#direccion_info_laboral').val(data[claves_info_laboral[i]]["Direccion"]);
                        $('#departamento_info_laboral').val(data[claves_info_laboral[i]]["Id_departamento"]).change();
                        setTimeout(function (){
                            $('#municipio_info_laboral').val(data[claves_info_laboral[i]]["Id_municipio"]).change().prop('disabled', false);
                        }, 100);
                        $('#actividad_economica').val(data[claves_info_laboral[i]]["Id_actividad_economica"]).change();
                        $('#clase_riesgo').val(data[claves_info_laboral[i]]["Id_clase_riesgo"]).change();
                        $('#persona_contacto').val(data[claves_info_laboral[i]]["Persona_contacto"]);
                        $('#telefono_persona_contacto').val(data[claves_info_laboral[i]]["Telefono_persona_contacto"]);
                        $('#codigo_ciuo').val(data[claves_info_laboral[i]]["Id_codigo_ciuo"]).change();
                        $('#fecha_ingreso').val(data[claves_info_laboral[i]]["F_ingreso"]);
                        $('#cargo').val(data[claves_info_laboral[i]]["Cargo"]);
                        $('#funciones_cargo').val(data[claves_info_laboral[i]]["Funciones_cargo"]);
                        $('#antiguedad_empresa').val(data[claves_info_laboral[i]]["Antiguedad_empresa"]);
                        $('#antiguedad_cargo').val(data[claves_info_laboral[i]]["Antiguedad_cargo_empresa"]);
                        $('#fecha_retiro').val(data[claves_info_laboral[i]]["F_retiro"]);
                        $('#descripcion').val(data[claves_info_laboral[i]]["Descripcion"]);
                    }
                }
                else{
                    $('#empleo_actual').prop('checked', false);
                    $('#independiente').prop('checked', false);
                    $('#beneficiario').prop('checked', false);
                    $('#arl_info_laboral').val('').change();
                    $('#empresa').val('');
                    $('#nit_cc').val('');
                    $('#telefono_empresa').val('');
                    $('#email_info_laboral').val('');
                    $('#direccion_info_laboral').val('');
                    $('#departamento_info_laboral').val('').change();
                    $('#municipio_info_laboral').val('').change().prop('disabled', true);
                    $('#actividad_economica').val('').change();
                    $('#clase_riesgo').val('').change();
                    $('#persona_contacto').val('');
                    $('#telefono_persona_contacto').val('');
                    $('#codigo_ciuo').val('').change();
                    $('#fecha_ingreso').val('');
                    $('#cargo').val('');
                    $('#funciones_cargo').val('');
                    $('#antiguedad_empresa').val('');
                    $('#antiguedad_cargo').val('');
                    $('#fecha_retiro').val('');
                    $('#descripcion').val('');
                }
            }
        });


        /* VALIDACION N°2 PARA NO PERMTIR REGISTRAR UN NUEVO EVENTO */
        if (fecha_evento != "") {
            let datos_validacion_no2 = {
                '_token': token,
                'numero_ident_afiliado' : numero_ident_afiliado,
                'fecha_evento' : fecha_evento
            };
            $.ajax({
                type:'POST',
                url:'/consultaFechaNroIdent',
                data: datos_validacion_no2,
                success:function(data) {
                    // si hay un evento creado
                    if (fecha_evento == data) {
                        $('#nro_identificacion').val('');
                        $('.no_creacion_evento').removeClass('d-none');
                        $('#mostrar_f_evento').html(fecha_evento);
                        $('.ocultar_seccion_info_afiliado').addClass('d-none');
                        $('.ocultar_seccion_info_laboral').addClass('d-none');
                        $('.ocultar_seccion_info_pericial').addClass('d-none');
                        $('.ocultar_seccion_info_asignacion').addClass('d-none');
                        $('.grupo_botones').addClass('d-none');
                    }else{
                        $('.no_creacion_evento').addClass('d-none');
                        $('.ocultar_seccion_info_afiliado').removeClass('d-none');
                        $('.ocultar_seccion_info_laboral').removeClass('d-none');
                        $('.ocultar_seccion_info_pericial').removeClass('d-none');
                        $('.ocultar_seccion_info_asignacion').removeClass('d-none');
                        $('.grupo_botones').removeClass('d-none');
                    }
                }
            });
        }
    });

    /* VALIDACIÓN DEL ID EVENTO PARA EDICIÓN */
    $('#fecha_evento').click(function(){
        let idEvento = $('#id_evento').val();
        $('#info_Idevento').empty();
        if (idEvento != ""){

            let datos_validacion_evento= {
                '_token': token,
                'IdEvento': idEvento
            };
            $.ajax({
                type:'POST',
                url:'/consultaIdEvento',
                data: datos_validacion_evento,
                success:function(data){
                    // console.log(data);
                   // Si existe el evento
                   let registro = Object.keys(data);
                   if(registro.length > 0) {
                        $('#fecha_evento').val('');
                        for (let i = 0; i < registro.length; i++) {                        
                            if (idEvento === data[registro[i]]["ID_evento"]) {
                                $('.mostrar_tabla_eventos').removeClass('d-none');                                                   
                                $('#info_Idevento').append('<tr><td>'+data[registro[i]]["ID_evento"]+'</td>'+
                                '<td>'+data[registro[i]]["F_evento"]+'</td>'+
                                '<td>'+data[registro[i]]["F_radicacion"]+'</td>'+
                                '<td>'+
                                    '<form action="/Sigmel/RolAdministrador/GestionInicialEdicion" method="POST">'+
                                        '<input type="hidden" name="_token" value="'+token+'">'+
                                        '<input class="btn btn-info" type="submit" value="Editar">'+
                                        '<input type="hidden" name="newIdEvento" value="'+data[registro[i]]["ID_evento"]+'">'+
                                    '</form>'+
                                '</td>'+
                                '</tr>');                                                    
                            }
                        
                        }                    
                   }
                   else{
                        $('.mostrar_tabla_eventos').addClass('d-none');
                        $('#info_Idevento').empty();
                   }
                } 
            });
        }
    });



});