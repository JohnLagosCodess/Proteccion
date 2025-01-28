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

        .qr_proteccion{
            width: auto;
            height: 150px;
            padding-left: 200px;
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
                                <span class="negrita">Señor(a):</span><br>
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
                $patron6 = '/\{\{\$Detalle_calificacion_Fbdp\}\}/';                   
                if (preg_match($patron1, $Cuerpo_comunicado_correspondencia) && preg_match($patron2, $Cuerpo_comunicado_correspondencia) 
                    && preg_match($patron3, $Cuerpo_comunicado_correspondencia) && preg_match($patron4, $Cuerpo_comunicado_correspondencia)
                    && preg_match($patron5, $Cuerpo_comunicado_correspondencia) && preg_match($patron6, $Cuerpo_comunicado_correspondencia)) {                    
                    $texto_modificado = str_replace('{{$Nombre_afiliado}}', $Nombre_afiliado, $Cuerpo_comunicado_correspondencia);
                    $texto_modificado = str_replace('{{$PorcentajePcl_dp}}', '<b>'.$PorcentajePcl_dp.'%'.'</b>', $texto_modificado);
                    $texto_modificado = str_replace('{{$F_estructuracionPcl_dp}}', '<b>'.date("d/m/Y", strtotime($F_estructuracionPcl_dp)).'</b>', $texto_modificado);
                    $texto_modificado = str_replace('{{$TipoEvento_dp}}', '<b>'.$TipoEvento_dp.'</b>', $texto_modificado);
                    $texto_modificado = str_replace('{{$OrigenPcl_dp}}', '<b>'.$OrigenPcl_dp.'</b>', $texto_modificado);
                    $texto_modificado = str_replace('{{$Detalle_calificacion_Fbdp}}', $Detalle_calificacion_Fbdp, $texto_modificado);
                    $Cuerpo_comunicado_correspondencia = $texto_modificado;
                } else {
                    $Cuerpo_comunicado_correspondencia = "";
                }                
                print_r($Cuerpo_comunicado_correspondencia);
            ?>
        </section>        
        <p class="fuente_todo_texto" style="text-align: justify;">
            Como puede observarse, ahora usted se encuentra dentro del porcentaje establecido en el <b>literal B del Artículo 40 de la Ley 100 de 1993</b>, 
            por lo anterior, se efectuará el pago de su mesada pensional en los términos establecidos en la norma anteriormente mencionada.
        </p>
        <p class="fuente_todo_texto" style="text-align: justify;">
            En caso de encontrarse en desacuerdo con la presente calificación, usted cuenta con el derecho de interponer el recurso de apelación por 
            escrito ante <b>PROTECCIÓN</b> al email documentos.calificacion@proteccion.com.co con los fundamentos que motivan su solicitud, dentro de los 
            diez (10) días hábiles posteriores a esta notificación. 
        </p>
        <p class="fuente_todo_texto" style="text-align: justify;">
            Si esto pasara, el caso y la documentación serían entregados a la Junta Regional de Calificación para una nueva evaluación. 
            Estas Juntas son entidades gubernamentales independientes por lo que sus médicos son los responsables de asignar la cita para valoración, 
            brindar información del trámite, emitir y notificar el dictamen en términos de ley.
        </p>  
        <p class="fuente_todo_texto" style="text-align: justify;">
            * Dando cumplimiento al Artículo 41 de la Ley 100 de 1993, modificado por el Artículo 142 del Decreto Ley 019 de 2012, En caso de no 
            recibir respuesta en este tiempo, se entenderá que está de acuerdo (Dictamen en firme) y se finalizará su solicitud de calificación de 
            pérdida de capacidad laboral.
        </p>  
        <p class="fuente_todo_texto" style="text-align: justify;">
            Le agradecemos la confianza depositada en nosotros durante estos años y le recordamos que cuenta con nuestra asesoría. Ante cualquier 
            duda, puede comunicarse a nuestra Línea de Servicio: Bogotá: 744 44 64, Medellín y Cali: 510 90 99 Barranquilla: 319 79 99, 
            Cartagena: 642 49 99 y resto del país: 01 8000 52 8000.
        </p>
        <br><br>
        <section class="fuente_todo_texto">            
            Cordialmente,
            <br><br><br>
            <b>PROTECCIÓN S.A.</b>           
        </section>
        <br><br>    
        <section class="fuente_todo_texto">
            <table class="tabla1" style="text-align: justify;">                               
                @if (empty($Copia_afiliado_correspondencia) && empty($Copia_empleador_correspondecia) && empty($Copia_eps_correspondecia) && empty($Copia_afp_correspondecia) && empty($Copia_afp_conocimiento_correspondencia) && empty($Copia_arl_correspondecia))
                    <tr>
                        <td class="copias"><span class="negrita">Copia: </span>No se registran copias</td>
                        {{-- <td class="copias"><span class="negrita "></td> --}}
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
                                    <span class="negrita">Empresa: </span><?php echo $copiaNombre_empresa_noti.' - '.$copiaDireccion_empresa_noti.'; '.$copiaEmail_empresa_noti.'; Teléfono: '.$copiaTelefono_empresa_noti.', '.$copiaCiudad_departamento_empresa_noti;?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>                  
                    <?php 
                        if (!empty($Copia_eps_correspondecia)) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">EPS: </span><?php echo $Nombre_eps.' - '.$Direccion_eps.'; '.$Email_eps.'; Teléfono: '.$Telefono_eps.', '.$Ciudad_departamento_eps;?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php 
                        if (!empty($Copia_afp_correspondecia)) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">AFP: </span><?php echo $Nombre_afp.' - '.$Direccion_afp.'; '.$Email_afp.'; Teléfono: '.$Telefono_afp.', '.$Ciudad_departamento_afp;?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php 
                    if (!empty($Copia_afp_conocimiento_correspondencia)) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">AFP Conocimiento: </span><?php echo $Nombre_afp_conocimiento.' - '.$Direccion_afp_conocimiento.'; '.$Email_afp_conocimiento.'; '.$Telefonos_afp_conocimiento.'; '.$Ciudad_departamento_afp_conocimiento;?>
                                </td>
                            </tr>
                        <?php       
                        }
                    ?>
                    <?php 
                        if (!empty($Copia_arl_correspondecia)) { ?>
                            <tr>
                                <td class="copias">
                                    <span class="negrita">ARL: </span><?php echo $Nombre_arl.' - '.$Direccion_arl.'; '.$Email_arl.'; Teléfono: '.$Telefono_arl.', '.$Ciudad_departamento_arl;?>
                                </td>
                            </tr>
                        <?php       
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
                Para nosotros es importante saber si recibió esta notificación para poder continuar 
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
        <p class="fuente_todo_texto" style="text-align: justify;">
            Le invitamos a actualizar sus datos.
        </p>
        <p class="fuente_todo_texto" style="text-align: justify;">
            Al autorizar sus datos, accede a la oferta que tenemos para usted y para la construcción de su futuro a través del ahorro.
        </p>
        <p class="fuente_todo_texto" style="text-align: justify;">
            Actualizarlos en el siguiente QR:
        </p>
        <br>
        <section>
            <?php
                $imagenPath_footer = public_path('/images/logos_preformas/QR_proteccion.png');
                $imagenData_footer = file_get_contents($imagenPath_footer);
                $imagenBase64_footer = base64_encode($imagenData_footer);
            ?>
            <img src="data:image/png;base64,{{ $imagenBase64_footer }}" class="qr_proteccion">
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