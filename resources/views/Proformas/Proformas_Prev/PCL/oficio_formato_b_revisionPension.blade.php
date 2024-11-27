<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        @page{
            margin: 2.5cm 1.3cm 2.5cm 1.3cm;
        }
        #header {
            position: fixed; 
            /* esta ligado con el primer valor del margin */
            top: -1.8cm;
            left: 0cm;
            width: 100%;
            /* height: 100px; */
            text-align: center; 
            /* background: green; */
        }
        .codigo_qr{
            max-width: 90px; 
            max-height: 70px; 
        }
        .logo_header{
            max-width: 30%;
            height: auto;
            max-height: 60px; 
        } 
        .tabla_header{
            width: 100%;
            font-family: sans-serif;
            font-size: 13px;
            text-align: center;            
        }
        .tabla_header td {
            border: none;
        }        
        #footer{
            position: fixed;
            /* esta ligado con el tercer valor del margin */
            bottom: -2.4cm;
            left: 0cm;
            width: 100%;
            height: 10%;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            align-items: center; 
        }
        /* #footer .page{
            text-align: right;
        } */

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
        .paddingTexto{
            margin: 0;
            padding: 0;
        }
        .fuente_todo_texto{
            font-family: sans-serif;
            font-size: 12px;
        }      
        .tabla1{
            width: 100%;            
            margin-left: -3.5px;
        }
        .tabla2{
            width: 100%;
            margin-left: -3.5px;
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
        section{
            text-align: justify;
        }
        .container{
            margin-top: -0.5cm;
            margin-left: 1.5cm;
            margin-right: 1.5cm;
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
        .copias{
            font-size: 10px;
        }     
        .derecha{
            float: right;
        }
    </style>
</head>
<body>
    <div id="header">
        <table class="tabla_header">
            <tbody>
                <tr>
                    <td style="width:100%; text-align: right; margin-right: 30px;">
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
                    </td>
                </tr>
            </tbody>
        </table>
    </div> 
    <div id="footer">        
        <?php if($footer == null): ?>
            <div style="text-align:center;">
                <span style="color: #4D4D4D; margin-top:2px;">{{$Nombre_destinatario}} - {{$T_documento_destinatario}} {{$N_documento_destinatario}} - Siniestro: {{$N_siniestro}} </span>
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
                    {{$Nombre_destinatario}} - {{$T_documento_destinatario}} {{$N_documento_destinatario}} - SINIESTRO: {{$N_siniestro}} 
                </span>
                <img src="data:image/png;base64,{{ $footer_base64 }}" class="footer_image" style="display: block;">
            </div>
        <?php endif ?>
    </div>
    <div id="footer2">
        <?php
            $imagenPath_footer = public_path('/images/logos_preformas/vigilado.png');
            $imagenData_footer = file_get_contents($imagenPath_footer);
            $imagenBase64_footer = base64_encode($imagenData_footer);
        ?>
        <img src="data:image/png;base64,{{ $imagenBase64_footer }}" class="logo_footer">
    </div>
    <div class="container">
        <table class="tabla2">                        
            <tbody>
                <tr>
                    <td style="width:100%; display:table; justify-content: space-between;">
                        <p class="fuente_todo_texto paddingTexto derecha"><span class="negrita">{{$ciudad}}, {{$fecha}}</span></p>
                        <div>
                            <div class="fuente_todo_texto paddingTexto">
                                <span class="negrita">Señor(a): </span><br>
                                <span class="negrita">{{$Nombre_destinatario}}</span>
                            </div>
                            <div class="fuente_todo_texto paddingTexto">{{$Email_destinatario}}</div>
                            <div class="fuente_todo_texto paddingTexto">{{$Direccion_destinatario}}</div>
                            <div class="fuente_todo_texto paddingTexto">{{$Telefono_destinatario}}</div>
                            <div class="fuente_todo_texto paddingTexto"><?php if($Ciudad_destinatario == "Bogota D.C."): ?>{{$Ciudad_destinatario}}<?php else: ?>{{$Ciudad_destinatario.' - '.$Departamento_destinatario}}<?php endif ?></div>
                        </div>   
                    </td>
                </tr>
            </tbody>
        </table>
        <br>
        <table class="tabla1">
            <tbody>
                <tr>
                    <td class="fuente_todo_texto">
                        <div style="float:right; text-align: right;"> 
                            <span class="negrita">Asunto: {{$asunto}}</span><br>
                            @if($Tipo_afiliado === 27)
                                <span class="negrita">Beneficiario:</span> {{$Nombre_beneficiario}} {{$T_documento_beneficiario}} {{$N_documento_beneficiario}}<br>
                                <span class="negrita">Afiliado:</span> {{$Nombre_afiliado}} {{$T_documento_afiliado}} {{$N_documento_afiliado}}<br>
                            @endif
                            @if($Tipo_afiliado === 26 || $Tipo_afiliado === 28 || $Tipo_afiliado === 29) 
                                <span class="negrita">Afiliado:</span> {{$Nombre_afiliado}} {{$T_documento_afiliado}} {{$N_documento_afiliado}}<br>
                            @endif
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <br>
        <section class="fuente_todo_texto" style="clear: both;"> 
            <br>           
            <?php
                $patron1 = '/\{\{\$nombre_afiliado\}\}/';
                if (!empty($cuerpo) && preg_match($patron1, $cuerpo)) {
                    $texto_modificado = str_replace('{{$nombre_afiliado}}', $Tipo_afiliado === 27 ? $Nombre_beneficiario : $Nombre_afiliado, $cuerpo);;
                    $cuerpo = $texto_modificado;
                } else {
                    $cuerpo = "";
                }                
                print_r($cuerpo);
            ?>
        </section>
        <section class="fuente_todo_texto">
            Cordialmente,
            <br>
            <br>
            <strong>PROTECCIÓN S.A.</strong>
        </section>  
        <br>
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
        <div class="cuadro fuente_cuadro_inferior" style="margin: 0 auto; page-break-inside: avoid;">
            <span class="fuente_cuadro_inferior"><span class="negrita">Nro. Radicado: <br>{{$nro_radicado}}</span></span><br>
            <span class="fuente_cuadro_inferior"><span class="negrita">{{$T_documento_destinatario.' '.$N_documento_destinatario}}</span></span><br>
            <span class="fuente_cuadro_inferior"><span class="negrita">Siniestro: {{$N_siniestro}}</span></span><br>
        </div>   
        <br>
        <section>
            <p class="fuente_todo_texto">Le invitamos a actualizar sus datos.</p>
            <p class="fuente_todo_texto">Al autorizar sus datos, accedes a la oferta que tenemos para usted y para la construcción de su futuro a través del ahorro.</p>
            <p class="fuente_todo_texto">Actualízalos en el siguiente QR:</p>
        </section>
        <br>
        <div style="text-align:center;">
            <img src="data:image/png;base64,{{ base64_encode($codigoQR) }}" alt="Código QR" >
        </div>
    </div>
    <script type="text/php">
        if ( isset($pdf) ) {
            $pdf->page_script('
                $font = $fontMetrics->get_font("microsoft-new-tai-lue", "normal");
                $pdf->text(530, 825, "Página $PAGE_NUM de $PAGE_COUNT", $font, 9);
            ');
        }
	</script>
</body>
</html>