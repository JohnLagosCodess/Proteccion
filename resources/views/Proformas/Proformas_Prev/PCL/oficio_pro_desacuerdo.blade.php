<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <style>
        @page{
            margin: 3cm 1.3cm 2.5cm 1.3cm;
        }
        #header {
            position: fixed; 
            top: -1.8cm;
            left: 0cm;
            width: 100%;
            text-align: center; 
        }
        .codigo_qr{
            position: absolute;
            top: -30px; 
            left: 58px; 
            max-width: 90px; 
            max-height: 70px; 
        }
        .logo_header{
            /* position: absolute; */
            max-width: 33%;
            /* width: 150px; */
            height: auto;
            /* left: 530px; */
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

        #footer .page:after { content: counter(page, upper-decimal); } 

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

        .negrita{
            font-weight: bold;
        }
        
        @font-face {
            font-family: 'Microsoft New Tai Lue';
            src: url('/storage/fonts/microsoft-new-tai-lue-2.ttf') format('truetype');
            font-weight: normal;
            font-style: normal;
        }

        .fuente_todo_texto {
            font-family: 'Microsoft New Tai Lue', sans-serif;
            font-size: 12px;
        }

        section{
            text-align: justify;
        }

        .container{
            margin-top: -0.5cm;
            margin-left: 1.5cm;
            margin-right: 1.5cm;
        }

        .copias{
            font-size: 10px;
            font-style: italic;
        }

        .derecha{
            float:right;
        }

        .page-break {
            page-break-before: always;
        }

        .tabla_asunto{
            width: 100%;            
            margin-left: -3.5px;
        }

        .tabla_senor_senora{
            width: 100%;
            margin-left: -3.5px;
        }

        .paddingTexto{
            margin: 0;
            padding: 0;
        }

        .centrado {
            text-align: center !important;
        }

        .tabla_cuerpo {
            font-family: sans-serif;
            width: 50%; /* Ajusta el ancho de la tabla según lo necesites */
            margin: 0 auto; /* Centra la tabla horizontalmente */
            table-layout: fixed;
            border-collapse: collapse;
        }

        .tabla_cuerpo, .tabla_cuerpo td, .tabla_cuerpo th {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
        }

        .cuadro_radicado{
            border: 2px solid black;
            width: 4cm;
            padding: 1px;
            height: auto;
        }

        .fuente_cuadro_radicado{
            font-family: sans-serif;
            font-size: 10px;
            margin: 0;
            padding: 0;
        }

        .qr_proteccion{
            width: auto;
            height: 150px;
            padding-left: 30px;
        }
    </style>

</head>
<body>
    <div id="header">
        <table class="tabla_header">
            <tbody>
                <tr>
                    <td style="width:100%; text-align:right;">
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
                @if($Tipo_afiliado == 26 || $Tipo_afiliado == 28 || $Tipo_afiliado == 29)
                @elseif($Tipo_afiliado == 27)
                <span style="color: #3C3C3C; margin-top:2px;">{{$Nombre_afiliado}} - {{$T_documento_noti_benefi}} {{$NroIden_afiliado_noti_benefi}} - SINIESTRO: {{$N_siniestro}}</span>
                @endif
                {{-- <span style="color: #3C3C3C; margin-top:2px;">{{$Nombre_afiliado}} - {{$tipo_doc_afiliado}} {{$nro_identificacion_afiliado}} - SINIESTRO: {{$N_siniestro}}</span> --}}
            </div>
        <?php else: ?>
            <?php 
                $ruta_footer = "/footer_clientes/{$id_cliente}/{$footer}";
                $footer_path = public_path($ruta_footer);
                $footer_data = file_get_contents($footer_path);
                $footer_base64 = base64_encode($footer_data);
            ?>
            <div class="footer_content" style="text-align:center;">
                {{-- PBS089 SOLICITAN QUE EL FOOTER SOLO SALGA LA INFORMACIÓN DE LOS CAMPOS DE AFILIADO / BENEFICIARIO --}}
                {{-- @if($Tipo_afiliado == 26 || $Tipo_afiliado == 28 || $Tipo_afiliado == 29) --}}
                    <span style="position: absolute; width: 100%; text-align:center; top: 10px; left:0px; color:#4D4D4D; font-weight:bold; font-size: 11px;">
                        {{$Nombre_afiliado}} - {{$tipo_doc_afiliado}} {{$nro_identificacion_afiliado}} - SINIESTRO: {{$N_siniestro}} 
                    </span>
                {{-- @elseif($Tipo_afiliado == 27)
                    <span style="position: absolute; width: 100%; text-align:center; top: 10px; left:0px; color:#4D4D4D; font-weight:bold; font-size: 11px;">
                        {{$Nombre_afiliado_noti_benefi}} - {{$T_documento_noti_benefi}} {{$NroIden_afiliado_noti_benefi}} - SINIESTRO: {{$N_siniestro}} 
                    </span>
                @endif --}}
                {{-- <span style="position: absolute; width: 100%; text-align:center; top: 10px; left:0px; color:#4D4D4D; font-weight:bold; font-size: 11px;">
                    {{$Nombre_afiliado}} - {{$tipo_doc_afiliado}} {{$nro_identificacion_afiliado}} - SINIESTRO: {{$N_siniestro}} 
                </span> --}}
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
        <table class="tabla_senor_senora">
            <tbody>
                <tr>
                    <td style="width:100%; display:table; justify-content: space-between;">
                        <p class="fuente_todo_texto paddingTexto derecha"><span class="negrita">{{$Ciudad_correspon}}, {{$Fecha_correspondencia}}</span></p>
                        <br><br>
                        <div>
                            <div class="fuente_todo_texto paddingTexto">
                                <span>Señores</span><br>
                                <b>{{$Nombre_entidad}}</b>
                            </div>
                            <div class="fuente_todo_texto paddingTexto">{{$Email_entidad}}</div>
                            <div class="fuente_todo_texto paddingTexto">{{$Direccion_entidad}}</div>
                            <div class="fuente_todo_texto paddingTexto">Tel. {{$Telefonos_entidad}}</div>
                            <div class="fuente_todo_texto paddingTexto">{{$Dpto_Ciudad_entidad}}</div>
                        </div>   
                    </td>
                </tr>
            </tbody>
        </table>
        <br><br>
        <table class="tabla_asunto">
            <tbody>
                <tr>
                    <td class="fuente_todo_texto" style="text-align: right;">
                        <span class="negrita derecha">Asunto: {{$Asunto_cali}}</span><br><br>
                    </td>
                </tr>
                @if ($Tipo_afiliado == 26 || $Tipo_afiliado == 28 || $Tipo_afiliado == 29)
                    <tr>
                        <td class="fuente_todo_texto">
                            <span class="derecha">CASO DEL (LA) SEÑOR(A) <b>{{$Nombre_afiliado}} {{$tipo_doc_afiliado}}. {{$nro_identificacion_afiliado}}</b></span>
                        </td>
                    </tr>
                @elseif ($Tipo_afiliado == 27)
                    <tr>
                        <td class="fuente_todo_texto">
                            <span class="derecha">CASO DEL (LA) SEÑOR(A) <b>{{$Nombre_afiliado}} {{$tipo_doc_afiliado}}. {{$nro_identificacion_afiliado}}</b></span>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td class="fuente_todo_texto">
                            <span class="derecha">Afiliado(a) <b>{{$Nombre_afiliado_noti_benefi}} {{$T_documento_noti_benefi}}. {{$NroIden_afiliado_noti_benefi}}</b></span>
                        </td>
                    </tr>
                @endif
            </tbody>
        </table>
        <br><br>
        <section class="fuente_todo_texto">
            <?php
                $patron1 = '/\{\{\$Nombre_afiliado\}\}/';   
                $patron2 = '/\{\{\$Tipo_documento\}\}/'; 
                $patron3 = '/\{\{\$Nro_documento\}\}/'; 
                $patron4 = '/\{\{\$Entidad_califi\}\}/'; 
                $patron5 = '/\{\{\$CIE10_Nombres_Origen\}\}/'; 
                $patron6 = '/\{\{\$Nro_dictamen_primer_calificador\}\}/';
                $patron7 = '/\{\{\$Fecha_dictamen_primer_calificador\}\}/';
                $patron8 = '/\{\{\$PorcentajePcl\}\}/';
                $patron9 = '/\{\{\$Tipo_evento\}\}/';
                $patron10 = '/\{\{\$Origen\}\}/';
                $patron11 = '/\{\{\$F_estructuracionPcl\}\}/';

                if (preg_match($patron1, $Sustenta_cali) && 
                    preg_match($patron2, $Sustenta_cali) && 
                    preg_match($patron3, $Sustenta_cali) && 
                    preg_match($patron4, $Sustenta_cali) &&
                    preg_match($patron5, $Sustenta_cali) &&
                    preg_match($patron6, $Sustenta_cali) &&
                    preg_match($patron7, $Sustenta_cali) &&
                    preg_match($patron8, $Sustenta_cali) &&
                    preg_match($patron9, $Sustenta_cali) &&
                    preg_match($patron10, $Sustenta_cali) &&
                    preg_match($patron11, $Sustenta_cali)
                ) {                    

                    if($Tipo_afiliado == 26 || $Tipo_afiliado == 28 || $Tipo_afiliado == 29){
                        $texto_modificado = str_replace('{{$Nombre_afiliado}}', $Nombre_afiliado, $Sustenta_cali);
                    }elseif ($Tipo_afiliado == 27) {
                        $texto_modificado = str_replace('{{$Nombre_afiliado}}', $Nombre_afiliado, $Sustenta_cali);
                    }
                    $texto_modificado = str_replace('{{$Tipo_documento}}', $tipo_doc_afiliado, $texto_modificado);
                    $texto_modificado = str_replace('{{$Nro_documento}}', $nro_identificacion_afiliado, $texto_modificado);
                    $texto_modificado = str_replace('{{$Entidad_califi}}', $Nombre_entidad, $texto_modificado);

                    $texto_modificado = str_replace('{{$CIE10_Nombres_Origen}}', $CIE10Nombres, $texto_modificado);
                    $texto_modificado = str_replace('{{$Nro_dictamen_primer_calificador}}', $Dictamen_calificador, $texto_modificado);
                    $texto_modificado = str_replace('{{$Fecha_dictamen_primer_calificador}}', $Fecha_calificador, $texto_modificado);
                    $texto_modificado = str_replace('{{$PorcentajePcl}}', $Porcentaje_pcl, $texto_modificado);
                    $texto_modificado = str_replace('{{$Tipo_evento}}', strtoupper($Tipo_evento), $texto_modificado);
                    if ($T_origen == 'Común') {
                        $T_origenU = 'COMÚN';
                    } else {
                        $T_origenU = strtoupper($T_origen);
                    }
                    $texto_modificado = str_replace('{{$Origen}}', $T_origenU, $texto_modificado);
                    $texto_modificado = str_replace('{{$F_estructuracionPcl}}', $Fecha_estruturacion, $texto_modificado);


                    $cuerpo = $texto_modificado;

                } else {
                    $cuerpo = "";
                }                
                print_r($cuerpo);
            ?>
        </section>
        <br><br>
        <section class="fuente_todo_texto">
            <br>        
            Cordialmente,
            <br><br><br>
            <b>PROTECCIÓN S.A.</b>                        
        </section>
        <br><br>
        <section class="fuente_todo_texto">
            <table style="text-align: justify; width:100%; margin-left: -3px;">
                @if (count($Agregar_copia) == 0)
                    <tr>
                        <td class="copias"><span class="negrita">Copia: </span>No se registran copias</td>      
                    </tr>
                @else
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
                            <?=$Agregar_copia['AFP_Conocimiento'];?>
                        <?php       
                        }
                    ?>
                @endif
            </table>
        </section>
        <br>
        <div class="cuadro_radicado fuente_cuadro_radicado" style="margin: 0 auto">
            <span class="fuente_cuadro_radicado"><span class="negrita">Nro. Radicado : <br>{{$N_radicado}}</span></span><br>
            <span class="fuente_cuadro_radicado"><span class="negrita">{{$tipo_doc_afiliado}} {{$nro_identificacion_afiliado}}</span></span><br>
            <span class="fuente_cuadro_radicado"><span class="negrita">Siniestro: {{$N_siniestro}}</span></span><br>
        </div>

        @for($i=1; $i<= 8; $i++)
            @php 
                $ruta_img_anexo = "images/pro_15_p{$i}.png";
                $imagenPath_anexo = public_path($ruta_img_anexo);
                $imagenData_anexo = file_get_contents($imagenPath_anexo);
                $imagenBase64_anexo = base64_encode($imagenData_anexo);
            @endphp
            <img src="data:image/png;base64,{{ $imagenBase64_anexo }}" style="width: 105%; height: auto;">
        @endfor
    </div>
    <script type="text/php">
        if ( isset($pdf) ) {
            $pdf->page_script('
                $font = $fontMetrics->get_font("Arial, Helvetica, sans-serif", "normal");
                $pdf->text(485, 825, "Página $PAGE_NUM de $PAGE_COUNT", $font, 9);
            ');
        }
	</script>
</body>
</html>