<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <style>        
        @page{
            /* arriba  derecha  abajo  izquierda */
            margin: 3cm 1.3cm 2.5cm 1.3cm;
            counter-increment: page;
        }
        body {
            font-family: sans-serif;
            font-size: 12px;
        }
        #header {
            position: fixed; 
            /* esta ligado con el primer valor del margin */
            top: -2.2cm;
            left: 0cm;
            width: 100%;
            /* height: 100px; */
            text-align: right; 
            /* background: green; */
        }
        .logo_header{
            max-width: 30%;
            height: auto;
            max-height: 60px; 
        }  
        #footer{
            position: fixed;
            /* esta ligado con el tercer valor del margin  bottom: -2.4cm;*/
            bottom: -2.4cm;
            left: 0cm;
            width: 100%;
            height: 10%;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            align-items: center; 
            font-family: sans-serif;
        }
        #footer .page{
            text-align: center;
        }
        .footer_image{
            max-width: 100%;
            width: 100%;
            max-height: 100;
            margin-bottom: -5px;
        }
        .footer_content {
            position: relative;
            text-align: center;
        }

        #footer .page:after { content: "Página " counter(page) " de " counter(pages); }

        #footer2 { 
            position: fixed; 
            left: 20px; 
            right: 0px; 
            width: 0px; 
            height: 0px; 
            color:black; 
            background-color: white; 
            transform: rotate(0deg); 
            top:450px;
        }
        .logo_footer{
            width: auto;
            height: 150px;
        }
        .tabla_footer{
            width: 100%;
            font-family: sf-pro-display-black, sans-serif;
            font-size: 12px;
        }
        
        .color_letras_alfa{
            color: #184F56;
            font-weight: bold;
        }
        .negrita{
            font-weight: bold;
        }
        .fuente_todo_texto{
            font-family: sans-serif;
            font-size: 12px;
        }
        .fuente_todo_texto_formulario1{
            font-family: sans-serif;
            font-size: 11px;
        }
        .paddingTexto{
            margin: 0;
            padding: 0;
        }
        .tabla1{
            width: 80%;
            margin-left: -3.5px;
        }
        .tabla2{
            width: 100%;
            margin-left: -3.5px;
        }
        section{
            text-align: justify;
        }
        .container{
            margin-top: -0.5cm;
            margin-left: 1.5cm;
            margin-right: 1.5cm;
        }
        .radicado{
            position: relative;
        }
        .page_break{
            page-break-before: always;
        }
        .cuadro{
            border: 2px solid black;
            width: 4cm;
            padding: 1px;
            height: auto;
        }       
        .fuente_cuadro_inferior{
            font-family: sans-serif;
            font-size: 10px;
            margin: 0;
            padding: 0;
        }
        .derecha{
            float: right;
        }

        .izquierda{
            float: left;
        }

        .copias{
            font-size: 10px;
            font-style: italic;
        }
        .firma > *{
            display: block;
            margin-top: 10px;
            margin-bottom: 12px;
        }
        .tabla2 {
            display:block; 
        }
        .tabla_cuerpo {
            font-family: sans-serif;
            text-align: center;
            width: 100%;
            table-layout: fixed; 
            border-collapse: collapse;
        }

        .tabla_cuerpo, .tabla_cuerpo td, .tabla_cuerpo th {
            border: 1px solid black;
            border-collapse: collapse;
        }
        .th_cuerpo{
            background-color: #F1F1F1;
        }       
        .qr_proteccion{
            width: auto;
            height: 150px;
            padding-left: 200px;
        }

        .justificarUl{
            padding-right: 5px;
        }
        .titulob1{
            text-align: center;
            font-weight: bold;
            font-family: sans-serif;
            font-size: 11px;
        }
        .titulosb1{
            text-align: center;                                  
            font-weight: bold;
            font-family: sans-serif;
            font-size: 11px;
            background-color: #e7e6e6;
        }
        .tabla_dato_entidad, .tabla_dato_entidad td,{
            width: 100%;
            /* border: 1px solid black;
            border-collapse: collapse; */
        }

        ol.lista-exponencial {
            counter-reset: list-counter;
            padding-left: 25px;
            font-family: sans-serif;
            font-size: 9px;
        }

        ol.lista-exponencial li {
            list-style: none;
            position: relative;
            padding-left: 7px;
        }

        ol.lista-exponencial li:before {
            content: counter(list-counter) " ";
            counter-increment: list-counter;
            position: absolute;
            left: 0;
            top: 8;
            font-size: 0.8em;
            vertical-align: super;
            font-weight: bold;
        }

        .decreto1072 {
            font-size: 0.7em; 
            position: relative; 
            top: -0.3em;
        }

        .cursiva {
            font-size: 12px;
            font-style: italic;
        }
        

    </style>
</head>
<body>
    <div id="header">
        <?php if($logo_header == "Sin logo"): ?>
            <p>No logo</p>
        <?php else: ?>
            <?php 
                $ruta_logo = "/logos_clientes/{$id_cliente}/{$logo_header}";
                $imagenPath_header = public_path($ruta_logo);
                $imagenData_header = file_get_contents($imagenPath_header);
                $imagenBase64_header = base64_encode($imagenData_header);
            ?>
            <img src="data:image/png;base64,{{ $imagenBase64_header }}" class="logo_header">
        <?php endif ?>
    </div>    
    <div id="footer">        
        <?php if($footer == null): ?>
            <div style="text-align:center;">
                <span style="color: #3C3C3C; margin-top:2px;">{{$Nombre_footer}} - {{$Tipo_documento_footer}} {{$Numero_documento_footer}} - SINIESTRO: {{$N_siniestro}} </span>
            </div>        
        <?php else: ?>
            <?php 
                $ruta_footer = "/footer_clientes/{$id_cliente}/{$footer}";
                $footer_path = public_path($ruta_footer);
                $footer_data = file_get_contents($footer_path);
                $footer_base64 = base64_encode($footer_data);
            ?>
            <div class="footer_content" style="text-align:center;">
                <span style="position: absolute; width: 100%; text-align:center; top: 10px; left:0px; color:#4D4D4D; font-weight:bold; font-size: 11px;">
                    {{$Nombre_footer}} - {{$Tipo_documento_footer}} {{$Numero_documento_footer}} - SINIESTRO: {{$N_siniestro}}                     
                </span>
                <img src="data:image/png;base64,{{ $footer_base64 }}" class="footer_image" style="display: block;">
            </div>
        <?php endif ?>
    </div>
    <div id="footer2">
        @php
            $imagenPath_footer = public_path('/images/logos_preformas/vigilado.png');
            $imagenData_footer = file_get_contents($imagenPath_footer);
            $imagenBase64_footer = base64_encode($imagenData_footer);
        @endphp
        <img src="data:image/png;base64,{{ $imagenBase64_footer }}" class="logo_footer">
    </div>
    <div class="container">        
        <p class="fuente_todo_texto_formulario1 derecha fecha_comunicado">
            <span class="negrita">{{$ciudad_comunicado_act}}, {{$fecha}}</span>
        </p>
        <div class="tabla2" style="margin-top: 30px;">
            <span class="fuente_todo_texto">Señores: <br><strong>{{$nombre_destinatario_principal}}</strong></span><br>
            <span class="fuente_todo_texto">{{$email_destinatario_principal}}</span><br>
            <span class="fuente_todo_texto">{{$direccion_destinatario_principal}}</span><br>
            <span class="fuente_todo_texto">Tel. {{$telefono_destinatario_principal}}</span><br>
            @if($ciudad_principal == "Bogota D.C.")
                <span class="fuente_todo_texto">{{$ciudad_principal}}</span>
            @else
                <span class="fuente_todo_texto">{{$ciudad_principal}} - {{$departamento_principal}}</span>
            @endif
            
        </div>
        <br><br>
        <div style="float: right;text-align: right; width:97%; margin-top:30px; margin-bottom:30px;">
            <div class="col-6">
                <span class="fuente_todo_texto"><span class="negrita">Asunto: <?php echo $asunto;?></span></span>  
                @if ($tipo_afiliado == 27)
                    <br>
                    <span class="fuente_todo_texto">CASO DEL (LA) SEÑOR(A) <span class="negrita"><?php echo $nombre_beneficiario.' '.$tipo_documentos_benefi.' '.$nro_identificacion_benefi;?></span></span><br>
                    <span class="fuente_todo_texto">Afiliado(a) <span class="negrita"><?php echo $Nombre_afiliado_benefi.' '.$Tipo_documento_afiliado_benefi.' '.$Nro_identificacion_benefi;?></span></span>
                @elseif($tipo_afiliado == 26 || $tipo_afiliado == 28 || $tipo_afiliado == 29)
                    <br>
                    <span class="fuente_todo_texto">CASO DEL (LA) SEÑOR(A) <span class="negrita"><?php echo $nombre_beneficiario.' '.$tipo_documentos_benefi.' '.$nro_identificacion_benefi;?></span></span>
                @endif              
            </div>
        </div>        
        <section class="fuente_todo_texto" style="margin-bottom: 2em; text-align: justify;">                       
            <?php 
                $patron1 = '/\{\{\$tipo_documento_afiliado\}\}/';
                $patron2 = '/\{\{\$documento_afiliado\}\}/';
                $patron3 = '/\{\{\$nombre_afiliado\}\}/';
                $patron4 = '/\{\{\$num_dictamen_controvertido\}\}/';                   
                
                if (preg_match($patron1,$cuerpo) && preg_match($patron2,$cuerpo) && preg_match($patron3,$cuerpo)
                    && preg_match($patron4,$cuerpo)
                ) {
                    $texto_modificado = str_replace('{{$tipo_documento_afiliado}}', $tipo_documentos_benefi, $cuerpo);
                    $texto_modificado = str_replace('{{$documento_afiliado}}', $nro_identificacion_benefi, $texto_modificado);
                    $texto_modificado = str_replace('{{$nombre_afiliado}}', $nombre_beneficiario, $texto_modificado);
                    $texto_modificado = str_replace('{{$num_dictamen_controvertido}}', $num_dictamen_controvertido, $texto_modificado);
                    $cuerpo = $texto_modificado;
                } else {
                    $cuerpo = "";
                }
                
                print_r($cuerpo);
            ?>
        </section>
        <br><br>
        <div class="fuente_todo_texto firma">
            <span>Cordialmente,</span><br>
            <span><strong>PROTECCIÓN S.A.</strong></span>
        </div>
        <br><br>
        <section class="fuente_todo_texto">
            <table class="tabla1" style="text-align: justify;">                               
                @if (count($Agregar_copia) > 0)
                    <tr>
                        <td class="justificado copias"><span class="negrita">Copia:</span></td>                            
                    </tr>
                    <?php 
                        $Afiliado = 'Afiliado';
                        $Empleador = 'Empleador';
                        $EPS = 'EPS';
                        $AFP = 'AFP';
                        $ARL = 'ARL';
                        $JRCI = 'JRCI';
                        $JNCI = 'JNCI';
                        $AFP_Conocimiento = 'AFP_Conocimiento';
                    ?>
                    <?php
                        if (isset($Agregar_copia[$Afiliado])) { ?>
                                <tr>
                                    <td class="copias">
                                        <span class="negrita">Afiliado: </span><?=$Agregar_copia['Afiliado'];?>
                                    </td>
                                </tr>
                            <?php       
                        }
                    ?>
                    <?php 
                        if (isset($Agregar_copia[$Empleador])) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">Empleador: </span><?=$Agregar_copia['Empleador'];?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php 
                        if (isset($Agregar_copia[$EPS])) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">EPS: </span><?=$Agregar_copia['EPS'];?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php 
                        if (isset($Agregar_copia[$AFP])) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">AFP: </span><?=$Agregar_copia['AFP'];?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php 
                        if (isset($Agregar_copia[$ARL])) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">ARL: </span><?=$Agregar_copia['ARL'];?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php 
                        if (isset($Agregar_copia[$JRCI])) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">JRCI: </span><?=$Agregar_copia['JRCI'];?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php 
                        if (isset($Agregar_copia[$JNCI])) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">JNCI: </span><?=$Agregar_copia['JNCI'];?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>                    
                    <?php 
                        if (isset($Agregar_copia[$AFP_Conocimiento])) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">AFP Conocimiento: </span><?=$Agregar_copia['AFP_Conocimiento'];?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                @endif
            </table>
        </section>
        <br>
        <br>
        <br>
        <div class="radicado">
            <div class="cuadro fuente_cuadro_inferior" style="margin: 0 auto">
                <span class="fuente_cuadro_inferior"><span class="negrita">Nro. Radicado: <br>{{$nro_radicado}}</span></span><br>
                <span class="fuente_cuadro_inferior"><span class="negrita">{{$tipo_documentos_benefi}} {{$nro_identificacion_benefi}}</span></span><br>
                <span class="fuente_cuadro_inferior"><span class="negrita">Siniestro: {{$N_siniestro}}</span></span><br>
            </div>
        </div>        
    </div>        
<script type="text/php">
    if ( isset($pdf) ) {
        $pdf->page_script('
            $font = $fontMetrics->get_font("microsoft-new-tai-lue", "normal");
            $pdf->text(520, 825, "Página $PAGE_NUM de $PAGE_COUNT", $font, 9);
        ');
    }
</script>
</body>
</html>