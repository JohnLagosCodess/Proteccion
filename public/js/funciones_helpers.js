/* AQUÍ SE CREARÁN LAS FUNCIONES QUE SE IMPLEMENTARÁN PARA VARIAS VISTAS */
$(document).ready(function () {
    
    /* INPUTS DEL FORMULARIO DE CREACIÓN NUEVO USUARIO */
    $('#nombre_usuario').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    $('#empresa_usuario').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    $('#cargo_usuario').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    $('#correo_contacto_usuario').keyup(function () {
        var email_escrito = $(this).val();
        var resultado_validacion = ValidarCorreoEscrito(email_escrito);
        if (resultado_validacion) {
            $("#correo_usuario").val(email_escrito);
        }else {
            $("#correo_usuario").val("");
        }
    });

    /* INPUTS DEL FORMULARIO DE EDICIÓN DE USUARIO (VENTANA MODAL) */
    $('#editar_nombre_usuario').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    $('#editar_empresa_usuario').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    $('#editar_cargo_usuario').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    $('#editar_correo_contacto_usuario').keyup(function () {
        var email_escrito = $(this).val();
        var resultado_validacion = ValidarCorreoEscrito(email_escrito);
        if (resultado_validacion) {
            $("#editar_correo_usuario").val(email_escrito);
        }else {
            $("#editar_correo_usuario").val("");
        }
    });

    /* INPUTS DEL FORMULARIO DE CREACIÓN DE ROL */
    $("#nombre_rol").keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    $("#descripcion_rol").keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    /* INPUTS DEL FORMULARIO DE EDICIÓN DE ROL */
    $(document).on('keyup', "input[id^='editar_nombre_rol_']",function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));

    })

    $(document).on('keyup', "textarea[id^='editar_descripcion_rol_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    /* INPUTS DEL FORMULARIO DE CREACIÓN DE EQUIPOS DE TRABAJO */
    $('#nombre_equipo_trabajo').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    $('#descripcion_equipo_trabajo').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    /* INPUTS DEL FORMULARIO DE EDICIÓN DE EQUIPOS DE TRABAJO */
    $(document).on('keyup', "input[id^='editar_nombre_equipo_trabajo_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });
    $(document).on('keyup', "textarea[id^='editar_descripcion_equipo_trabajo_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    /* INPUTS Y TEXT AREAS DEL MODAL Solicitud Documentos - Seguimientos Módulo Calificación PCL*/
    $(document).on('keyup', "input[id^='nombre_otro_doc_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });
	
	$(document).on('keyup', "textarea[id^='documento_soli_fila_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });
	
    $(document).on('keyup', "textarea[id^='descripcion_fila_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "input[id^='nombre_otro_solicitante_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });
    // Text-area de modal agregar seguimiento
    $(document).on('keyup', "textarea[id^='descripcion_seguimiento']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });
    // Inputs Text-area de modal generar comunicado
    $(document).on('keyup', "input[id^='nombre_afiliado_comunicado']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "input[id^='asunto']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });  
    
    $(document).on('keyup', "textarea[id^='cuerpo_comunicado']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "textarea[id^='descripcion_accion']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });
    // Text  y inputs areas vista calificacion tecnica
    $(document).on('keyup', "textarea[id^='descripcion_otros']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "textarea[id^='descripcion_enfermedad']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "input[id^='nombre_examen_fila_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    $(document).on('keyup', "textarea[id^='descripcion_resultado_fila_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    $(document).on('keyup', "textarea[id^='descripcion_cie10_fila_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    $(document).on('keyup', "input[id^='Asunto']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    $(document).on('keyup', "textarea[id^='cuerpo_comunicado']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    $(document).on('keyup', "textarea[id^='sustenta_fecha']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    $(document).on('keyup', "textarea[id^='detalle_califi']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    $(document).on('keyup', "textarea[id^='justi_dependencia']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });    

    $(document).on('keyup', "input[id^='tabladecreto3_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    $(document).on('keyup', "input[id^='tablatitulodecreto3_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    // Text  y inputs areas vista Recalificacion tecnica

    $(document).on('keyup', "textarea[id^='descripcion_nueva_calificacion']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    // Tesxt Asunto y Sustentacion Pronunciamiento

    $(document).on('keyup', "textarea[id^='asunto_cali']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    }); 

    $(document).on('keyup', "textarea[id^='sustenta_cali']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });    

    // TEXTAREA DESCRIPCIÓN FURAT (DTO ATEL)
    $(document).on('keyup', "textarea[id^='descripcion_FURAT']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito)); 
    });

    // TEXTAREA JUSTIFICACIÓN REVISION ORIGEN (DTO ATEL)
    $(document).on('keyup', "textarea[id^='justificacion_revision_origen']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito)); 
    });

    // INPUT OTROS (DTO ATEL)
    $(document).on('keyup', "input[id^='otros']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });

    // TEXTAREA SUSTENTACION CALFICACION ORIGEN (DTO ATEL)
    $(document).on('keyup', "textarea[id^='sustentacion_califi_origen']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito)); 
    });

    // INPUT NOMBRE ENTIDAD HEREDADA (DTO ATEL)
    $(document).on('keyup', "input[id^='entidad_enfermedad']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });


    // TEXTAREA SUSTENTACION ADICION DX
    $(document).on('keyup', "textarea[id^='sustentacion_adicion_dx']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito)); 
    });

    // OTROS DOC ADICION DX
    $(document).on('keyup', "input[id^='otros_docs']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));        
    });
	
	// Clase para poner  la primera letra en mayuscula
    $('.CadaLetraMayus').keypress(function(event) {
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));   
    });
    // Clase para poner solo la primera letra en mayuscula
    $('.soloPrimeraLetraMayus').keypress(function(event) {
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));   
    });

    // TEXTAREA FORMULARIO NUEVA ACCION
    $(document).on('keyup', "textarea[id^='descrip_accion']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    // INPUT O TEXT AREA DE FORMULARIO NUEVA ACCION
    $("#accion").keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    /* TODO LO RELACIONADO A CLIENTES (CREACIÓN Y EDICIÓN) */
    $("#otro_tipo_cliente").keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $("#nombre_cliente").keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "input[id^='nombre_sucursal_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "input[id^='nombre_gerente_sucursal_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $("#nombre_del_firmante_cliente").keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $("#cargo_del_firmante_cliente").keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $("#nombre_del_firmante_proveedor").keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });
    
    $("#cargo_del_firmante_proveedor").keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "input[id^='nombre_ans_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "textarea[id^='descripcion_ans_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "input[id^='valor_ans_']", function(){
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on('keyup', "input[id^='porcentaje_pcl']", function(){
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    /* TODO LO CORRESPONDIENTE A LA PARAMETRIZACION */
    $(document).on('keyup', "input[id^='tiempo_alerta_origen_atel_']", function(){
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on('keyup', "input[id^='bd_tiempo_alerta_origen_atel_']", function(){
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on('keyup', "textarea[id^='motivo_movimiento_origen_atel_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "textarea[id^='bd_motivo_movimiento_origen_atel_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "input[id^='tiempo_alerta_calificacion_pcl_']", function(){
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on('keyup', "input[id^='bd_tiempo_alerta_calificacion_pcl_']", function(){
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on('keyup', "textarea[id^='motivo_movimiento_calificacion_pcl_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "textarea[id^='bd_motivo_movimiento_calificacion_pcl_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });


    $(document).on('keyup', "input[id^='tiempo_alerta_juntas_']", function(){
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on('keyup', "input[id^='bd_tiempo_alerta_juntas_']", function(){
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on('keyup', "textarea[id^='motivo_movimiento_juntas_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });

    $(document).on('keyup', "textarea[id^='bd_motivo_movimiento_juntas_']", function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusPrimeraLetraTexto(textoEscrito));
    });


    /* Función para colocar la primera letra en mayúscula de cada palabra que se escriba */
    function LetraMayusCadaPalabra(textoEscrito) {
        var palabras = textoEscrito.split(' ');
        for (var i = 0; i < palabras.length; i++) {
            var primeraLetra = palabras[i].charAt(0).toUpperCase();
            var restoPalabra = palabras[i].slice(1);
            palabras[i] = primeraLetra + restoPalabra;
        }
        var resultado_texto_final = palabras.join(' ');
        return resultado_texto_final;
    }

    /* Función para colocar solamente la primera letra en Mayuscula */
    function LetraMayusPrimeraLetraTexto(textoEscrito){
        var firstLetter = textoEscrito.charAt(0).toUpperCase();
        var restOfWord = textoEscrito.slice(1);
        return firstLetter + restOfWord;
    }

    /* Función para validar que un correo esté bien escrito */
    function ValidarCorreoEscrito(correo_escrito){
        var regEx = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (regEx.test(correo_escrito)) {
            return true;
        } else {
            return false;
        }
    } 
    
    function NumerosEnteros(input) {
        var value = $(input).val();      
        if (!Number.isInteger(Number(value))) {
          $(input).val("");
        }
    }
    
    // Obtener el botón
    // let mybutton = document.getElementById("id_subir_scroll");

    // // Mostrar el botón cuando el usuario hace scroll hacia abajo 20px desde la parte superior
    // window.onscroll = function() {Subirscroll()};

    // function Subirscroll() {
    //     if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    //         mybutton.style.display = "block";
    //     } else {
    //         mybutton.style.display = "none";
    //     }
    // }

    // // Cuando el usuario hace clic en el botón, se desplaza hacia la parte superior de la página
    // mybutton.onclick = function() {
    //     window.scrollTo({
    //         top: 0,
    //         behavior: 'smooth' // Scroll suave
    //     });
    // }
    
    // $(document).on("input", '[id^="deficienciadecreto3_"]', function() {
    //     NumerosEnteros(this);
    // });
            
    function Maximo2Decimales(idinput){
        $('#'+idinput).on('input', function(){
            var inputValue = $(this).val();
            var decimalCount = (inputValue.split('.')[1] || []).length;        
            if (decimalCount > 2) {
              $(this).val(parseFloat(inputValue).toFixed(2));
            }
        });
    };

    function Maximo1Decimal(idinput){
        $('#'+idinput).on('input', function(){
            var inputValue = $(this).val();
            var decimalCount = (inputValue.split('.')[1] || []).length;        
            if (decimalCount > 1) {
              $(this).val(parseFloat(inputValue).toFixed(1));
            }
        });
    }

    $(document).on("input", '[id^="deficienciadecreto3_"]', function() {
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on("input", '[id^="pcl_anterior"]', function() {
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on("input", '[id^="suma_combinada"]', function() {
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).on("input", '[id^="resultado_Deficiencia_"]', function() {
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });
    

    /* Input que permita registrar en formato contabilidad */
    $(".soloContabilidad").on({
        "focus": function(event) {
            $(event.target).select();
        },
        "input": function(event) {
            let value = event.target.value;
            value = value.replace(/\D/g, ""); // Remove non-digit characters
            value = value.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,"); // Add comma for thousands separators
            value = value.replace(/(\d)(\.(\d{2}))$/, "$1$2"); // Add period for decimal places
            value = "$" + value; // Add "$" at the beginning
            event.target.value = value;
        }
    });

    $(document).on("input", '[id^="Total_Deficiencia50"]', function() {
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    $(document).ready(function(){
        $('#suma_combinada').on('input', function(){
          var inputValue = $(this).val();
          var decimalCount = (inputValue.split('.')[1] || []).length;
      
          if (decimalCount > 2) {
            // Si el número tiene más de 2 decimales, truncar el valor
            $(this).val(parseFloat(inputValue).toFixed(2));
          }
        });
    });

     /* INPUTS DEL FORMULARIO DE CREACIÓN ENTIDAD */
    $('.mayus_entidad').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    $('.mayus_general').keyup(function(){
        var textoEscrito = $(this).val();
        $(this).val(LetraMayusCadaPalabra(textoEscrito));
    });

    /* SOLO PERMITE INGRESAR NUMEROS */
    $('.soloNumeros').keypress(function(event) {
        var keycode = (event.keyCode ? event.keyCode : event.which);
        if (keycode < 48 || keycode > 57) {
        event.preventDefault();
        }
    });
	
	 /* SOLO PERMITTE DOS DECIMALES */
    $('.soloDosDecimales').keypress(function(event) {
        var inputId = this.id;
        Maximo2Decimales(inputId);
    });

    /* Funcionalidad para habilitar el formulario de visado para el rol de Comité (Id del rol: 10) */
    var id_rol = $("#id_rol").val();
    if (id_rol == 10) {
        $("#visar").prop('disabled', false);
        $("#GuardarComiteInter").prop('disabled', false);
    } else {
        $("#visar").prop('disabled', true);
        $("#GuardarComiteInter").prop('disabled', true);
    }

    /* Datatable para el listado de documentos (Módulos Principales) */
    var listado_documentos_ed = $("#listado_documentos_ed").DataTable({
        "destroy":true,
        "paging":false,
        "ordering": false,
        "searching": true,
        "scrollCollapse": true,
        "scrollX": true,
        "scrollY": 350,
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
        },
        "initComplete": function(settings, json) {
            // Eliminar el contenedor <div class="col-sm-12 col-md-6"></div> que rodea al campo de búsqueda
            $('#listado_documentos_ed_filter').parent().prev('.col-sm-12.col-md-6').remove();
        }
    });

    $('#listado_documentos_ed_filter').addClass('pull-left');
    autoAdjustColumns(listado_documentos_ed);
    
    // recargar ventana en cargue documentos en modulos principales
    $("#recargar_ventana").click(function(){
        location.reload();
    });

    $(".initSelect2").select2({
        placeholder:"Seleccione una opción",
        allowClear:false
    });

    $(document).on('click',"#Edicion",function(e){
        e.preventDefault();

        /**
         * Datos que se incluiran en la modal
         */
        let f_accion =  $('#fecha_accion').val();
        let accion_ejecutar = $("#accion option:selected").text();
        let estado_facturacion = $("#estado_facturacion").val();
        let profecional_asignado = $("#profesional option:selected").text();
        let id_profecional_asignado = $("#profesional option:selected").val();
        let servicio = $("#servicio").val();
        let estado_firmeza = $("#estado_firmeza").val();

        let $fecha_primera_cita = $("#fecha_primera_cita");
        let $causal_incumple_pri_cita = $("#incumple_primera_cita");
        let $fecha_segunda_cita = $("#fecha_segunda_cita");
        let $causal_incumple_segu_cita = $("#incumple_segunda_cita");

        //Limpiamos los campos de la modal
        $("#c_accion_ejecutar, #c_f_accion, #c_e_facturacion, #c_profesional, #c_servicio, #alerta_accion").empty();

        //Si en controversia no han seleccionado una fuente de información PBS090
        if(servicio.startsWith('Controversia')){
            if($("#fuente_info_juntas").val() == ''){
                $("#alerta_accion").removeClass('d-none');
                $("#alerta_accion").append("<i class='fas fa-info-circle'></i><strong>Importante:</strong> Por favor seleccione una fuente de información");
                $("#c_ejecutar_accion").prop('disabled',true);
                return;
            }
        }

        /**
         * De no haber una accion y/o profesional seleccionado no se habilitara el boton de ejecucion
         */
        if(accion_ejecutar == "" || id_profecional_asignado == ""){
           $("#alerta_accion").removeClass('d-none');
           $("#alerta_accion").append("<i class='fas fa-info-circle'></i><b>Importante:</b> No se puede ejecutar la acción debio a que no ha seleccionado una accion y/o profesional");
           $("#c_ejecutar_accion").prop('disabled',true);
           profecional_asignado = "";
        }else{
            /* Validaciones para  los campos Fecha de 1ra cita, Causal de incumplimiento 1ra cita, Fecha de 2da cita, Causal de incumplimiento 2da cita */
            if ($fecha_primera_cita.prop('required') && $fecha_primera_cita.val() == "") {
                $("#alerta_accion").removeClass('d-none');
                $("#alerta_accion").append("<i class='fas fa-info-circle'></i><b>Importante:</b> No se puede ejecutar la acción debido a que el campo Fecha de 1ra cita está obligatorio y no está diligenciado");
                $("#c_ejecutar_accion").prop('disabled',true);
                profecional_asignado = ""; 
            } 
            else if ($causal_incumple_pri_cita.prop('required') && $("#incumple_primera_cita option:selected").val() == "") {
                $("#alerta_accion").removeClass('d-none');
                $("#alerta_accion").append("<i class='fas fa-info-circle'></i><b>Importante:</b> No se puede ejecutar la acción debido a que el campo Causal de incumplimiento 1ra cita está obligatorio y no está diligenciado");
                $("#c_ejecutar_accion").prop('disabled',true);
                profecional_asignado = ""; 
            }
            else if ($fecha_segunda_cita.prop('required') && $fecha_segunda_cita.val() == "") {
                $("#alerta_accion").removeClass('d-none');
                $("#alerta_accion").append("<i class='fas fa-info-circle'></i><b>Importante:</b> No se puede ejecutar la acción debido a que el campo Fecha de 2da cita está obligatorio y no está diligenciado");
                $("#c_ejecutar_accion").prop('disabled',true);
                profecional_asignado = ""; 
            }
            else if ($causal_incumple_segu_cita.prop('required') && $("#incumple_segunda_cita option:selected").val() == "") {
                $("#alerta_accion").removeClass('d-none');
                $("#alerta_accion").append("<i class='fas fa-info-circle'></i><b>Importante:</b> No se puede ejecutar la acción debido a que el campo Causal de incumplimiento 2da cita está obligatorio y no está diligenciado");
                $("#c_ejecutar_accion").prop('disabled',true);
                profecional_asignado = ""; 
            }else{
                $("#alerta_accion").addClass('d-none');
                $("#c_ejecutar_accion").prop('disabled',false);
            }
        }

        //Muestra el campo de facturacion si este esta presente
        if(estado_facturacion == ""){
            $("#c_estado_facturacion, #n_confirmarAccion").addClass("d-none");
        }else{
            $("#c_estado_facturacion, #n_confirmarAccion").removeClass("d-none");
            $("#c_e_facturacion").append(estado_facturacion);
        }

        //Se agregan los datos a la modal
        $("#c_accion_ejecutar").append(accion_ejecutar);
        $("#c_f_accion").append(f_accion);
        $("#c_profesional").append(profecional_asignado);
        $("#c_servicio").append(servicio);

        if(accion_ejecutar == 'REPORTAR FIRMEZA CALIFICACIÓN PCL'){
            if($("#f_acta_firmeza").val() == ''){
                $("#alerta_accion").removeClass('d-none');
                $("#alerta_accion").append("<i class='fas fa-info-circle'></i><strong>Importante:</strong> Para continuar debe registrar la Fecha Acta Firmeza");
                $("#c_ejecutar_accion").prop('disabled',true);
            }
        }

        if(estado_firmeza != ''){
            $('#n_confirmarAccion').before(`<div class="row"><label >Estado Firmeza:</label><p class="pl-2 text-end" id="c_estado_firmeza">${estado_firmeza}</p></div>`);

            $('#n_confirmarAccion').after(`<div class="row"><span class="pl-2 text-center text-info font-weight-bold"  style="font-size: 23px;" id="c_nota_firmeza">!ÉSTA ACCIÓN ACTUALIZARÁ ADVANCE!</span></div>`);
        }

        //Se ejecuta la acción
        $("#c_ejecutar_accion").off('click').on('click', function() {
            $("#c_ejecutar_accion").prop("disabled",true);
            let id_accion = $("#accion option:selected").val();

            validarAccion_ejecutar(id_accion).then(response => {

                /**
                 * Siempre y cuando la acción este sin ejecutar para el servicio actual podra ser ejecutada, de no ser asi se bloqueara.
                 */
                if (response === "sin_ejecutar") {
                    $("#alerta_accion_ejecutando").removeClass('d-none');

                    let id_formulario = getId_formulario();
                    $(`#${id_formulario}`).trigger('submit');
                    $("#c_no_accion").trigger('click');


                } else {
                    $("#alerta_accion").removeClass('d-none');
                    $("#c_ejecutar_accion").prop('disabled', true);
                    $("#alerta_accion").append("<i class='fas fa-info-circle'></i><b>Importante:</b> Ésta acción solo puede ser ejecutada una única vez. Por favor valide el historial de acciones del servicio.");
                }

            });
        });


    });

        //evento cuando se le de click en el boton de eliminar
        $(document).on('click', '.btn_eliminar_radicado', function() {  
            // Deshabilita todo los botones de eliminar menos el clickeado
            $('.btn_eliminar_radicado').css({
                'color': '#ff4f4f',
                'pointer-events': 'none', //deshabilita el click
                'opacity': '0.5'
            });
    
            $(this).css({
                'color': 'red', 
                'pointer-events': 'auto',
                'opacity': '1'
            });
    
            //Habilita nuevamente el boton tras finalizar el proceso.
           let resultado = eliminar_evento($(this).data('id_comunicado'));
           if(resultado == 'ok'){
                $('.btn_eliminar_radicado').css({
                    'color': 'red',
                    'pointer-events': 'auto', //deshabilita el click
                    'opacity': '1'
                });
           }
        });

    historial_servicios();

    //Mantiene el foco dentro del modal, principalmente para que sea compatible con select2
    // $.fn.modal.Constructorprototype._enforceFocus = function () {
    //     var that = this;
    //     $(document).on('focusin.modal', function (e) {
    //     if ($(e.target).hasClass('select2-input')) {
    //       return true;
    //     }

    //     if (that.$element[0] !== e.target && !that.$element.has(e.target).length) {
    //       that.$element.focus();
    //     }
    //     });
    // };

    $(document).on('click', "#limpiar_cache", function () {
        limpiar_cache();
    });

    /** @var {Array} serviciosAdvance Si el servicio cargado en el dom es alguno de los siguiente 13,6,7,9 se validara el procrso de advance.*/
    const serviciosAdvance = [13, 6, 9];
    const estadoEjecucion = $("#estado_ejecucion").val();
    const servicioId = $("#Id_servicio").val();
    const estado = estadoEjecucion.trim().toLowerCase();

    if (serviciosAdvance.includes(servicioId)) {
        notificaciones_advance();

        if (estado !== '' && estado !== 'ejecutado') {
            setInterval(notificaciones_advance, 60000);
        }
    }
});

/**
 * Limpia la cache del navegador
 */
function limpiar_cache() {
    // Crear un arreglo para almacenar los recursos
    let archivosJS = [];
    let archivosCSS = [];

    // Recoger los scripts cargados
    let scripts = document.scripts;
    for (let script of scripts) {
        if (script.src !== "") archivosJS.push(script.src);
    }

    // Recoger los archivos CSS
    $('link[rel="stylesheet"]').each(function () {
        let href = $(this).attr('href');
        if (href !== "") archivosCSS.push(href);
    });

    // Añadir el parámetro 'cacheBust' a los recursos JS
    archivosJS.forEach((resource) => {
        const resourceUrl = new URL(resource, window.location.href);
        resourceUrl.searchParams.set('cacheBust', new Date().getTime()); // Añadir timestamp a la URL

        // Reemplazar la URL de los archivos JS en el DOM
        let scriptElement = document.querySelector(`script[src="${resource}"]`);
        if (scriptElement) {
            scriptElement.src = resourceUrl;
        }
    });

    // Añadir el parámetro 'cacheBust' a los archivos CSS
    archivosCSS.forEach((resource) => {
        const resourceUrl = new URL(resource, window.location.href);
        resourceUrl.searchParams.set('cacheBust', new Date().getTime()); // Añadir timestamp a la URL

        // Reemplazar la URL de los archivos CSS en el DOM
        let linkElement = document.querySelector(`link[href="${resource}"]`);
        if (linkElement) {
            linkElement.href = resourceUrl;
        }
    });

    localStorage.clear();
    sessionStorage.clear();
    location.reload(true);
}

var controversia = {
    desacuerdo : {
            Asunto : "RECURSO DE REPOSICIÓN Y EN SUBSIDIO DE APELACIÓN CONTRA DICTAMEN DE CALIFICACIÓN DE PÉRDIDA DE CAPACIDAD LABORAL",
            Texto_insertar : "<p>Con relación al caso de la referencia manifestamos nuestro <b>DESACUERDO</b> con la calificación de <b>PÉRDIDA DE CAPACIDAD LABORAL</b>, donde califican los diagnósticos: {{$cie10_nombre_cie10_jrci}}<p>Se decide interponer el <b>RECURSO DE REPOSICIÓN Y EN SUBSIDIO DE APELACIÓN</b> contra la calificación, teniendo en cuenta la siguiente argumentación que se fundamenta en la documentación aportada.</p><p><center><b>ANÁLISIS<br></b></center></p><p>En días pasados se recibió dictamen <b>N° {{$n_dictamen}}</b> emitido el <b>{{$f_dictamen_jrci}}</b> por <b>{{$nombre_junta}}</b> del (la) señor(a) <b>{{$nombre_afiliado}}</b> identificado(a) con <b>{{$tipo_identificacion_afiliado}}</b> N° <b>{{$num_identificacion_afiliado}}</b> en el que se califica una pérdida de capacidad Laboral de <b>{{$pcl_jrci}}</b> de origen <b>{{$tipo_evento}} {{$origen_jrci}}</b> y con fecha de estructuración del <b>{{$f_estructuracion_jrci}}</b>.</p><p>Estamos en desacuerdo con esta calificación por lo siguiente:</p><p>{{$sustentacion_jrci}}</p><p><b><center>CONCLUSIÓN<br></center></b></p>Por lo anterior, manifestamos nuestro <b>DESACUERDO</b> con la pérdida de capacidad laboral calificada por <b>{{$nombre_junta}}</b> y solicitamos que el caso sea remitido a la Junta Nacional de Calificación de Invalidez para que se surta el recurso de apelación que estamos interponiendo.<p><p><center><b>PETICIÓN<br></b></center></p><p>Se solicita a la <b>{{$nombre_junta}}</b> proceda a dar respuesta a dicha solicitud de acuerdo a lo estipulado en el Decreto 1072 de 2015 Artículo 2.2.5.1.9.</p><p style='margin-left: 2em;'><i>“Además de las comunes, son funciones exclusivas de la Junta Nacional de Calificación de Invalidez las siguientes: Decidir en segunda instancia los recursos de apelación interpuestos contra los dictámenes de las juntas regionales de calificación de invalidez, sobre el origen, estado de pérdida de capacidad laboral, fecha de estructuración y revisión de la pérdida de capacidad laboral y estado de invalidez”</i>.</p><p><center><b>ANEXO</b></center></p><p>Certificado de existencia y representación legal expedido por la Superintendencia Financiera.</p>"
    },
    acuerdo : {
        Asunto : "ADHESIÓN Y EN SUBSIDIO APELACIÓN DICTAMEN PÉRDIDA CAPACIDAD LABORAL",
        Etiquetas: 'Número de Dictamen JRCI, Fecha de Dictamen JRCI, Nombre Afiliado, Tipo Documento Afiliado, Número Documento Afiliado, CIE-10 - Nombre CIE-10 JRCI, %Pcl JRCI, Origen Dx JRCI, Fecha Estructuracion JRCI, Decreto Calificador JRCI, ',
        Texto_insertar : "<p>Respetados Señores,</p><p>En días pasados se recibió dictamen <b>N° {{$nro_dictamen}}</b> emitido el <b>{{$f_dictamen_jrci}}</b> por la {{$nombre_junta}} del (la) señor(a) <b>{{$nombre_afiliado}}</b>, identificado(a) con <b>{{$tipo_identificacion_afiliado}}</b> N° <b>{{$num_identificacion_afiliado}}</b> en el que se califica una pérdida de capacidad laboral de <b>{{$pcl_jrci}}%</b> de origen <b>{{$Tipo_evento}}</b> <b>{{$origen_dx_jrci}}</b> y con fecha de estructuración del <b>{{$f_estructuracion_jrci}}</b>. Le informamos que la <b>AFP PROTECCIÓN</b> está <b>DE ACUERDO</b> con esta calificación y no interpondrá recursos de ley.</p><p>Igualmente informamos a {{$nombre_junta}} que en caso de que el paciente o alguna de las demás partes interesadas interponga alguno de los recursos de ley a que tiene derecho dentro de los términos legales previstos, y el dictamen sea modificado, manifestamos nuestro desacuerdo y solicitamos a la Junta regional dar trámite al recurso de apelación subsidiariamente interpuesto por <b>AFP PROTECCIÓN</b>; adicionalmente solicitamos nos informen por escrito y se nos tenga en cuenta como parte del proceso.</p>En caso que ninguna de las demás partes interesadas interponga los recursos de ley a que tienen derecho, <b>AFP PROTECCIÓN</b> renuncia al recurso subsidiario de apelación.</p>",
        Texto_default : "<p>Respetados señores, cordial saludo:</p><p>HUGO IGNACIO GÓMEZ DAZA, identificado como aparece al pie de mi firma, actuando en nombre y representación de SEGUROS DE VIDA ALFA S.A. Aseguradora que expidió el <b><u>seguro previsional a la AFP PORVENIR S.A.</u></b>, debidamente facultado para ello, en atención al dictamen de la referencia, estando dentro de los términos de ley, me permito interponer RECURSO DE REPOSICIÓN Y EN SUBSIDIO DE APELACIÓN ante la Junta, por los siguientes motivos:</p><p>Nuestra inconformidad se dirige a la calificación de PÉRDIDA DE CAPACIDAD LABORAL, dictaminada al (la) afiliado(a) {{$nombre_afiliado}}, {{$tipo_identificacion_afiliado}} {{$num_identificacion_afiliado}} donde califican los diagnósticos: {{$cie10_nombre_cie10_jrci}} por los cuales otorgan puntaje de <b>PCL</b> de <b>{{$pcl_jrci}} %</b> con fecha de estructuración del {{$f_estructuracion_jrci}}.</p><p>{{$sustentacion_jrci}}</p><p>Por lo anterior, presentamos el recurso de reposición y en subsidio el de apelación, contra {{$tipos_controversia}}, con el fin que se dictamine el valor correspondiente a las patologías del paciente dando aplicación al Decreto1507/2014 como normatividad vigente. En caso de que no se revoque, solicitamos se de curso a la apelación ante la Junta Nacional de Calificación, e informarnos con el fin de consignar los honorarios respectivos.</p><p style='text-align:center;'>ANEXO:</p><p>Certificado de existencia y representación legal expedido por la Superintendencia Financiera.</p><p style='text-align:center;'>NOTIFICACIONES:</p><p>Cualquier inquietud o consulta al respecto, le invitamos a comunicarse a nuestras líneas de atención al cliente en Bogotá (601) 3 07 70 32 o a la línea nacional gratuita 01 8000 122 532, de lunes a viernes, de 8:00 a. m. a 8:00 p. m. - sábados de 8:00 a.m. a 12 m., o escríbanos a «servicioalcliente@segurosalfa.com.co» o a la dirección Carrera 10 # 18-36 piso 4 Edificio José María Córdoba, Bogotá D.C.</p>" 
    }
}

/**
 * Obtiene el historial de servicio para el evento consultado con base a la identificacion del afiliado.
 */
function historial_servicios(){
    let identificacion = $("#identificacion").val() || $("#nro_identificacion").val();
    if(identificacion == ""){
        return;
    }

    let procesos = {
        1: () => {
            return {
                'Nombre': 'Origen',
                'id': 'form_modulo_califi_Origen_',
                'url': $("#action_modulo_calificacion_Origen").val()
            }
        },
        2: () => {
            return {
                'Nombre': 'PCL',
                'id': 'form_modulo_calificacion_pcl_',
                'url': $("#action_modulo_calificacion_pcl").val()
            }
        },
        3: () => {
            return {
                'Nombre': 'Juntas',
                'id': 'form_modulo_califi_Juntas_',
                'url': $("#action_modulo_calificacion_Juntas").val()
            }
        }
    }

    let afiliado =  $("#nombre_afiliado").val();
    let tipo_doc = $("#identificacion").data('tipo') || $("#tipo_documento").text();
    $('#historial_servicios .modal-header h4').append(`${afiliado} - ${tipo_doc} - ${identificacion}`);

    let token = $("input[name='_token']").val();
    let data = {
        '_token': token,
        'n_doc': identificacion,
        'tipo': tipo_doc
    }

    $.post('/historial_servicios',data,function(response){
        let tabla_historial = $("#listado_historial_s").DataTable({
            orderCellsTop: true,
            fixedHeader: true,
            scrollY: 350,
            scrollX: true,
            autoWidth: false,
            destroy: true,
            data: response,
            pageLength: 5,
            order: [[5, 'desc']],
            columns: [
                { "data": "F_registro" },
                { "data": null, render: function(data){
                        let action = $("#formularioLlevarEdicionEvento").attr("action");
                        let editar_evento = `<form action="${action}" id="formularioLlevarEdicionEvento" method="POST">
                            <input type="hidden" name="_token" value="${token}">
                            <input type="hidden" name="regresar_anterior"  value="regresar_anterior">
                            <input type="hidden" name="newIdEvento" value="${data.ID_evento}">
                            <input type="hidden" name="newIdProceso" value="${data.Id_proceso}">
                            <input type="hidden" name="newIdServicio" value="${data.Id_Servicio}">
                            <input type="hidden" name="newIdAsignacion" value="${data.Id_Asignacion}">
                            <button type="submit" class="btn btn-icon-only text-info btn-sm"><b>${data.ID_evento}</b></button>
                        </form>`;
                        return editar_evento;
                    } 
                },
                { "data": "Nombre_servicio" },
                { "data": "Nombre_estado" },
                { "data": "Accion" },
                { "data": "F_accion" },
                { "data": null, render: function(data){
                        let action = procesos[data.Id_proceso]().url;
                        let form = `
                            <form action="${action}" method="POST">
                                <input type="hidden" name="_token" value="${token}">
                                <input type="hidden" name="badera_modulo_principal_origen" value="desdebus_mod_origen">
                                <input type="hidden" name="newIdEvento" value="${data.ID_evento}">
                                <input type="hidden" name="newIdProceso" value="${data.Id_proceso}">
                                <input type="hidden" name="newIdServicio" value="${data.Id_Servicio}">
                                <input type="hidden" name="newIdAsignacion" value="${data.Id_Asignacion}">
                               <button type="submit" class="btn" style="border: none; background: transparent;">
                                    <i class="far fa-eye text-info"></i>
                                </button>
                            </form>`;

                        return form;
                    } 
                },
            ],
            language: {
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
    
        autoAdjustColumns(tabla_historial);
    });

}

/**
 * Obtiene el id del formulario para el modulo principal actual
 * @returns Id del formulario cargado en el dom
 */
function getId_formulario(){
    let disponibles = ["#form_calificacionJuntas","#form_calificacionPcl","#form_calificacionOrigen"];
    // Busca el primer ID que esté presente en el DOM
    let formularioPresente = $(disponibles.join(',')).filter(':visible').first();

    // Retorna el ID o null si no se encontró ninguno
    return formularioPresente.length > 0 ? formularioPresente.attr('id') : null;
}

/* Función para ajustar un Datatable cuando este tenga un scroll vertical */
function autoAdjustColumns(table) {
    var container = table.table().container();
    //console.log(container);
    if (container instanceof Element) {
      var resizeObserver = new ResizeObserver(function () {
        table.columns.adjust().draw();
      });
  
      resizeObserver.observe(container);
    } else {
      console.error("'container' is not a valid DOM element.");
    }
}

/**
 * La función para validar y establecer un limite en la fecha dentro de un input, mostrando a su vez un mensaje de advertencia debajo del elemento.
 * @param {string} Idselector Corresponde al id del input
 * @param {string} operador Operador con el cual se estara evaluando la validacion
 * @param {string} fecha Fecha con la cual se estara evaluando
 * @param {string} info Mensaje de advertencia al cumplirse la validacion
*/
function Validarfecha(IdSelector,operador = '>',fecha = null,info = 'La fecha no debe ser mayor a'){
    let fechaActual = '';
    let operadores = {
        '<' : function(a,b) {return a < b},
        '>' : function(a,b) {return a > b},
        '>=' : function(a,b) {return a >= b},
        '<=' : function(a,b) {return a <= b},
        '!==' : function(a,b) {return a !== b},
        '==' : function(a,b) {return a == b}
    }
    if(fecha == null){
        fechaActual = new Date().toISOString().slice(0,10); //Obtenemos la fecha en Ymd
    }else{
        fechaActual = fecha;
    }


    $(IdSelector).off("change").on("change",function(){
        let FechaDigitada = $(this).val();
        let etiqueta = $(IdSelector).next('i');
        let mensaje = `<i style="color:red;">${info} ${fechaActual}.</i>`;
        
        if(operadores[operador](FechaDigitada,fechaActual)){
            $(IdSelector).val(fechaActual); //Seteamos la el input como fecha maxima la actual
            if(etiqueta.length > 0){
                etiqueta.remove();
            }
            $(IdSelector).after(mensaje); //Agregamos el mensaje despues del input
        }else{
            etiqueta.remove();
        }

    });

}
/**
 * Función para agregar la validación a los inputs de tipo fecha actualmente se esta usando en los que se generan dinamicamente
 * @param {string} input Id del input tipo date al cual se le quieren agregar las validaciones generales de fecha.
 * @param {string} hideButton Id del boton que se quiere ocultar para evitar acciones de guardado o demás en caso de que el input este con error.
*/
function agregarValidacionFecha(input,hideButton = null) {
    let today = new Date().toISOString().split("T")[0];
    
    $(input).on('change', function() {
        // Validación de fecha mínima
        if (this.value < '1900-01-01') {
            $(`#${this.id}_alerta`).text("La fecha ingresada no es válida. Por favor valide la fecha ingresada").removeClass("d-none");
            if(hideButton != null){
                $(`#${hideButton}`).addClass("d-none");
            }
            return;
        }
        // Validación de fecha máxima (hoy)
        if (this.value > today) {
            $(`#${this.id}_alerta`).text("La fecha ingresada no puede ser mayor a la actual").removeClass("d-none");
            if(hideButton != null){
                $(`#${hideButton}`).addClass("d-none");
            }
            return;
        }
        // Limpiar mensaje de error si la fecha es válida
        if(hideButton != null){
            $(`#${hideButton}`).removeClass("d-none");
        }
        $(`#${this.id}_alerta`).text('').addClass("d-none");
    });
}
/**
 * Funcion para descargar los documentos generales
 * @returns void
 */
function descargarDocumentos(){
    let evento =  $('#newId_evento').val();
    let servicio =  $(".Id_servicio").val();
    let asignacion =  $("#newId_asignacion").val();

    let token = $("input[name='_token']").val();

    let datos = {
        '_token': token,
        'parametro': 'descargaCompleta',
        'IdEvento': evento,
        'IdServicio': servicio,
        'IdAsignacion': asignacion,

    };
    
    if (evento === undefined || evento === '' || servicio === undefined || servicio === '' || asignacion === undefined || asignacion === '') {
        console.error('Debe suministrar un evento y el servicio asignado para poder descargar los documentos');
        return;
    }

    $("#descargar_documentos").prop('disabled',true);
    $("#status_spinner").removeClass('d-none');  

    $.ajax({
        url: '/descargar-documentos',
        type: 'POST',
        data: datos,
        xhrFields: {
            responseType: 'blob' // El archivo al venir en la respuesta necesitamos construir el archivo desde el lado del cliente
        },
        success:function(response,status, jqXHR){
            const blob = new Blob([response], { type: 'application/zip' });

            //Se crea un enlace temporal para poder descargar el archivo devuelto
            const link = document.createElement('a');
            const url = URL.createObjectURL(blob);
            link.href = url;
            link.setAttribute('download', 'ListadoDocumentos.zip'); // Corresponde al nombre del archivo al descargarse
            document.body.appendChild(link);
            link.click();

            $("#status_spinner").addClass('d-none');  
            $('.mostrar_exito').removeClass('d-none');
            $('.mostrar_exito').empty();
            $('.mostrar_exito').append('<b>Archivo generado de manera correcta.</b>');

            // Eliminamos el enlace despues de descargarse y los mensajes de estado.
            setTimeout(function() {
                document.body.removeChild(link);
                window.URL.revokeObjectURL(url);
                $('.mostrar_exito').addClass('d-none');
                $("#descargar_documentos").prop('disabled',false);
            }, 3000);
        },
    });
}

/**
 * Valida si el evento se encuentra en la bandeja de notificacion
 * @returns bool
 */
function ubicacionEvento() {
    return new Promise((resolve, reject) => {
        let data = {
            '_token': $('input[name=_token]').val(),
            'bandera': 'info_evento',
            'id_asignacion': $("#newIdAsignacion").val(),
            'evento': $("#newIdEvento").val()
        };
        
        $.ajax({
            type: 'POST',
            url: '/informacionBandejaNotifi',
            dataType: 'json',
            data: data,
            success: function(response) {
                let status = 'No';
                if(response != '' && response != undefined){
                    let status = response[0].Notificacion == 'Si'; 
                }
                
                resolve(status); //true o false 
            }
        });
    });
}
/*
* Recibe una cadena string con todos los IDs de destinatario de un comunicado y el 'destinatario' con el fin d
* @returns string | null
*/
function retornarIdDestinatario(ids_destinatario, destinatario){
        if(ids_destinatario != null && ids_destinatario != undefined){
            //Se usa split para armar un array con todos los ids de destinatario
            let ids = ids_destinatario.split(',');
            //Se validan los prefijos en base al destinatario
            const prefijos = {
                'Afiliado': 'AFI',
                'Empleador': 'EMP',
                'eps': 'EPS',
                'afp': 'AFP',
                'arl': 'ARL',
                'afp_conocimiento': 'FPC',
                'afp_conocimiento2': 'FPC2',
                'afp_conocimiento3': 'FPC3',
                'afp_conocimiento4': 'FPC4',
                'afp_conocimiento5': 'FPC5',
                'afp_conocimiento6': 'FPC6',
                'afp_conocimiento7': 'FPC7',
                'afp_conocimiento8': 'FPC8',
                'jrci': 'JRC',
                'jnci': 'JNC'
            };
            // Se busca el prefijo con el que deberia venir el ID en base al destinatario
            let Id_Destinatario = ids.find(finder => finder !== '' && finder.startsWith(prefijos[destinatario]));

            return Id_Destinatario && Id_Destinatario !== '' ? Id_Destinatario.split('_')[1] : null
        }
    }

    /*
        Muestra un spinner en el centro de la pantalla para indicarle al usuario que x recurso se esta cargando
    */
    function showLoading() {
        $('#loading').addClass('loading');
        $('#loading-content').addClass('loading-content');
    }
    /*
        Esconde el spinner para indicarle al usuario que x recurso fue cargado
    */
    function hideLoading() {
        $('#loading').removeClass('loading');
        $('#loading-content').removeClass('loading-content');  
    }
    /*
        Consulta en la base de datos si un registro de correspondencia fue guardado con estado distinto a notificado
        si encuentra el registro devuelve el tipo de correspondencia para que el sistema cargue la información desde la tabla de correspondencias y no
        lo haga desde la de comunicados.
    */
    function consultarRegistroPorIdDestinatario(id_destinatario){
        if(id_destinatario){
            return new Promise((resolve, reject) => {
                let datos = {
                    '_token': $('input[name=_token]').val(),
                    'id_destinatario': id_destinatario
                };
        
                $.ajax({
                    url: '/getInfoCorrespByIdDest',
                    type: 'POST',
                    data: datos,
                    beforeSend: function () {
                        showLoading();
                    },
                    success: function (response) {
                        if (response.length > 0) {
                            resolve(response[0]['Tipo_correspondencia']);
                        } else {
                            resolve(null);
                        }
                    },
                    error: function (error) {
                        reject(error);
                    },
                    complete: function () {
                        hideLoading();
                    }
                });
            });
        }
        else{
            return null;
        }
}

/**
 * 
 * @param {int} id_accion Id de la acción que se va a ejecutar 
 * @returns Estado de la acción: sin_ejecutar - ejecutada
 */
function validarAccion_ejecutar(id_accion) {
    return new Promise((resolve, reject) => {
        if (id_accion === "") {
            reject("ID de acción vacío");
            return;
        }
        
        let datos = {
            '_token': $('input[name=_token]').val(),
            'bandera': 'validar_accion',
            'accion_ejecutar': id_accion,
            'Id_cliente': $("#cliente").data('id'),
            'Id_servicio': $("#Id_servicio").val(),
            'ID_evento': $("#newIdEvento").val(),
            'Id_Asignacion': $("#newIdAsignacion").val()
        };

        $.post("/validar_acciones", datos)
            .done(function(response) {
                resolve(response);
            })
            .fail(function(error) {
                reject(error);
            });
    });
}

/**
 * Funcion para eliminar un comunicado en especifico, principalmente cuando este se encuentra repetido
 * @param {int} id_comunicado id del comunicado a eliminar 
 * @param {int} proceso proceso al cual pertenece el comunicado
 * @returns 
 */
function eliminar_evento(id_comunicado,proceso){
    if(id_comunicado == "" || proceso == ""){
        return;
    }

    let mensajeConfirmacion = '¿Está seguro de eliminar este registro? tenga en cuenta que una vez eliminado, este no se podrá recuperar.';

    let data = {
        '_token': $("input[name='_token']").val(),
        'id_servicio': $("#Id_Servicio").val() || $("#Id_servicio").val(),
        'id_evento': $("#newIdEvento").val(),
        'id_asignacion': $("#newIdAsignacion").val(),
        'id_comunicado': id_comunicado
    };

    if(confirm(mensajeConfirmacion)){
        $.post('/eliminar_evento',data,function(response){
            if(response == 'ok'){
                $('.alerta_externa_comunicado').removeClass('d-none');
                $('.alerta_externa_comunicado').append('<b>El comunicado se elimino de manera correcta</b>');
                setTimeout(function(){
                    $('.alerta_externa_comunicado').addClass('d-none');
                    $('.alerta_externa_comunicado').empty();
                    location.reload();
                }, 3000);
            }
        });
    }
    return 'ok';
}

/**
 * Funcion para verificar si dentro los comunicados hay algun radicado duplicado
 */
function radicados_duplicados(tabla){

    let radicados_usados = [];
    let radicados_duplicados = [];

    $(`#${tabla} tr`).each(function() {
        let radicado = $(this).find('td:first-child').text().trim(); //Obtenemos el radicado y el id del comunicado ubicado en la primera columna
        let id_comunicado = $(this).find('td:first-child').data('id_comunicado')

        //So el radicado actual ya fue usado habilita el boton de eliminar
        if (radicados_usados.includes(radicado)) {
            radicados_duplicados.push(radicado);
            $(this).find('td:last-child').append(`<button class="btn_eliminar_radicado" data-id_comunicado="${id_comunicado}" style="border: none; background: transparent;"><i class="fas fa-trash" style="color: red;"></i></button>`);
        } else {
            radicados_usados.push(radicado);
        }
    });

    //Muestra la alerta informando la cantidad de radicados duplicados
    if(radicados_duplicados.length > 0){

        $("#alertaRadicado").show();
        $("#alerta_radicado_msj").empty();
        $("#alerta_radicado_msj").append(`se encontraron <b>${radicados_duplicados.length }</b> radicados duplicados, por favor verifique.`);
        $("#alertaRadicado").show();

        setTimeout(() => {
            $("#alertaRadicado").hide();
        }, 3500);
    }   
}

/**
 * Función para ejecutar varias peticiones de manera asíncrona
 * @param  {...Promise} peticiones - Las peticiones a ejecutar (promesas).
 * @returns {Promise} - Devuelve una promesa que se resuelve cuando todas las peticiones han finalizado.
 * @example 
 * let peticion = $.ajax({
 *     type: 'POST',
 *     url: '/url',
 *     data: {...}
 *
 * peticion_asincrona(peticion, otraPeticion);
 */
function peticion_asincrona(...peticiones) {
    if (peticiones.length === 0) {
        console.error('No se han proporcionado peticiones.');
        return Promise.reject('No se han proporcionado peticiones.');
    }

    return Promise.allSettled(peticiones)
        .then(results => {
            results.forEach((result, index) => {
                if (result.status === 'fulfilled') {
                    console.log(`Petición ${index + 1} completada con éxito:`, result.value);
                } else {
                    console.error(`Petición ${index + 1} fallida:`, result.reason);
                }
            });
        })
        .finally(() => {
            console.log('Todas las peticiones han sido procesadas');
        });
}
/**
 * Obtiene la diferencia entre dos fechas
 * @param {string} fecha_inicial 
 * @param {string} fecha_final 
 * @returns devuelve la cantidad de dias entre las fechas
 */
function diff_date(fecha_inicial, fecha_final, tipo_diferencia){
    if(tipo_diferencia.toLowerCase() === 'dias'){
        let diff = moment(new Date(fecha_final)).diff(new Date(fecha_inicial), 'days', true);
        return Math.round(diff);
    }else if(tipo_diferencia.toLowerCase() === 'meses'){
        let diff = moment(new Date(fecha_final)).diff(new Date(fecha_inicial), 'months', true);
        return Math.round(diff);
    }else if(tipo_diferencia.toLowerCase() === 'dias'){
        let diff = moment(new Date(fecha_final)).diff(new Date(fecha_inicial), 'years', true);
        return Math.round(diff);
    }
    
}
/**
 * Calcula la antiguedad en la empresa
 */
function calc_antiguedad_empresa(){
    if($("#fecha_ingreso").val() !== '' && $("#fecha_retiro").val() !== ''){
        let antiguedad = diff_date($("#fecha_ingreso").val(),$("#fecha_retiro").val(),'meses');
        $("#antiguedad_empresa").val(antiguedad);
    }
}
    /*
        Cuando seleccionen la acción de ejecutar acción de DEVOLVER ASIGNACIÓN o DEVOLVER CALIFICACIÓN, se haran las validaciones solicitadas
        en el PBS090 y si todo sale correcto se retornara la información del usuario, si no, se retornara null;  
    */
    function consultaUltimoUsuarioEjecutarAccion(data_ult_usuario){
        return new Promise((resolve, reject) => { 
            $.ajax({
                type:'POST',
                url:'/capturarUsuarioUltAccion',
                data: data_ult_usuario,
                beforeSend: function () {
                    showLoading();
                },
                success:function (data) {
                    if(data){
                        resolve(data);
                    }
                    resolve(null);
                },
                complete: function () {
                    hideLoading();
                }
            });
        })
    }

/**
 * Procesa una alerta y la muestra para un proceso correspondiente, homologando la acccion del boton sobre el formulario al cual esta enlazado.
 * @param {string} titulo Titulo del modal de alertas. 
 * @param {string} id_form selector del formulario al cual se delegará el evento submit
 * @param {int} proceso id del proceso para el cual se esta procesando la alerta 
 * @param {string} tipo_alerta El tipo de la alerta que se estara mostrando. alerta -> muestra una modal interactiva con botones de accion, otro - Muestra solo una modal informativa.
 */
    function alertas_informativas(titulo, mensaje_1, mensaje_2, require_timeout, timeout, confirmation_buttons = false, selector = null) {
        //Cuando la modal requiere botones no deja ser cerrada ni por teclado ni por clicks fuera de la pagina
        if(confirmation_buttons){
            $("#alertas_informativas").modal({
                backdrop: 'static',
                keyboard: false
            });
        }else{
            $("#alertas_informativas").modal({
                backdrop: true,
                keyboard: true
            });
        }
        // Mostrar la modal
        $('#alertas_informativas').modal('show');
        // Cambiar el titulo del modal
        let modalTitle = document.querySelector('#alertas_informativas .modal-title');
        // Icono de información antes del titulo
        modalTitle.innerHTML = `<i class="fas fa-info-circle"></i> ${titulo}`;
        //Setteamos los mensajes
        $('#primer_mensaje').html(mensaje_1);
        $('#segundo_mensaje').html(mensaje_2);
        if(confirmation_buttons){
            document.getElementById('alertaInformativaFooter').style.display = "flex";
            $("#no_button").click(function () {
                selector.val("").trigger("change");
                return
            });
            $("#si_button").click(function () {
                $('#alertas_informativas').modal('hide');
                $('#primer_mensaje').text('');
                $('#segundo_mensaje').text('');
            });
        }else{
            document.getElementById('alertaInformativaFooter').style.display = "none";
        }
        if(require_timeout){
            setTimeout(() => {
                $('#alertas_informativas').modal('hide');
                $('#primer_mensaje').text('');
                $('#segundo_mensaje').text('');
            }, timeout);   
        }
    }

/*
    Consulta si el submodulo fue visado para poder permitir el guardado de alguna de las siguientes acciones 
    141, 142, 143, 175, 176, 152, 153, 154
*/
    function consultaVisadoSubmodulo(id_evento, id_asignacion, id_proceso, id_servicio){
        return new Promise((resolve, reject) => {
            data = {
                '_token': $('input[name=_token]').val(),
                'id_evento': id_evento,
                'id_asignacion': id_asignacion,
                'id_proceso': id_proceso,
                'id_servicio': id_servicio,
            }
            $.ajax({
                type: 'POST',
                url: '/validarVisadoSubmodulo',
                data: data,
                beforeSend: function(){
                    $('#c_ejecutar_accion').addClass("descarga-deshabilitada");
                },
                success: function(response) {
                    if(response){
                        resolve(response[0]);
                    }
                },
                complete: function(){
                    $('#c_ejecutar_accion').removeClass("descarga-deshabilitada");
                }
            });
        })
    }

    /*
        Consulta si el submodulo fue guardado para poder permitir el guardado de alguna de las siguientes acciones 
        25,27,95,96
    */
    function consultaGuardadoSubmodulo(id_evento, id_asignacion, id_proceso, id_servicio){
        return new Promise((resolve, reject) => {
            data = {
                '_token': $('input[name=_token]').val(),
                'id_evento': id_evento,
                'id_asignacion': id_asignacion,
                'id_proceso': id_proceso,
                'id_servicio': id_servicio,
            }
            $.ajax({
                type: 'POST',
                url: '/validarGuardadoSubmodulo',
                data: data,
                beforeSend: function(){
                    $('#c_ejecutar_accion').addClass("descarga-deshabilitada");
                },
                success: function(response) {
                    if(response){
                        resolve(response[0]);
                    }
                },
                complete: function(){
                    $('#c_ejecutar_accion').removeClass("descarga-deshabilitada");
                }
            });
        })
    }

    /**
     * Funcion construir los elementos a las columnas de notificacion a las tablas de comunicados
     * @param {string} n_radicado #Radicado asociado al comunicado
     * @param {string} nota Opcional Nota del comunicado
     * @param {object} status_notificacion corresponde a las opciones disponibles que se incluiran en el selector del estado general de notificaciones
     * @returns {Array} correspondiente a las columnas asociadas a notificacion (Destinatarios','Estado_general','Nota')
     */
    function getHistorialNotificacion(n_radicado, nota,status_notificacion,data_comunicado,entidades_conocimiento,juntas=false,submodulo=false,columna_con_width_modificado=false) {
        let Destinatario = data_comunicado['Destinatario'];
        let Copias = data_comunicado['Agregar_copia'];
        let Correspondencia = data_comunicado['Correspondencia'];
        data_comunicado['Estado_correspondencia'] = data_comunicado['Estado_correspondencia'] == null ||  data_comunicado['Estado_correspondencia'] == '1' ? '1' : '0';
        //Bandera que controla si se debe o no mostrar los vinculos de entidad conocimiento, cuando el comunicado es manual siempre va a mostrar los vinculos
        let flagEntidades = data_comunicado['Tipo_descarga']?.toLowerCase() === 'manual' ? true : false;
        if(Copias){
            Copias = Copias.split(',').map(copia => copia.trim().toLowerCase());
            if(Copias.includes('afp_conocimiento')){
                flagEntidades = true;
            }
        }
        if(Correspondencia){
            Correspondencia = Correspondencia.split(',').map(correspondencia => correspondencia.trim().toLowerCase());
        }
        //Función para agregar el subrayado al destinatario principal y aquellos que hayan sido seleccionados como copia
        function getUnderlineStyle(entity) {
            let negrita = (Correspondencia && Correspondencia.includes(entity)) ? 'font-weight:700;' : '';
            let underline = (Destinatario.toLowerCase() === entity || (Copias && Copias.includes(entity))) ? 'text-decoration-line: underline;' : '';
            return negrita + underline;
        }
        let info_destinatarios = `<div style="display:flex; flex-wrap: wrap; width:500px; gap:3px;">
            <a href="javascript:void(0);" data-toggle="modal" data-target="#modalCorrespondencia" id="CorrespondenciaNotificacion" data-tipo_correspondencia="Afiliado" \
                data-estado_correspondencia="${data_comunicado["Estado_correspondencia"]}" data-id_comunicado="${data_comunicado["Id_Comunicado"]}" data-n_radicado="${n_radicado}" data-copias="${Copias}" data-destinatario_principal="${Destinatario}"\
                data-id_evento="${data_comunicado['ID_evento']}" data-id_asignacion="${data_comunicado['Id_Asignacion']}" data-id_proceso="${data_comunicado['Id_proceso']}" \
                data-anexos="${data_comunicado['Anexos']}" data-correspondencia="${data_comunicado['Correspondencia']}" data-tipo_descarga="${data_comunicado['Tipo_descarga']}" \
                data-nombre_afiliado="${data_comunicado["Nombre_afiliado"]}" data-numero_identificacion="${data_comunicado["N_identificacion"]}" \ 
                data-ids_destinatario="${data_comunicado['Id_Destinatarios']}" style="${getUnderlineStyle('afiliado')}">Afiliado</a>
            <a href="javascript:void(0);" label="Open Modal" data-toggle="modal" data-target="#modalCorrespondencia" id="CorrespondenciaNotificacion" data-tipo_correspondencia="Empleador" \
                data-estado_correspondencia="${data_comunicado["Estado_correspondencia"]}" data-id_comunicado="${data_comunicado["Id_Comunicado"]}" data-n_radicado="${n_radicado}" data-copias="${Copias}" data-destinatario_principal="${Destinatario}"\
                data-id_evento="${data_comunicado['ID_evento']}" data-id_asignacion="${data_comunicado['Id_Asignacion']}" data-id_proceso="${data_comunicado['Id_proceso']}" \
                data-anexos="${data_comunicado['Anexos']}" data-correspondencia="${data_comunicado['Correspondencia']}" data-tipo_descarga="${data_comunicado['Tipo_descarga']}" \
                data-nombre_afiliado="${data_comunicado["Nombre_afiliado"]}" data-numero_identificacion="${data_comunicado["N_identificacion"]}" \ 
                data-ids_destinatario="${data_comunicado['Id_Destinatarios']}" style="${getUnderlineStyle('empleador')}">Empleador</a>
            <a href="javascript:void(0);" data-toggle="modal" data-target="#modalCorrespondencia" id="CorrespondenciaNotificacion" data-tipo_correspondencia="eps" \
                data-estado_correspondencia="${data_comunicado["Estado_correspondencia"]}" data-id_comunicado="${data_comunicado["Id_Comunicado"]}" data-n_radicado="${n_radicado}" data-copias="${Copias}" data-destinatario_principal="${Destinatario}"\
                data-id_evento="${data_comunicado['ID_evento']}" data-id_asignacion="${data_comunicado['Id_Asignacion']}" data-id_proceso="${data_comunicado['Id_proceso']}" \
                data-anexos="${data_comunicado['Anexos']}" data-correspondencia="${data_comunicado['Correspondencia']}" data-tipo_descarga="${data_comunicado['Tipo_descarga']}" \
                data-nombre_afiliado="${data_comunicado["Nombre_afiliado"]}" data-numero_identificacion="${data_comunicado["N_identificacion"]}" \ 
                data-ids_destinatario="${data_comunicado['Id_Destinatarios']}" style="${getUnderlineStyle('eps')}">EPS</a>
            <a href="javascript:void(0);" data-toggle="modal" data-target="#modalCorrespondencia" id="CorrespondenciaNotificacion" data-tipo_correspondencia="afp" \
                data-estado_correspondencia="${data_comunicado["Estado_correspondencia"]}" data-id_comunicado="${data_comunicado["Id_Comunicado"]}" data-n_radicado="${n_radicado}" data-copias="${Copias}" data-destinatario_principal="${Destinatario}"\
                data-id_evento="${data_comunicado['ID_evento']}" data-id_asignacion="${data_comunicado['Id_Asignacion']}" data-id_proceso="${data_comunicado['Id_proceso']}" \
                data-anexos="${data_comunicado['Anexos']}" data-correspondencia="${data_comunicado['Correspondencia']}" data-tipo_descarga="${data_comunicado['Tipo_descarga']}" \
                data-nombre_afiliado="${data_comunicado["Nombre_afiliado"]}" data-numero_identificacion="${data_comunicado["N_identificacion"]}" \ 
                data-ids_destinatario="${data_comunicado['Id_Destinatarios']}" style="${getUnderlineStyle('afp')}">AFP</a>
            <a href="javascript:void(0);" data-toggle="modal" data-target="#modalCorrespondencia" id="CorrespondenciaNotificacion" data-tipo_correspondencia="arl" \ 
                data-estado_correspondencia="${data_comunicado["Estado_correspondencia"]}" data-id_comunicado="${data_comunicado["Id_Comunicado"]}" data-n_radicado="${n_radicado}" data-copias="${Copias}" data-destinatario_principal="${Destinatario}"\
                data-id_evento="${data_comunicado['ID_evento']}" data-id_asignacion="${data_comunicado['Id_Asignacion']}" data-id_proceso="${data_comunicado['Id_proceso']}" \
                data-anexos="${data_comunicado['Anexos']}" data-correspondencia="${data_comunicado['Correspondencia']}" data-tipo_descarga="${data_comunicado['Tipo_descarga']}" \
                data-nombre_afiliado="${data_comunicado["Nombre_afiliado"]}" data-numero_identificacion="${data_comunicado["N_identificacion"]}" \ 
                data-ids_destinatario="${data_comunicado['Id_Destinatarios']}" style="${getUnderlineStyle('arl')}">ARL</a>`;
        
            if(flagEntidades && (entidades_conocimiento != null && entidades_conocimiento.length > 0)){
                entidades_conocimiento.forEach(element => {
                    info_destinatarios += `<a href="javascript:void(0);" data-toggle="modal" data-target="#modalCorrespondencia" id="CorrespondenciaNotificacion" data-tipo_correspondencia="${element['tipo_correspondencia']}" \
                        data-estado_correspondencia="${data_comunicado["Estado_correspondencia"]}" data-id_comunicado="${data_comunicado["Id_Comunicado"]}" data-n_radicado="${n_radicado}" data-copias="${Copias}" data-destinatario_principal="${Destinatario}"\
                        data-id_evento="${data_comunicado['ID_evento']}" data-id_asignacion="${data_comunicado['Id_Asignacion']}" data-id_proceso="${data_comunicado['Id_proceso']}" \
                        data-anexos="${data_comunicado['Anexos']}" data-correspondencia="${data_comunicado['Correspondencia']}" data-tipo_descarga="${data_comunicado['Tipo_descarga']}" \
                        data-nombre_afiliado="${data_comunicado["Nombre_afiliado"]}" data-numero_identificacion="${data_comunicado["N_identificacion"]}" data-id_entidad_conocimiento="${element['Entidad'][0]['Id_Entidad']}" data-tipo_entidad_conocimiento="${element['Entidad'][0]['Tipo_Entidad']}" \  
                        data-nombre_entidad_conocimiento="${element['Entidad'][0]['Nombre_entidad']}" data-ids_destinatario="${data_comunicado['Id_Destinatarios']}" style="${getUnderlineStyle(element['tipo_correspondencia'])}"> ${element['Entidad'][0]['Tipo_Entidad']} - ${element['Entidad'][0]['Nombre_entidad']}</a>`;
                });
            }
            if (juntas) {
                info_destinatarios += `
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#modalCorrespondencia" id="CorrespondenciaNotificacion" data-tipo_correspondencia="jrci" \
                        data-estado_correspondencia="${data_comunicado["Estado_correspondencia"]}" data-id_comunicado="${data_comunicado["Id_Comunicado"]}" data-n_radicado="${n_radicado}" data-copias="${Copias}" data-destinatario_principal="${Destinatario}"\
                        data-id_evento="${data_comunicado['ID_evento']}" data-id_asignacion="${data_comunicado['Id_Asignacion']}" data-id_proceso="${data_comunicado['Id_proceso']}" \
                        data-anexos="${data_comunicado['Anexos']}" data-correspondencia="${data_comunicado['Correspondencia']}" data-tipo_descarga="${data_comunicado['Tipo_descarga']}" \
                        data-nombre_afiliado="${data_comunicado["Nombre_afiliado"]}" data-numero_identificacion="${data_comunicado["N_identificacion"]}" \ 
                        data-ids_destinatario="${data_comunicado['Id_Destinatarios']}" style="${getUnderlineStyle('jrci')}">JRCI
                    </a>
                    <a href="javascript:void(0);" data-toggle="modal" data-target="#modalCorrespondencia" id="CorrespondenciaNotificacion" data-tipo_correspondencia="jnci" \
                        data-estado_correspondencia="${data_comunicado["Estado_correspondencia"]}" data-id_comunicado="${data_comunicado["Id_Comunicado"]}" data-n_radicado="${n_radicado}" data-copias="${Copias}" data-destinatario_principal="${Destinatario}"\
                        data-id_evento="${data_comunicado['ID_evento']}" data-id_asignacion="${data_comunicado['Id_Asignacion']}" data-id_proceso="${data_comunicado['Id_proceso']}" \
                        data-anexos="${data_comunicado['Anexos']}" data-correspondencia="${data_comunicado['Correspondencia']}" data-tipo_descarga="${data_comunicado['Tipo_descarga']}" \
                        data-nombre_afiliado="${data_comunicado["Nombre_afiliado"]}" data-numero_identificacion="${data_comunicado["N_identificacion"]}" \ 
                        data-ids_destinatario="${data_comunicado['Id_Destinatarios']}" style="${getUnderlineStyle('jnci')}">JNCI
                    </a>
                `;
            }
            info_destinatarios += '</div>';
        if(submodulo){
            return info_destinatarios;
        }
        let info_notificacion = {
            'Destinatarios': info_destinatarios,
            'Nota_Comunicados': `<textarea class="form-control nota-col" name="nota_comunicado_${n_radicado}" id="nota_comunicado_${n_radicado}" cols="70" rows="5" style="resize:none; width:200px;">${nota == null ? "" : nota}</textarea>`,
        };
        //Opciones a incluir en el selector del estado general de la notificacion
        let opciones_Notificacion = '';
        $.each(status_notificacion,function(item,index){
            opciones_Notificacion += index.opciones;
        });

        info_notificacion['Estado_General'] =`<select class="custom-select" id="status_notificacion_${n_radicado}" style="width:100%;">${opciones_Notificacion}</select>`;

        return info_notificacion;
    }

    function guiasEntidadConocimiento (tipo_entidad_conocimiento, id_evento, id_servicio, token, parte) {
        var tipo_correspondencia;
        switch (tipo_entidad_conocimiento) {
            case 'EPS':
                // $("#tipo_guia").text('EPS');
                $("#tipo_guia").text('Entidad conocimiento');
                
                if(parte == "submodulo"){
                    $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_21').addClass('d-none');
                    tipo_correspondencia = 21;
                }else{
                    $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_43').addClass('d-none');
                    tipo_correspondencia = 43;
                }

                var datos_lista_tipos_documentos = {
                    '_token': token,
                    'evento': id_evento,
                    'servicio': id_servicio,
                    'parametro':"docs_complementarios",
                    'tipo_correspondencia': tipo_correspondencia,
                };
            break;
            case 'AFP':
                // $("#tipo_guia").text('AFP');
                $("#tipo_guia").text('Entidad conocimiento');
                if(parte == "submodulo"){
                    $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_20').addClass('d-none');
                    tipo_correspondencia = 20;
                }else{
                    $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_43').addClass('d-none');
                    tipo_correspondencia = 43;
                }

                var datos_lista_tipos_documentos = {
                    '_token': token,
                    'evento': id_evento,
                    'servicio': id_servicio,
                    'parametro':"docs_complementarios",
                    'tipo_correspondencia': tipo_correspondencia,
                };
            break;
            case 'ARL':
                // $("#tipo_guia").text('ARL');
                $("#tipo_guia").text('Entidad conocimiento');

                if(parte == "submodulo"){
                    $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_19').addClass('d-none');
                    tipo_correspondencia = 19;
                }else{
                    $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_43').addClass('d-none');
                    tipo_correspondencia = 43;
                }

                var datos_lista_tipos_documentos = {
                    '_token': token,
                    'evento': id_evento,
                    'servicio': id_servicio,
                    'parametro':"docs_complementarios",
                    'tipo_correspondencia': tipo_correspondencia,
                };
            break;
            case 'JRCI':
                // $("#tipo_guia").text('JRCI');
                $("#tipo_guia").text('Entidad conocimiento');
                $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_43').addClass('d-none');

                var datos_lista_tipos_documentos = {
                    '_token': token,
                    'evento': id_evento,
                    'servicio': id_servicio,
                    'parametro':"docs_complementarios",
                    'tipo_correspondencia': 43,
                };
            break;
            case 'JNCI':
                // $("#tipo_guia").text('JNCI');
                $("#tipo_guia").text('Entidad conocimiento');
                $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_43').addClass('d-none');

                var datos_lista_tipos_documentos = {
                    '_token': token,
                    'evento': id_evento,
                    'servicio': id_servicio,
                    'parametro':"docs_complementarios",
                    'tipo_correspondencia': 43,
                };
            break;
            case 'Otro/¿Cual?':
                // $("#tipo_guia").text('Otro/¿Cual?');
                $("#tipo_guia").text('Entidad conocimiento');
                $('#listado_documentos_ed tr[id^="fila_doc_"]').not('#fila_doc_43').addClass('d-none');

                var datos_lista_tipos_documentos = {
                    '_token': token,
                    'evento': id_evento,
                    'servicio': id_servicio,
                    'parametro':"docs_complementarios",
                    'tipo_correspondencia': 43,
                };
            break;
            default:
            break;
        }

        return datos_lista_tipos_documentos;
    }

    function cleanModalCorrespondencia(){
        $("#btn_guardar_actualizar_correspondencia").val('Guardar');
        $("#btn_guardar_actualizar_correspondencia").removeClass("descarga-deshabilitada");

        correspondencia_array = [];
        $("#modalCorrespondencia #check_principal").prop('checked', false).prop('disabled', true).prop('required', true);
        $("#modalCorrespondencia #check_copia").prop('checked', false).prop('disabled', false).prop('required', true);
        $('#state_notificacion').val('').trigger('change');
        $("#modalCorrespondencia #tipo_correspondencia").val('');
        $("#modalCorrespondencia #n_orden").val('');
        $("#modalCorrespondencia #nombre_destinatario").val('');
        $("#modalCorrespondencia #direccion").val('');
        $("#modalCorrespondencia #departamento").val('');
        $("#modalCorrespondencia #ciudad").val('');
        $("#modalCorrespondencia #telefono").val('');
        $("#modalCorrespondencia #email").val('');
        $("#modalCorrespondencia #m_notificacion").val('');
        $("#modalCorrespondencia #folios").val('');
        $("#modalCorrespondencia #n_guia").val('');
        $("#modalCorrespondencia #f_envio").val('');
        $("#modalCorrespondencia #f_notificacion").val('');
        $("#modalCorrespondencia #state_notificacion").val('');
        $("#modalCorrespondencia #id_correspondencia").val('');
        $("#modalCorrespondencia #id_asignacion").val('');
        $("#modalCorrespondencia #id_proceso").val('');
        $("#modalCorrespondencia #id_comunicado").val('');
        $("#modalCorrespondencia #id_destinatario").val('');
    }

    function cargarSelectorModalCorrespondencia(){
        //Listado de opciones de estado de notificación Correspondencia
        let selectores_notificacion_correspondencia = {
            '_token': $('input[name=_token]').val(),
            'parametro': 'EstadosNotificacionCorrespondencia'
        }
        $.ajax({
            type: 'POST',
            url: '/selectoresJuntas',
            data: selectores_notificacion_correspondencia,
            beforeSend:  function() {
                $("#btn_guardar_actualizar_correspondencia").addClass("descarga-deshabilitada");
            },
            success: function (data) {
                let optionSelected = data.find(finder => finder.Id_Parametro === 362);
                $("#modalCorrespondencia #state_notificacion").val(optionSelected?.Id_Parametro);
                $('#state_notificacion').empty();
                $('#state_notificacion').append('<option value="'+optionSelected?.Id_Parametro+'" selected>'+optionSelected?.Nombre_parametro+'</option>');
                let SelectorModalCorrespondencia = $('select[name=state_notificacion]').val();
                let formaenviogenerarcomunicado = Object.keys(data);
                for (let i = 0; i < formaenviogenerarcomunicado.length; i++) {
                    if (data[formaenviogenerarcomunicado[i]]['Id_Parametro'] != SelectorModalCorrespondencia) {
                        $('#state_notificacion').append('<option value="'+data[formaenviogenerarcomunicado[i]]['Id_Parametro']+'">'+data[formaenviogenerarcomunicado[i]]['Nombre_parametro']+'</option>');
                    }                
                }                                     
            },
            complete: function(){
                $("#btn_guardar_actualizar_correspondencia").removeClass("descarga-deshabilitada");
            }
        });
    }
    let correspondencia_array = [];
    $(document).on('click', "#CorrespondenciaNotificacion", async function() {
        //Reestablecer modal
        cleanModalCorrespondencia();
        //Cargar selectores modal con Pendiente como valor por defecto
        cargarSelectorModalCorrespondencia();
        //Capturar información
        let id = $(this);
        let token = $('input[name=_token]').val(); 
        let tipo_correspondencia = $(id).data('tipo_correspondencia');
        let idComunicado = $(id).data('id_comunicado');
        let N_radicado = $(id).data('n_radicado');
        let destinatarioPrincipal = $(id).data("destinatario_principal");
        let copias = $(id).data("copias");
        let id_evento = $(id).data('id_evento');
        let id_proceso = $(id).data('id_proceso');
        let id_asignacion = $(id).data('id_asignacion');
        let anexos = $(id).data('anexos');
        let correspondencia = $(id).data('correspondencia');
        let id_entidad_conocimiento = $(id).data('id_entidad_conocimiento');
        let tipo_entidad_conocimiento = $(id).data('tipo_entidad_conocimiento');
        let nombre_entidad_conocimiento = $(id).data('nombre_entidad_conocimiento');
        // Debido a los ajustes en la PBS092 es necesario castear la variable de correspondencia a tipo string siempre y cuando esta tenga algun valor
        correspondencia = correspondencia?.toString()
        //Si existe el id_entidad_conocimiento se castea a string ya que la mayoria de validaciones estan sobre una cadena de tipo string 
        id_entidad_conocimiento = id_entidad_conocimiento?.toString();
        //Tipo de comunicado si fue cargado manualmente o es generado por Sigmel
        let tipo_descarga = $(id).data('tipo_descarga');
        let id_destinatario = retornarIdDestinatario($(id).data('ids_destinatario'),tipo_correspondencia);
        //Se consultan las correspondencias que fueron guardadas como no notificados por medio de cargue masivo, los cuales deben salir en negrilla
        let correspondencias_guardadas = await consultarRegistroPorIdDestinatario(id_destinatario);
        //Ya que en un principio las copias llegan en un string se separan por , y se les elimina los espacios en blancos para poder comparar 
        copias = copias ? copias.split(',').map(copia => copia.trim()) : copias;
        //Desactiva el formulario en caso de que la correspodencia este inactiva.
        if($(id).data("estado_correspondencia") != 1){
            $("#btn_guardar_actualizar_correspondencia").addClass('d-none');
            $("#form_correspondencia *").prop('disabled',true);
            $("#cerar_modalCorrespondencia").prop('disabled',false);
        }else{
            $("#btn_guardar_actualizar_correspondencia").removeClass('d-none');
        }

        let estado_general = $("#status_notificacion_" + N_radicado).find(":selected").text();
        if((estado_general == 'Notificado efectivamente' || estado_general == 'Devuelto' || estado_general == 'No notificar') 
            && ($(id).data("estado_correspondencia") == 0 || $(id).data("estado_correspondencia") == 1 )){

            $(".alerta_advertencia").removeClass('d-none');
            $(".alerta_advertencia").empty();
            $(".alerta_advertencia").append(`La correspondencia no se puede guardar y/o actualizar ya que el estado del comunicado es <strong>${estado_general}</strong>,por favor cambielo para poder editar la correspondencia.`)
            $("#btn_guardar_actualizar_correspondencia").addClass('d-none');
        
         setTimeout(function(){
            $(".alerta_advertencia").addClass('d-none');
            $(".alerta_advertencia").empty();
        },3000); 
        }else{
             $("#btn_guardar_actualizar_correspondencia").removeClass('d-none');
             $(".alerta_advertencia").empty();
             $(".alerta_advertencia").addClass('d-none');
         }

        //Información superior del modal 
        if(tipo_descarga === 'Manual' || tipo_descarga === 'Dictamen'){
            $("#modalCorrespondencia #nombre_afiliado").val($("#nombre_afiliado").val());
            if($("#nro_identificacion").val()){
                $("#modalCorrespondencia #n_identificacion").val($("#nro_identificacion").val());
            }
            else if($("#identificacion").val()){
                $("#modalCorrespondencia #n_identificacion").val($("#identificacion").val());
            }
        }
        else{
            $("#modalCorrespondencia #nombre_afiliado").val($(id).data('nombre_afiliado'));
            $("#modalCorrespondencia #n_identificacion").val($(id).data('numero_identificacion'));
        }
        
        $("#modalCorrespondencia #id_destinatario").val(id_destinatario);
        $("#modalCorrespondencia #id_evento").val($(id).data('id_evento'));
        $("#modalCorrespondencia #enlace_ed_evento").text($(id).data('id_evento'));
        
        if(tipo_descarga === 'Manual'){
            $("#modalCorrespondencia #check_principal").prop('checked', false);
            $("#modalCorrespondencia #check_principal").prop('disabled', false);
            $("#modalCorrespondencia #check_copia").prop('disabled', false);
            $("#modalCorrespondencia #check_copia").prop('checked', false);
        }
        if(correspondencia && correspondencia.length >0){
            array_temp = correspondencia.split(",").map(item => item.trim().toString());
            correspondencia_array = array_temp;
        }
        $("#modalCorrespondencia #tipo_correspondencia").val(tipo_correspondencia);
        $("#modalCorrespondencia #id_entidad_conocimiento").val(id_entidad_conocimiento);
        $("#modalCorrespondencia #tipo_entidad_conocimiento").val(tipo_entidad_conocimiento);
        $("#modalCorrespondencia #id_asignacion").val(id_asignacion);
        $("#modalCorrespondencia #id_proceso").val(id_proceso);
        $("#modalCorrespondencia #id_comunicado").val(idComunicado);
        flag_saved = false;
        if(correspondencia_array.includes(tipo_correspondencia) || correspondencias_guardadas === tipo_correspondencia){
            flag_saved = true;
        }
        if(flag_saved){
            data_comunicado = {
                _token: token,
                id_comunicado: idComunicado,
                id_evento: id_evento,
                id_asignacion: id_asignacion,
                id_proceso: id_proceso,
                tipo_correspondencia: tipo_correspondencia,
                id_entidad_conocimiento: id_entidad_conocimiento,
                previous_saved: flag_saved 
            }
            
            $.ajax({
                type:'POST',
                url:'/getInformacionCorrespondencia',
                data: data_comunicado,
                beforeSend:  function() {
                    showLoading();
                },
                success: function(response){
                    if(response && response[0]){
                        $("#btn_guardar_actualizar_correspondencia").val('Actualizar');

                        $("#modalCorrespondencia #n_orden").val(response[0]?.N_orden);
                        $("#modalCorrespondencia #nombre_destinatario").val(response[0]?.Nombre_destinatario);
                        $("#modalCorrespondencia #direccion").val(response[0]?.Direccion_destinatario);
                        $("#modalCorrespondencia #departamento").val(response[0]?.Departamento);
                        $("#modalCorrespondencia #ciudad").val(response[0]?.Ciudad);
                        $("#modalCorrespondencia #telefono").val(response[0]?.Telefono_destinatario);
                        $("#modalCorrespondencia #email").val(response[0]?.Email_destinatario);
                        $("#modalCorrespondencia #m_notificacion").val(response[0]?.Medio_notificacion);
                        $("#modalCorrespondencia #folios").val(response[0]?.Folios);
                        $("#modalCorrespondencia #radicado").val(response[0]?.N_radicado);
                        if(!response[0]?.Tipo_correspondencia.startsWith('afp_conocimiento')){
                            $("#modalCorrespondencia .modal-title").text('Correspondencia ' + response[0]?.Tipo_correspondencia);
                        }else{
                            $("#modalCorrespondencia .modal-title").text('Correspondencia ' + tipo_entidad_conocimiento+' - '+nombre_entidad_conocimiento);
                        }
                        $("#modalCorrespondencia #n_guia").val(response[0]?.N_guia);
                        $("#modalCorrespondencia #f_envio").val(response[0]?.F_envio);
                        $("#modalCorrespondencia #f_notificacion").val(response[0]?.F_notificacion);
                        $("#modalCorrespondencia #state_notificacion").val(response[0]?.Id_Estado_corresp);
                        $("#modalCorrespondencia #id_correspondencia").val(response[0]?.Id_Correspondencia);
                        
                        if(response[0]?.Tipo_destinatario){
                            if(response[0]?.Tipo_destinatario === $('#modalCorrespondencia #check_principal').val()){
                                if(tipo_descarga != 'Manual'){
                                    $("#modalCorrespondencia #check_principal").prop('checked', true);
                                    $("#modalCorrespondencia #check_copia").prop('disabled', true);
                                    $("#modalCorrespondencia #check_copia").prop('required', false);
                                }
                                else{
                                    $("#modalCorrespondencia #check_principal").prop('checked', true);
                                    $("#modalCorrespondencia #check_principal").prop('disabled', false);
                                    $("#modalCorrespondencia #check_copia").prop('disabled', true);
                                    $("#modalCorrespondencia #check_copia").prop('required', false);
                                }
                                
                            }
                            else if(response[0]?.Tipo_destinatario === $('#modalCorrespondencia #check_copia').val()){
                                
                                if(tipo_descarga != 'Manual'){
                                    $("#modalCorrespondencia #check_copia").prop('checked', true);
                                    $("#modalCorrespondencia #check_copia").prop('disabled', true);
                                    $("#modalCorrespondencia #check_principal").prop('required', false);
                                }
                                else{
                                    $("#modalCorrespondencia #check_copia").prop('checked', true);
                                    $("#modalCorrespondencia #check_principal").prop('disabled', true);
                                    $("#modalCorrespondencia #check_principal").prop('required', false);
                                    $("#modalCorrespondencia #check_copia").prop('disabled', false);
                                }
                            } 
                        }
                        let selectores_notificacion_correspondencia = {
                            '_token': $('input[name=_token]').val(),
                            'parametro': 'EstadosNotificacionCorrespondencia'
                        }
                        $.ajax({
                            type: 'POST',
                            url: '/selectoresJuntas',
                            data: selectores_notificacion_correspondencia,
                            beforeSend:  function() {
                                $("#btn_guardar_actualizar_correspondencia").addClass("descarga-deshabilitada");
                            },
                            success: function (data) {
                                let optionSelected = data.find(finder => finder.Id_Parametro === response[0]?.Id_Estado_corresp);
                                $('#state_notificacion').empty();
                                $('#state_notificacion').append('<option value="'+response[0]?.Id_Estado_corresp+'" selected>'+optionSelected?.Nombre_parametro+'</option>');
                                let SelectorModalCorrespondencia = $('select[name=state_notificacion]').val();
                                let formaenviogenerarcomunicado = Object.keys(data);
                                for (let i = 0; i < formaenviogenerarcomunicado.length; i++) {
                                    if (data[formaenviogenerarcomunicado[i]]['Id_Parametro'] != SelectorModalCorrespondencia) {
                                        $('#state_notificacion').append('<option value="'+data[formaenviogenerarcomunicado[i]]['Id_Parametro']+'">'+data[formaenviogenerarcomunicado[i]]['Nombre_parametro']+'</option>');
                                    }                
                                }
                            },
                            complete: function(){
                                // $("#state_notificacion").select2({
                                //     placeholder: "Selecione una opcion",
                                //     allowClear: false,
                                // })
                                $("#btn_guardar_actualizar_correspondencia").removeClass("descarga-deshabilitada");
                            }
                        });
                    }
                },
                error: function (error) {
                    console.error('Ha ocurrido un error:', error);
                },
                complete: function(){
                    hideLoading();
                }
            });
        }
        else{
            data_comunicado = {
                _token: token,
                id_comunicado: idComunicado,
                id_evento: id_evento,
                id_asignacion: id_asignacion,
                id_proceso: id_proceso,
                tipo_correspondencia: tipo_correspondencia,
                id_entidad_conocimiento: id_entidad_conocimiento,
                previous_saved: flag_saved
            }
            
            $.ajax({
                type:'POST',
                url:'/getInformacionCorrespondencia',
                data: data_comunicado,
                beforeSend:  function() {
                    showLoading();
                },
                success: function(response){
                    if(response && response.datos){
                        $("#modalCorrespondencia #n_orden").val(response?.nro_orden);
                        $("#modalCorrespondencia #nombre_destinatario").val(response?.datos?.Nombre_destinatario);
                        $("#modalCorrespondencia #direccion").val(response?.datos?.Direccion_destinatario);
                        $("#modalCorrespondencia #departamento").val(response?.datos?.Departamento_destinatario);
                        $("#modalCorrespondencia #ciudad").val(response?.datos?.Ciudad_destinatario);
                        $("#modalCorrespondencia #telefono").val(response?.datos?.Telefono_destinatario);
                        $("#modalCorrespondencia #email").val(response?.datos?.Email_destinatario);
                        $("#modalCorrespondencia #m_notificacion").val(response?.datos?.Medio_notificacion_destinatario);
                        $("#modalCorrespondencia #folios").val(anexos);
                        if(!tipo_correspondencia.startsWith('afp_conocimiento')){
                            $("#modalCorrespondencia .modal-title").text('Correspondencia ' + tipo_correspondencia);
                        }else{
                            $("#modalCorrespondencia .modal-title").text('Correspondencia ' + tipo_entidad_conocimiento+' - '+nombre_entidad_conocimiento);
                        }
                        $("#modalCorrespondencia #radicado").val(N_radicado);
                        
                        if(tipo_descarga != 'Manual' && tipo_correspondencia.toLowerCase() === destinatarioPrincipal.toLowerCase()){
                            $("#modalCorrespondencia #check_principal").prop('checked', true);
                            $("#modalCorrespondencia #check_copia").prop('disabled', true);
                            $("#modalCorrespondencia #check_copia").prop('required', false);
                        }
                        else if(tipo_descarga != 'Manual' && tipo_correspondencia.toLowerCase() !== destinatarioPrincipal.toLowerCase() && Array.isArray(copias) && copias?.some(copia => copia.toLowerCase() === tipo_correspondencia.toLowerCase())){
                            $("#modalCorrespondencia #check_copia").prop('checked', true);
                            $("#modalCorrespondencia #check_copia").prop('disabled', true);
                            $("#modalCorrespondencia #check_principal").prop('required', false);
                        }
                    }
                },
                error: function (error) {
                    console.error('Ha ocurrido un error:', error);
                },
                complete: function(){
                    hideLoading();
                }
            });
        }
        // Mostrar la modal
        // $("#modalCorrespondencia").show();

        //Eventos checkbox principal
        $("#check_principal").change(function() {
            if ($(this).is(':checked')) {
                $("#check_copia").prop('disabled', true).prop('required', false);
            } else {
                $("#check_copia").prop('disabled', false).prop('required', true);
            }
        });
        //Eventos checkbox copia
        $("#check_copia").change(function() {
            if ($(this).is(':checked')) {
                $("#check_principal").prop('disabled', true).prop('required', false);
            } 
            else if(tipo_descarga == 'Manual') {
                $("#check_principal").prop('disabled', false).prop('required', true);
            }
            else{
                $("#check_principal").prop('disabled', true).prop('required', true);
            }
        });
    });

    $('#form_correspondencia').submit(function (e) {
        e.preventDefault();
        let token = $('input[name=_token]').val(); 
        let tipo_correspondencia = $('#modalCorrespondencia #tipo_correspondencia').val();
        let id_entidad_conocimiento = $('#modalCorrespondencia #id_entidad_conocimiento').val();
        if (!correspondencia_array.includes(tipo_correspondencia)) {
            correspondencia_array.push(tipo_correspondencia);
        }
        tipoDestinatario = null;
        if($('#check_principal').is(':checked')){
            tipoDestinatario = $('#modalCorrespondencia #check_principal').val();
            $("#modalCorrespondencia #check_principal").prop('required', false);
        }
        else if($('#check_copia').is(':checked')){
            tipoDestinatario = $('#modalCorrespondencia #check_copia').val();
        }
        else{
            tipoDestinatario = null;
        }
        datos_correspondencia = {
            '_token': token,
            'correspondencia': correspondencia_array,
            'nombre_afiliado': $('#modalCorrespondencia #nombre_afiliado').val(),
            'n_identificacion_afiliado': $('#modalCorrespondencia #n_identificacion').val(),
            'id_asignacion': $('#modalCorrespondencia #id_asignacion').val(),
            'id_proceso': $('#modalCorrespondencia #id_proceso').val(),
            'id_evento': $('#modalCorrespondencia #id_evento').val(),
            'id_comunicado': $('#modalCorrespondencia #id_comunicado').val(),
            'id_destinatario': $('#modalCorrespondencia #id_destinatario').val(),
            'n_radicado': $('#modalCorrespondencia #radicado').val(),
            'n_orden': $('#modalCorrespondencia #n_orden').val(),
            'tipo_destinatario': tipoDestinatario,
            'nombre_destinatario': $('#modalCorrespondencia #nombre_destinatario').val(),
            'direccion_destinatario': $('#modalCorrespondencia #direccion').val(),
            'departamento_destinatario': $('#modalCorrespondencia #departamento').val(),
            'ciudad_destinatario': $('#modalCorrespondencia #ciudad').val(),
            'telefono_destinatario': $('#modalCorrespondencia #telefono').val(),
            'email_destinatario': $('#modalCorrespondencia #email').val(),
            'medio_notificacion_destinatario': $('#modalCorrespondencia #m_notificacion').val(),
            'n_guia': $('#modalCorrespondencia #n_guia').val(),
            'folios': $('#modalCorrespondencia #folios').val(),
            'fecha_envio': $('#modalCorrespondencia #f_envio').val(),
            'fecha_notificacion': $('#modalCorrespondencia #f_notificacion').val(),
            'estado_notificacion': $('#modalCorrespondencia #state_notificacion').val(),
            'tipo_correspondencia': tipo_correspondencia,
            'id_entidad_conocimiento': id_entidad_conocimiento,
            'tipo_entidad_conocimiento': $("#modalCorrespondencia #tipo_entidad_conocimiento").val(),
            'id_correspondencia': $('#modalCorrespondencia #id_correspondencia').val(),
            'id_destinatario':$("#modalCorrespondencia #id_destinatario").val(),
            'accion': $('#btn_guardar_actualizar_correspondencia').val()
        };
        $.ajax({    
            type:'POST',
            url:'/guardarInformacionCorrespondencia',
            data: datos_correspondencia,
            beforeSend:  function() {
                $("#btn_guardar_actualizar_correspondencia").addClass("descarga-deshabilitada");
                showLoading();
            },
            success: function(response){
                if (response.parametro == 'agregar_correspondencia') {
                    $('.alerta_correspondencia').removeClass('d-none');
                    $('.alerta_correspondencia').append('<strong>'+response.mensaje+'</strong>');
                    setTimeout(function(){
                        $('.alerta_correspondencia').addClass('d-none');
                        $('.alerta_correspondencia').empty();
                        localStorage.setItem("#Generar_comunicados", true);
                        location.reload(0);
                    }, 3000);
                }
            },
            error: function (error) {
                $('.alerta_error').removeClass('d-none');
                $('.alerta_error').append('<strong> Ha ocurrido un error al momento de guardar la correspondencia.</strong>');
                setTimeout(function(){
                    $('.alerta_error').addClass('d-none');
                    $('.alerta_error').empty();
                }, 3000);
            },
            complete: function(){
                // $("#btn_guardar_actualizar_correspondencia").removeClass("descarga-deshabilitada");
                hideLoading();
            }
        });
    });


function notificaciones_advance() {

    $.ajax({
        url: 'notificaciones_advance',
        method: 'GET',
        data: {
            //_token: $('input[name=_token]').val(),
            id_asignacion:  $("#newId_asignacion").val()
        },
        success: function (respuesta) {
            respuesta.forEach(function (item, index) {
                var estado = item.Estado_Ejecucion || '';
                var esError = estado.toLowerCase() === 'errado';
                console.log(estado);
                var colorClass = esError ? 'bg-danger text-white' : (estado == 'pendiente' ? 'bg-warning text-white' : 'bg-success text-white');
                var iconClass = esError ? 'fas fa-times-circle' : (estado == 'pendiente' ? 'fas fa-info-circle' : 'fas fa-check-circle');
                var mensajePrincipal = esError
                    ? 'Ocurrió un error durante la integración con Advance.'
                    : (estado == 'pendiente' ? 'Se ha ejecutado una accion con un estado de firmeza, en un momento se realizara un registro en  advance.' : 'Se ha registrado información correctamente en Advance.' ) ;

                let cuerpo_mensaje =`
                    <div class='row' style="font-size: 0.9em;">
                        <div class='col-md-6'>
                            <div><strong>Firmeza:</strong> ${item.Acta_firmeza}</div>
                            <div><strong>Dictamen en firme:</strong> ${item.Dictamen_firme ?? ''}</div>
                            <div><strong>Fecha de integración:</strong> ${item.Fecha_Ejecucion}</div>
                        </div>
                        <div class='col-md-6'>
                            <div><strong>Respuesta:</strong> ${mensajePrincipal}</div>
                        </div>
                    </div>`;
                
                /*var toastHTML = `
                    <div class="toast" id="${toastId}" style="position: fixed; bottom: ${20 + (index * 100)}px; left: 20px; z-index: 1055;" role="alert" aria-live="assertive" aria-atomic="true" data-delay="100000">
                        <div class="toast-header ${colorClass}">
                        <i class="${iconClass} mr-2"></i>
                        <strong class="mr-auto">Notificación - Advance</strong>
                        <small>Hace un momento</small>
                        <button type="button" class="ml-2 mb-1 close text-white" data-dismiss="toast" aria-label="Cerrar">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        <div class="toast-body" style="line-height: 1.5;">
                        <p class="mb-2"><i class="fas fa-info-circle mr-1"></i> ${mensajePrincipal}</p>

                        </div>
                    </div>
                    `;*/
                
                $("#estado_ejecucion").val(estado);    
                $("#alerta_advance, #contenedor_alerta_advance").removeClass('d-none bg-danger bg-warning bg-success');
                $("#titulo_alerta_advance").html(`<i class='${iconClass}'></i> Advance`);
                $("#contenedor_alerta_advance").addClass(colorClass);
                $("#cuerpo_alerta_advance").html(cuerpo_mensaje);
            });

            /*let idsAsignacion = respuesta.length > 0
                ? respuesta.map(registro => registro.ID_Asignacion)
                : '';

            if (estado == 'pendiente') {
                setTimeout(() => {
                    $.ajax({
                        url: '/finalizar_notificacion',
                        method: 'POST',
                        data: {
                            _token: $('input[name=_token]').val(),
                            ids: idsAsignacion
                        },
                        success: function (e) {
                            console.log('Notificaciones finalizadas');
                        }
                    });
                }, 4000);
            }*/
        },
        error: function (xhr, status, error) {
            console.error('Error en la petición:', error);
        }
    });

}