$(document).ready(function () {
    // captura token
    var token = $('input[name=_token]').val();

    // Función para obtener la fecha actual
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

    var fechaActual = obtenerFechaActual();

    // Datatable para llenar la información del reporte
    var listado_reporte_facturacion = $('#datos_reporte_facturacion').DataTable({
        "searching": false,
        "info": false,
        scrollY: 350,
        scrollX: true,
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
                    title: fechaActual+"_FACTURACIÓN-PROTECCIÓN_SIGMEL_",
                    text:'Exportar datos',
                    className: 'btn btn-success',
                    "excelStyles": [                      // Add an excelStyles definition
                                                 
                    ],
                    exportOptions: {
                        columns: [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23]
                    }
                }
            ]
        },
        "destroy": true,
        "pageLength": 20,
        "language":{                
            "search": "Buscar",
            "lengthMenu": "Mostrar _MENU_ resgistros",
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

    /* Envío de información del formulario */
    $('#form_consulta_reporte_facturacion').submit(function(e){
        e.preventDefault();

        /* Captura de variables del formulario */
        var fecha_desde = $('#fecha_desde').val();
        var fecha_hasta = $('#fecha_hasta').val();

        // función para consulta de la información y llenado de datos en la tabla
        llenar_informacion_reporte_factu(listado_reporte_facturacion, fecha_desde, fecha_hasta, token);
    });

    /* Funcionalidad para descargar el reporte de excel */
    $('#btn_expor_datos_reporte_facturacion').click(function () {
        $('.dt-button').click();
    });
});

function formatoMoneda(valor) {
    const numero = parseFloat(valor) || 0;
    return new Intl.NumberFormat('es-CO', {
        style: 'currency',
        currency: 'COP',
        minimumFractionDigits: 0
    }).format(numero);
}

// Función para llenar datos en el datatable
function renderizarRegistros(data, inicio, fin, reporteFacturacionTable) {

    for (let a = inicio; a < fin; a++) {

        var datos = [
            data[a].Cons,
            data[a].Proceso,
            data[a].Servicio,
            data[a].ID_evento,
            data[a].N_siniestro,
            data[a].Tipo_Afiliado,
            data[a].Identificacion,
            data[a].Nombre,
            data[a].Fecha_radicacion,
            data[a].F_gestion,
            data[a].Tiempo_gestion,
            data[a].ANS_dias,
            data[a].Estado_ANS,
            data[a].Estado_Facturacion,
            formatoMoneda(data[a].Tarifa_gestion), //data[a].Tarifa_gestion,
            formatoMoneda(data[a].Tarifa_notificacion), //data[a].Tarifa_notificacion,
            formatoMoneda(data[a].Tarifa_adicional), //data[a].Tarifa_adicional,
            formatoMoneda(data[a].Valor_total), //data[a].Valor_total,
            formatoMoneda(data[a].Valor_glosa), //data[a].Valor_glosa,
            data[a].Modalidad,
            data[a].Identificacion_calificador,
            data[a].Calificador,
            data[a].Accion,
            data[a].Observaciones
        ];
        
        reporteFacturacionTable.row.add(datos).draw(false).node();
        datos = [];
    }
}

// función para consulta de la información y envio de datos a la tabla
function llenar_informacion_reporte_factu (reporteFacturacionTable, fecha_desde, fecha_hasta, token){
    var datos_consulta_reporte_facturacion = {
        '_token': token,
        'fecha_desde': fecha_desde,
        'fecha_hasta': fecha_hasta,
    };

    $.ajax({
        type:'POST',
        url:'/consultaReporteFacturacion',
        data: datos_consulta_reporte_facturacion,
        success:function(data){
            console.log('Data : ', data)
            if (data.parametro == "falta_un_parametro") {
                /* Mostrar contenedor mensaje de que no hay información */
                $('.resultado_validacion').removeClass('d-none');
                $('.resultado_validacion').addClass('alert-danger');
                $('#llenar_mensaje_validacion').append(data.mensaje);
                setTimeout(() => {
                    $('.resultado_validacion').addClass('d-none');
                    $('.resultado_validacion').removeClass('alert-danger');
                    $('#llenar_mensaje_validacion').empty();
                }, 4000);

                $('#fecha_desde').val('');
                $('#fecha_hasta').val('');
                $('#div_info_numero_registros').addClass('d-none');
                $('#botones_reporte_facturacion').addClass('d-none');

            }else{
                // Mostrando mensajes
                $('.resultado_validacion').removeClass('d-none');
                $('.resultado_validacion').addClass('alert-info');
                var string_texto = '<span>Se encontraron <b>'+data.length+'</b> registros, esto tardará un tiempo en cargar los resultados. Por favor espere.</span>';
                $('#llenar_mensaje_validacion').append(string_texto);

                // Ocultando el label de conteo de registros
                $('#div_info_numero_registros').addClass('d-none');
                $("#total_registros_reporte_facturacion").empty();
                // Se oculta el boton para descarga del excel
                $('#botones_reporte_facturacion').addClass('d-none');

                // Creacion del contador para añadirlo a los registros
                for (let i = 0; i < data.length; i++) {
                    data[i]['Cons'] = i+1;                        
                }

                // Vaciado del datatable
                reporteFacturacionTable.clear();

                // Inserción del contenido cada 100 registros
                var inicio = 0;
                var fin = Math.min(100, data.length);
                function renderizarSiguienteBloque() {
                    if (inicio < data.length) {
                        renderizarRegistros(data, inicio, fin, reporteFacturacionTable);
                        inicio = fin;
                        fin += Math.min(fin + 100, data.length) - fin;
                        
                        if (inicio >= data.length) {
                            // LLenado del label de conteo de registros
                            $('#div_info_numero_registros').removeClass('d-none');
                            $("#total_registros_reporte_facturacion").empty();
                            $("#total_registros_reporte_facturacion").append(data.length);
                            // Se muestra el boton para descarga del excel
                            $('#botones_reporte_facturacion').removeClass('d-none');

                            // ocultando mensaje
                            $('.resultado_validacion').addClass('d-none');
                            $('.resultado_validacion').removeClass('alert-info');
                            $('#llenar_mensaje_validacion').empty();
                        } else {
                            setTimeout(renderizarSiguienteBloque, 2000); // Pausa de 2 segundos
                        }
                        
                    }
                }

                renderizarSiguienteBloque();

            }
        }
    });
};