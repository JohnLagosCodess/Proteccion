$(document).ready(function () {
    
    /* Captura token */
    var token = $('input[name=_token]').val();

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

    // Obtenemos la fecha de descarga
    var fecha_descarga = obtenerFechaActual();

    /* 
        Funcionalidad de no permitir capturar fechas inferiores a la actual
        en los inputs date de fecha desde y fecha hasta
    */
    $(document).on('keyup change', '#fecha_desde, #fecha_hasta', function(event){

        var tipo_evento = event.type;
        if (tipo_evento == 'keyup' || tipo_evento == 'change') {
            if ($(this).val() < fecha_descarga) {
                // Eliminar cualquier alerta previa
                if ($(this).next('i').length) {
                    $(this).next('i').remove();
                }
                let alerta = '<i style="color:red;">La fecha ingresada debe ser igual o superior a la fecha actual.</i>';
                $(this).after(alerta);

                $('#btn_generar_reporte').prop('disabled', true);
            }else{
                if ($(this).next('i').length) {
                    $(this).next('i').remove();
                }
                $('#btn_generar_reporte').prop('disabled', false);
            }
        }
    });

    /* Envío de información para consultar si hay registros. */
    $("#form_consulta_repor_traza_pcl").submit(function(e){
        e.preventDefault();

        /* Captura de variables del formulario */
        var fecha_desde = $('#fecha_desde').val();
        var fecha_hasta = $('#fecha_hasta').val();

        /* Generamos el envío de los datos */
        let datos_consulta_reporte_traza_pcl = {
            '_token': token,
            'fecha_desde': fecha_desde,
            'fecha_hasta': fecha_hasta,
            'parametro': "cantidad_reg"
        };

        $.ajax({
            type: 'POST',
            url: '/consultaReporteTrazabilidadPcl',
            data: datos_consulta_reporte_traza_pcl,
            
            success: function(data) {
                if (data.parametro == "falta_un_parametro") {
                    /* Mostrar contenedor mensaje de que no hay información */
                    $('.resultado_validacion').removeClass('d-none');
                    $('.resultado_validacion').addClass('alert-danger');
                    $('#llenar_mensaje_validacion').empty();
                    $('#llenar_mensaje_validacion').append(data.mensaje);
                    setTimeout(() => {
                        $('.resultado_validacion').addClass('d-none');
                        $('.resultado_validacion').removeClass('alert-danger');
                        $('#llenar_mensaje_validacion').empty();
                    }, 4000);
    
                    $('#fecha_desde').val('');
                    $('#fecha_hasta').val('');
                    $('#div_info_numero_registros').addClass('d-none');
                    $('#mostrar_boton_descarga').addClass('d-none');
                }
                else{
                    var cantidad_registros = data.cantidad;
                    // $('.resultado_validacion').removeClass('d-none');
                    // $('.resultado_validacion').addClass('alert-info');
                    // $('#llenar_mensaje_validacion').empty();
                    // var string_texto = '<span>Se encontraron <b>'+cantidad_registros+'</b> registros, esto tardará un tiempo en cargar los resultados. Por favor espere.</span>';
                    // $('#llenar_mensaje_validacion').append(string_texto);

                    $('#div_info_numero_registros').removeClass('d-none');
                    $("#total_registros_reporte").empty();
                    $("#total_registros_reporte").append(cantidad_registros);

                    if (cantidad_registros > 0) {
                        $('#mostrar_boton_descarga').removeClass('d-none');
                    }
                }
            }
        });
    });

    /* Envío de datos para creación del reporte */
    $("#descargar_repor_traza_pcl").submit(function(e){
        e.preventDefault();

        /* Captura de variables del formulario */
        var fecha_desde = $('#fecha_desde').val();
        var fecha_hasta = $('#fecha_hasta').val();

        /* Generamos el envío de los datos */
        let datos_consulta_reporte_traza_pcl = {
            '_token': token,
            'fecha_desde': fecha_desde,
            'fecha_hasta': fecha_hasta,
            'parametro': "descarga"
        };

        $.ajax({
            type: 'POST',
            url: '/consultaReporteTrazabilidadPcl',
            data: datos_consulta_reporte_traza_pcl,
            xhrFields: {
                responseType: 'blob' // Importante para manejar la respuesta como archivo
            },
            success: function(data) {
                /* Creamos un enlace de descarga para descargar el reporte */
                var nombre_reporte = `${fecha_descarga}_TRAZABILIDADPCL_SIGMEL_(${fecha_desde}_${fecha_hasta}).xlsx`;
                var downloadUrl = window.URL.createObjectURL(data);
                var a = document.createElement('a');
                a.href = downloadUrl;
                a.download = nombre_reporte;
                document.body.appendChild(a);
                a.click();
                a.remove();
            }
        });
    });
});