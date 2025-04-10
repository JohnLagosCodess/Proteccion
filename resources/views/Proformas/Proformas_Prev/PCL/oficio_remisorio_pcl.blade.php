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
        .color_letras_alfa{
            color: #184F56;
            font-weight: bold;
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

        .paddingTexto{
            margin: 0;
            padding: 0;
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

        .cursiva_cuerpo {
            font-style: italic;
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
            font-style: italic;
        }
        .derecha{
            float:right;
        }

        .page-break {
            page-break-before: always;
        }

        .tabla_pagina3{
            font-family: 'Microsoft New Tai Lue', sans-serif;
            text-align: justify;
            font-size: 10.6px;
            width: 100%;
            table-layout: fixed; 
            border-collapse: collapse;
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
                                $ruta_logo = "/logos_clientes/{$Id_cliente_ent}/{$logo_header}";
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
                <span style="color: #3C3C3C; margin-top:2px;">{{$Nombre_footer}} - {{$Tipo_documento_footer}} {{$Numero_documento_footer}} - SINIESTRO: {{$N_siniestro}} </span>
            </div>
        <?php else: ?>
            <?php 
                $ruta_footer = "/footer_clientes/{$Id_cliente_ent}/{$footer}";
                $footer_path = public_path($ruta_footer);
                $footer_data = file_get_contents($footer_path);
                $footer_base64 = base64_encode($footer_data);
            ?>
            <div class="footer_content" style="text-align:center;">
                <span style="position: absolute; width: 100%; text-align:center; top: 10px; left:0px; color:#4D4D4D; font-weight:bold; font-size: 11px;">
                    {{-- PBS089 Solicitan que solo se muestre la info del afiliado o del beneficiario --}}
                    {{-- @if ($Tipo_afiliado == 26 || $Tipo_afiliado == 28 || $Tipo_afiliado == 29) --}}
                        {{$Nombre_footer}} - {{$Tipo_documento_footer}} {{$Numero_documento_footer}} - SINIESTRO: {{$N_siniestro}} 
                    {{-- @elseif ($Tipo_afiliado == 27) --}}
                        {{-- {{$Nombre_afiliado_noti_benefi}} - {{$T_documento_notibenefi}} {{$NroIden_afiliado_notibenefi}} - SINIESTRO: {{$N_siniestro}}  --}}
                    {{-- @endif --}}
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
                        <p class="fuente_todo_texto paddingTexto derecha"><span class="negrita">{{$Ciudad_correspondencia}}, {{$F_correspondecia}}</span></p>
                        <br><br>
                        <div>
                            <div class="fuente_todo_texto paddingTexto">
                                <span>Señor(a)</span><br>
                                <b>{{$Nombre_destinatario_principal}}</b>
                            </div>
                            <div class="fuente_todo_texto paddingTexto">{{$Email_afiliado_noti}}</div>
                            <div class="fuente_todo_texto paddingTexto">{{$direccion_destinatario_principal}}</div>
                            <div class="fuente_todo_texto paddingTexto">Tel. {{$telefono_destinatario_principal}}</div>
                            <div class="fuente_todo_texto paddingTexto">{{$ciudad_destinatario_principal}}</div>
                        </div>   
                    </td>
                </tr>
            </tbody>
        </table>
        <br><br>
        <table class="tabla1">
            <tbody>
                <tr>
                    <td class="fuente_todo_texto">
                        <span class="negrita derecha">Asunto: {{$Asunto_correspondencia}}</span><br>
                    </td>
                </tr>
                @if ($Tipo_afiliado == 26 || $Tipo_afiliado == 28 || $Tipo_afiliado == 29)
                    <tr>
                        <td class="fuente_todo_texto">
                            <span class="derecha">Afiliado(a) <b>{{$Nombre_afiliado_noti}} {{$T_documento_noti}}. {{$NroIden_afiliado_noti}}</b></span>
                        </td>
                    </tr>
                @elseif ($Tipo_afiliado == 27)
                    <tr>
                        <td class="fuente_todo_texto">
                            <span class="derecha">Beneficiario(a) <b>{{$Nombre_afiliado_noti}} {{$T_documento_noti}}. {{$NroIden_afiliado_noti}}</b></span>
                        </td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td class="fuente_todo_texto">
                            <span class="derecha">Afiliado(a) <b>{{$Nombre_afiliado_noti_benefi}} {{$T_documento_notibenefi}}. {{$NroIden_afiliado_notibenefi}}</b></span>
                        </td>
                    </tr>
                @endif
            </tbody>
        </table>
        <br><br>
        <section class="fuente_todo_texto">            
            <?php
                $patron1 = '/\{\{\$Nombre_afiliado\}\}/';   
                $patron2 = '/\{\{\$PorcentajePcl_dp\}\}/'; 
                $patron3 = '/\{\{\$F_estructuracionPcl_dp\}\}/'; 
                $patron4 = '/\{\{\$OrigenPcl_dp\}\}/'; 
                $patron5 = '/\{\{\$TipoEvento_dp\}\}/'; 
                if (preg_match($patron1, $Cuerpo_comunicado_correspondencia) && preg_match($patron2, $Cuerpo_comunicado_correspondencia) 
                    && preg_match($patron3, $Cuerpo_comunicado_correspondencia) && preg_match($patron4, $Cuerpo_comunicado_correspondencia)
                    && preg_match($patron5, $Cuerpo_comunicado_correspondencia)) {                    
                    $texto_modificado = str_replace('{{$Nombre_afiliado}}', $Nombre_afiliado, $Cuerpo_comunicado_correspondencia);
                    $texto_modificado = str_replace('{{$PorcentajePcl_dp}}', '<b>'.$PorcentajePcl_dp.'%'.'</b>', $texto_modificado);
                    $texto_modificado = str_replace('{{$F_estructuracionPcl_dp}}', '<b>'.date("d/m/Y", strtotime($F_estructuracionPcl_dp)).'</b>', $texto_modificado);
                    $texto_modificado = str_replace('{{$TipoEvento_dp}}', '<b>'.$TipoEvento_dp.'</b>', $texto_modificado);
                    $texto_modificado = str_replace('{{$OrigenPcl_dp}}', '<b>'.$OrigenPcl_dp.'</b>', $texto_modificado);
                    $Cuerpo_comunicado_correspondencia = $texto_modificado;
                } else {
                    $Cuerpo_comunicado_correspondencia = "";
                }                
                print_r($Cuerpo_comunicado_correspondencia);
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
            <table class="tabla1" style="text-align: justify;">                               
                @if (empty($Copia_afiliado_correspondencia) && empty($Copia_empleador_correspondecia) && empty($Copia_eps_correspondecia) && empty($Copia_afp_correspondecia) && empty($Copia_arl_correspondecia))
                    <tr>
                        <td class="copias"><span class="negrita">Copia: </span>No se registran copias</td>                                                                                
                    </tr>
                @else
                    <tr>
                        <td class="justificado copias"><span class="negrita">Copia:</span></td>                            
                    </tr> 
                    <?php 
                        if (!empty($Copia_afiliado_correspondencia)) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">Afiliado: <?php echo $Nombre_afiliado_copia;?></span><?php echo ' - '.$Direccion_afiliado_copia.'; '.$Copia_afiliado_correo.'; '.$Telefono_afiliado_copia.'; '.$Ciudad_departamento_afiliado_copia;?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>  
                    <?php 
                        if (!empty($Copia_empleador_correspondecia)) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">Empresa: </span><?php echo $copiaNombre_empresa_noti.' - '.$copiaDireccion_empresa_noti.'; '.$copiaEmail_empresa_noti.'; '.$copiaTelefono_empresa_noti.'; '.$copiaCiudad_departamento_empresa_noti;?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>                  
                    <?php 
                        if (!empty($Copia_eps_correspondecia)) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">EPS: </span><?php echo $Nombre_eps.' - '.$Direccion_eps.'; '.$Email_eps.'; '.$Telefono_eps.'; '.$Ciudad_departamento_eps;?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php 
                        if (!empty($Copia_afp_correspondecia)) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">AFP: </span><?php echo $Nombre_afp.' - '.$Direccion_afp.'; '.$Email_afp.'; '.$Telefono_afp.'; '.$Ciudad_departamento_afp;?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>                    
                    <?php 
                        if (!empty($Copia_arl_correspondecia)) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">ARL: </span><?php echo $Nombre_arl.' - '.$Direccion_arl.'; '.$Email_arl.'; '.$Telefono_arl.'; '.$Ciudad_departamento_arl;?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php                     
                    $AFP_Conocimiento = 'AFP_Conocimiento';
                    if (!empty($Copia_afp_conocimiento_correspondencia)) {                         
                        if (isset($Agregar_copia[$AFP_Conocimiento])) { ?>
                            <?=$Agregar_copia['AFP_Conocimiento'];?>
                        <?php       
                        }  
                    }                    
                ?>                    
                @endif
            </table>
        </section>
        <br><br>
        <div class="cuadro fuente_cuadro_inferior" style="margin: 0 auto">
            <span class="fuente_cuadro_inferior"><span class="negrita">Nro. Radicado: <br>{{$Radicado_comuni}}</span></span><br>
            <span class="fuente_cuadro_inferior"><span class="negrita">{{$T_documento_noti}} {{$NroIden_afiliado_noti}}</span></span><br>
            <span class="fuente_cuadro_inferior"><span class="negrita">Siniestro: {{$N_siniestro}}</span></span><br>
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
        <section class="page-break">
            <table class="tabla_pagina3">                
                <tr>
                    <td colspan="11" style="padding:5px;">
                        <p style="text-align: center;">
                            <b>INFORMACIÓN IMPORTANTE</b>
                        </p>
                        <p>
                            <b>¿Qué tuvimos en cuenta para realizar la calificación?</b>
                            <ul>
                                <li>La historia clínica que nos entregaste</li>
                                <li>Resultados de exámenes médicos</li>
                                <li>Información relacionada con tu estado de salud</li>
                            </ul>
                        </p>
                        <p>
                            <b>¿Cuál es el porcentaje que determina el estado de invalidez?</b><br>
                            De acuerdo con la ley, la calidad de invalidez se determina si pierdes el 50% o más de capacidad laboral a raíz de una enfermedad 
                            o accidente.
                        </p>
                        <p>
                            <b>¿Si no estoy de acuerdo con el dictamen de calificación, qué debo hacer?</b><br>
                            Si no estás de acuerdo con los resultados presentados, tienes la posibilidad de apelar esta calificación, en un plazo máximo de 
                            10 días hábiles posteriores a esta notificación, debes enviarnos al email documentos.calificacion@proteccion.com.co la siguiente 
                            documentación:
                            <ol>
                                <li>Una carta en la que expliques los hechos relacionados con tu caso y los motivos de tu inconformidad, debidamente firmada.</li>
                                <li>Copia de esta notificación firmada.</li>
                                <li>Copia de tu documento de identidad.</li>
                                <li>Si tu apelación o la notificación del dictamen es firmada por una persona diferente a ti, deberás aportar copia de la cédula de 
                                    la persona que firma y poder autenticado en notaria.
                                </li>
                            </ol>
                        </p>
                        <p>
                            Nosotros nos encargaremos de remitir tu apelación, junto con los documentos que entregaste previamente para esta solicitud, a la 
                            Junta Regional de Calificación.
                        </p>
                        <p>
                            Ten en cuenta
                            <ul>
                                <li>El resultado de la calificación también se enviará a tu empleador, la EPS y la Aseguradora de Riesgos Laborales, ARL (si es necesario).</li>
                                <li>Si tu caso lo requiere, esta notificación será enviada a otra Administradora de Fondos de Pensiones que pueda estar involucrada.</li>
                                <li>Estas entidades por ser actores involucrados en tu caso también tienen la facultad de apelar si no están acuerdo con la calificación.</li>
                            </ul>
                        </p>
                        <p>
                            <b>¿Qué pasa si no hay una apelación en los próximos días hábiles?</b><br>
                            Si tú ni ninguna de las entidades involucradas en tu caso presentan una apelación en el plazo fijado, se determinará la firmeza del dictamen, es 
                            decir, que todos están de acuerdo con los resultados arrojados y deberás iniciar el proceso de radicación de la solicitud de prestación económica por invalidez.
                        </p>
                        <p>
                            <b>¿Qué pasa si mi caso pasa a la Junta Regional de Calificación?</b><br>
                            Es importante que tengas presente que las Juntas de Calificación son entidades gubernamentales independientes, por lo tanto, 
                            Protección S.A no tiene facultades en esta parte del proceso. Los médicos de dichos organismos tienen las siguientes responsabilidades:
                            <ul>
                                <li>Asignar tu cita de valoración</li>
                                <li>Brindar información relacionada con tu proceso</li>
                                <li>Emitir y notificarte el dictamen.</li>
                            </ul>
                        </p>
                        <p>
                            De igual manera, puedes contactarte directamente con ellos para conocer cómo avanza tu proceso de calificación. 
                        </p>
                        <p>
                            Te agradecemos la confianza depositada en nosotros durante estos años y te reiteramos nuestro deseo de seguir acompañándote en tu camino. 
                            Recuerda que, si requieres información adicional o tienes alguna inquietud, comunícate con nuestro asesor virtual a través de 
                            proteccion.com o llama a nuestra Línea de Servicio en Bogotá 7444464, en Medellín y Cali 5109099, en Barranquilla 3197999, 
                            en Cartagena 6424999 y desde el resto del país 018000528000.
                        </p>
                    </td>
                    <td colspan="7" style="background-color: #e7e6e6; padding:5px;">
                        <p style="text-align: center;">
                            <b>Conceptos claves</b>
                        </p>
                        <p>
                            <b>Capacidad laboral:</b><br>
                            Son las habilidades, destrezas y aptitudes físicas, mentales y sociales que permiten el desempeño de un trabajo.                           
                        </p>
                        <p>
                            <b>Fecha de estructuración:</b><br>
                            Es el día en el que una persona pierde un porcentaje de su capacidad laboral a raíz de una enfermedad o accidente.
                        </p>
                        <p>
                            <b>Porcentaje de pérdida de capacidad laboral:</b><br>
                            Es el grado de disminución de las habilidades, destrezas y aptitudes físicas, mentales y sociales que permiten realizar un trabajo.
                        </p>
                        <p>
                            <b>Origen:</b>
                            Es el motivo o situación que causa el accidente, enfermedad o muerte. Puede ser a causa del trabajo o a 
                            raíz de una circunstancia que no está relacionada con lo laboral.
                        </p>
                        <p>
                            <b>IMPORTANTE:</b><br>
                            Ten en cuenta las siguientes recomendaciones a la hora de enviar el email con tu apelación:
                            <ul>
                                <li>En el asunto del correo informa que es una APELACIÓN seguido de tu tipo y número de identificación.</li>
                                <li>Adjunta todos los documentos solicitados.</li>
                                <li>Informa en el email tu Nombre completo, Ciudad de Residencia, Dirección y Teléfono Actualizado De Contacto.</li>                                
                            </ul>
                        </p>
                        <p>
                            <b>Solo se entenderá como radicada la apelación una vez entregues la documentación completa.</b>
                        </p>
                        <p>
                            <b>Te invitamos a actualizar tus datos. Actualízalos en el siguiente QR:</b>
                        </p>
                        <?php
                            $imagenPath_footer = public_path('/images/logos_preformas/QR_proteccion.png');
                            $imagenData_footer = file_get_contents($imagenPath_footer);
                            $imagenBase64_footer = base64_encode($imagenData_footer);
                        ?>
                        <img src="data:image/png;base64,{{ $imagenBase64_footer }}" class="qr_proteccion">
                        <p style="font-size: 9px;">
                            Al autorizar tus datos, accedes a la oferta que tenemos para ti y para la construcción de tu 
                            futuro a través del ahorro.
                        </p>
                        <br><br><br><br><br>
                    </td>
                </tr>
            </table>            
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