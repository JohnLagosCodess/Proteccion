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
            margin-top:4px;
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
                    <td>
                        <img src="data:image/png;base64,{{ base64_encode($codigoQR) }}" class="codigo_qr" alt="Código QR">
                    </td>                    
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
                    <span style="color: #3C3C3C; margin-top:2px;">{{$Nombre_afiliado}} - {{$tipo_doc_afiliado}} {{$nro_identificacion_afiliado}} - SINIESTRO: {{$N_siniestro}}</span>
                @elseif($Tipo_afiliado == 27)
                    <span style="color: #3C3C3C; margin-top:2px;">{{$Nombre_afiliado_noti_benefi}} - {{$T_documento_noti_benefi}} {{$NroIden_afiliado_noti_benefi}} - SINIESTRO: {{$N_siniestro}}</span>
                @endif
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
                        <p class="fuente_todo_texto paddingTexto derecha"><span class="negrita">{{$ciudad}}, {{$fecha}}</span></p>
                        <br><br>
                        <div>
                            <div class="fuente_todo_texto paddingTexto">
                                <span class="negrita">Señor(a)</span><br>
                                <b>{{$nombre_destinatario_principal}}</b>
                            </div>
                            <div class="fuente_todo_texto paddingTexto">{{$email_destinatario_principal}}</div>
                            <div class="fuente_todo_texto paddingTexto">{{$direccion_destinatario_principal}}</div>
                            <div class="fuente_todo_texto paddingTexto">Tel. {{$telefono_destinatario_principal}}</div>
                            <div class="fuente_todo_texto paddingTexto">{{$ciudad_destinatario_principal}}</div>
                        </div>   
                    </td>
                </tr>
            </tbody>
        </table>
        <br><br>
        <table class="tabla_asunto">
            <tbody>
                <tr>
                    <td class="fuente_todo_texto">
                        <span class="negrita derecha">Asunto: {{$asunto}}</span><br>
                    </td>
                </tr>
                @if ($Tipo_afiliado == 26 || $Tipo_afiliado == 28 || $Tipo_afiliado == 29)
                    <tr>
                        <td class="fuente_todo_texto">
                            <span class="derecha">Afiliado(a) <b>{{$Nombre_afiliado}} {{$tipo_doc_afiliado}}. {{$nro_identificacion_afiliado}}</b></span>
                        </td>
                    </tr>
                @elseif ($Tipo_afiliado == 27)
                    <tr>
                        <td class="fuente_todo_texto">
                            <span class="derecha">Beneficiario(a) <b>{{$Nombre_afiliado}} {{$tipo_doc_afiliado}}. {{$nro_identificacion_afiliado}}</b></span>
                        </td>
                    </tr>
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
                $patron1 = '/\{\{\$nombre_afiliado\}\}/';   
                $patron2 = '/\{\{\$tipo_evento\}\}/'; 
                $patron3 = '/\{\{\$origen_evento\}\}/'; 
                if (preg_match($patron1, $cuerpo) && preg_match($patron2, $cuerpo) && preg_match($patron3, $cuerpo)) {                    

                    if($Tipo_afiliado == 26 || $Tipo_afiliado == 28 || $Tipo_afiliado == 29){
                        $texto_modificado = str_replace('{{$nombre_afiliado}}', $Nombre_afiliado, $cuerpo);
                    }elseif ($Tipo_afiliado == 27) {
                        $texto_modificado = str_replace('{{$nombre_afiliado}}', $Nombre_afiliado_noti_benefi, $cuerpo);
                    }
                    $texto_modificado = str_replace('{{$tipo_evento}}', $tipo_evento, $texto_modificado);
                    $texto_modificado = str_replace('{{$origen_evento}}', $origen, $texto_modificado);
                    $cuerpo = $texto_modificado;
                } else {
                    $cuerpo = "";
                }                
                print_r($cuerpo);
            ?>
        </section>
        <br><br> 
        <section class="fuente_todo_texto">
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
                        $Beneficiario = 'Beneficiario';
                        $Empleador = 'Empleador';
                        $EPS = 'EPS';
                        $AFP = 'AFP';
                        $AFP_Conocimiento = 'AFP_Conocimiento';
                        $ARL = 'ARL';
                    ?>
                    <?php 
                        if (isset($Agregar_copia[$Beneficiario])) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">Beneficiario: </span><?=$Agregar_copia['Beneficiario'];?>
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
        <br>
        <br>
        <div class="cuadro_radicado fuente_cuadro_radicado" style="margin: 0 auto">
            <span class="fuente_cuadro_radicado"><span class="negrita">Nro. Radicado : <br>{{$nro_radicado}}</span></span><br>
            <span class="fuente_cuadro_radicado"><span class="negrita">{{$tipo_doc_afiliado}} {{$nro_identificacion_afiliado}}</span></span><br>
            <span class="fuente_cuadro_radicado"><span class="negrita">Siniestro: {{$N_siniestro}}</span></span><br>
        </div>
        <br>
        <section>
            <div class="fuente_todo_texto">
                Para nosotros es importante saber si recibiste esta notificación para poder continuar 
                con tu proceso. Firma esta carta y envíala al correo documentos.calificacion@proteccion.com.co.
            </div>
        </section>
        <br>
        <section>
            <div class="fuente_todo_texto">
                <b>Los siguientes campos son obligatorios, diligenciar fecha de firma en formato numérico (23/01/2000).</b>
            </div>
        </section>
        <br>
        <section>
            <div class="fuente_todo_texto">
                <b>Fecha de firma:</b> Día____ Mes____ Año_____
            </div>
        </section>
        <br>
        <section>
            <div class="fuente_todo_texto">
                <b>Nombre del afiliado:</b> _____________________________________________
            </div>
        </section>
        <br>
        <br>
        <br>
        <br>
        <br>
        <section>
            <div class="fuente_todo_texto" style="text-align: center;">
                ______________________________________                
            </div>
        </section>
        <section>
            <div class="fuente_todo_texto" style="text-align: center;">
                <b>Firma y cédula del afiliado</b>
            </div>
        </section>
        <br><br>
        <section class="fuente_todo_texto">
            <p>Le invitamos a actualizar sus datos.</p>
            <p>Al autorizar sus datos, accede a la oferta que tenemos para usted y para la construcción de su futuro a través del ahorro.</p>
            <p>Actualizarlos en el siguiente QR:</p>
            <?php
                $imagenPath_footer = public_path('/images/logos_preformas/QR_proteccion.png');
                $imagenData_footer = file_get_contents($imagenPath_footer);
                $imagenBase64_footer = base64_encode($imagenData_footer);
            ?>
            <div style="text-align: center;">
                <img src="data:image/png;base64,{{ $imagenBase64_footer }}" class="qr_proteccion">
            </div>
        </section>
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