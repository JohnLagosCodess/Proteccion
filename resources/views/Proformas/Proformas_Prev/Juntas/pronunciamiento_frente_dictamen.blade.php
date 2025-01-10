<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <style>
        /*@font-face {
            font-family: 'Microsoft New Tai Lue';
            font-style: normal;
            font-weight: normal;
            src: url('fonts/ntailu.ttf') format('truetype');
        }*/
        @page{
            /* arriba  derecha  abajo  izquierda */
            margin: 3cm 1.3cm 2.5cm 1.3cm;
            counter-increment: page;
        }
        body {
            font-family: sans-serif;
            font-size: 11px;
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
            text-align: right;
        }
        .footer_image{
            max-width: 100%;
            max-height: 80%;
            margin-bottom: -5px;
        }
        .footer_content {
            position: relative;
            text-align: center;
        }

        #footer .page:after { content: "Página " counter(page) " de " counter(pages); }

        #footer2 { 
            position: fixed; 
            left: -20px; 
            right: 0px; 
            width: 0px; 
            height: 0px; 
            color:black; 
            background-color: white; 
            transform: rotate(0deg); 
            top:300px;
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
        /* .hijo{
            width: 2cm;
            height: 1cm;
            margin: 0.2cm;
            background-color: yellowgreen;
        } */
    </style>
</head>
<body>
    @php 
        $imagenPath_header = public_path($ruta_logo);
        $imagenData_header = file_get_contents($imagenPath_header);
        $imagenBase64_header = base64_encode($imagenData_header);
        $footer_path = public_path($ruta_footer);
        $footer_data = file_get_contents($footer_path); 
        $footer_base64 = base64_encode($footer_data);
    @endphp
    <div id="header">
        @if($logo_header == "Sin logo")
            <p>No logo</p>
        @else
            <img src="data:image/png;base64,{{ $imagenBase64_header }}" class="logo_header">
        @endif
    </div>
    <div id="footer">        
        @if($footer == null)
            <div style="text-align:center;">
                <span style="color: #4D4D4D; margin-top:2px;">{{$nombre_afiliado}} - {{$tipo_identificacion}} {{$num_identificacion}} - Siniestro: {{$N_siniestro}} </span>
            </div>
        @else
            <div class="footer_content" style="text-align:center;">
                <span style="position: absolute; width: 100%; text-align:center; top: 10px; left:0px; color:#4D4D4D; font-weight:bold; font-size: 11px;">
                    {{$nombre_afiliado}} - {{$tipo_identificacion}} {{$num_identificacion}} - SINIESTRO: {{$N_siniestro}} 
                </span>
                <img src="data:image/png;base64,{{ $footer_base64 }}" class="footer_image" style="display: block;" width="100%">
            </div>
        @endif
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
        <p class="fuente_todo_texto derecha fecha_comunicado"><span class="negrita">{{$ciudad_comunicado->Ciudad}},  {{$fecha_sustentacion_jrci}}</span></p>
        <br><br>
        <div class="tabla2" style="margin-top: 30px;">
            <span class="fuente_todo_texto">Señores: <br><strong>{{$nombre_junta}}</strong></span><br>
            <span class="fuente_todo_texto">{{$email_comunicado}}</span><br>
            <span class="fuente_todo_texto">{{$direccion_junta}}</span><br>
            <span class="fuente_todo_texto">Tel. {{$telefono_junta}}</span><br>
            <span class="fuente_todo_texto">{{$ciudad_junta}} - {{$departamento_junta}}</span>
        </div>
        <br><br>
        <div style="float: right;text-align: right; width:97%; margin-top:30px; margin-bottom:30px;">
            <div class="col-6">
                <span class="fuente_todo_texto negrita"> Asunto: {{$asunto}}</span><br>
                <span>CASO DEL (LA) SEÑOR(A) <strong>{{$nombre_afiliado}} {{$tipo_identificacion}}. {{$num_identificacion}}</strong></span><br>
                @if($info_afiliado->Tipo_afiliado == 27)
                    <span class="fuente_todo_texto negrita">Afiliado(a): <strong>{{$info_afiliado->Nombre_afiliado_benefi}} {{$info_afiliado->t_doc_beneficiario}}. {{$info_afiliado->Nro_identificacion_benefi}}</strong></span>
                @endif
            </div>
        </div>
        <div class="fuente_todo_texto" style="margin-bottom: 2em; text-align: justify;">
            <?php 
                $patron1 = '/\{\{\$nro_dictamen\}\}/';
                $patron2 = '/\{\{\$f_dictamen_jrci\}\}/';
                $patron3 = '/\{\{\$nombre_afiliado\}\}/';
                $patron4 = '/\{\{\$tipo_identificacion_afiliado\}\}/';
                $patron5 = '/\{\{\$num_identificacion_afiliado\}\}/';
                $patron6 = '/\{\{\$cie10_nombre_cie10_jrci\}\}/';
                $patron7 = '/\{\{\$pcl_jrci\}\}/';
                $patron8 = '/\{\{\$origen_dx_jrci\}\}/';
                $patron9 = '/\{\{\$f_estructuracion_jrci\}\}/';
                $patron10 = '/\{\{\$decreto_calificador_jrci\}\}/';
                $patron11 = '/\{\{\$sustentacion_jrci\}\}/';
                $patron12 = '/\{\{\$sustentacion_jrci1\}\}/';

                /* Evaluamos el tipo de controversia para saber que texto hay que insertar en la proforma. 12 es Contro Origen y 13 Contro PCL*/
                if($id_servicio == 12){
                    if (preg_match($patron1, $cuerpo) && preg_match($patron2, $cuerpo) && preg_match($patron3, $cuerpo) &&
                        preg_match($patron4, $cuerpo) && preg_match($patron5, $cuerpo) && preg_match($patron6, $cuerpo)                    
                    ) {
          
                        $cuerpo_modificado = str_replace(':nombre_junta', "<b>" . $nombre_junta . "</b>", $cuerpo);
                        $cuerpo_modificado = str_replace('{{$nro_dictamen}}', "<b>".$nro_dictamen."</b>", $cuerpo_modificado);
                        $cuerpo_modificado = str_replace('{{$f_dictamen_jrci}}', "<b>".date("d/m/Y", strtotime($f_dictamen_jrci_emitido))."</b>", $cuerpo_modificado);
                        $cuerpo_modificado = str_replace('{{$nombre_afiliado}}', "<b>".$nombre_afiliado."</b>", $cuerpo_modificado);
                        $cuerpo_modificado = str_replace('{{$tipo_identificacion_afiliado}}', "<b>".$tipo_identificacion."</b>", $cuerpo_modificado);
                        $cuerpo_modificado = str_replace('{{$num_identificacion_afiliado}}', "<b>".$num_identificacion."</b>", $cuerpo_modificado);
                        $cuerpo_modificado = str_replace('{{$cie10_nombre_cie10_jrci}}', $string_diagnosticos_cie10_jrci, $cuerpo_modificado);
                        // $cuerpo_modificado = str_replace('{{$pcl_jrci}}', "<b>".$porcentaje_pcl_jrci_emitido."</b>", $cuerpo_modificado);
                        // $cuerpo_modificado = str_replace('{{$origen_dx_jrci}}', "<b>".$origen_jrci_emitido."</b>", $cuerpo_modificado);
                        // $cuerpo_modificado = str_replace('{{$f_estructuracion_jrci}}', "<b>".$f_estructuracion_contro_jrci_emitido."</b>", $cuerpo_modificado);
                        // $cuerpo_modificado = str_replace('{{$decreto_calificador_jrci}}', "<b>".$manual_de_califi_jrci_emitido."</b>", $cuerpo_modificado);
                        $cuerpo_modificado = str_replace('ACUERDO', "<b>ACUERDO</b>", $cuerpo_modificado);
                        

                        if (preg_match($patron11, $cuerpo_modificado) && preg_match($patron12, $cuerpo_modificado)) {
                            // Ambos patrones encontrados
                            $cuerpo_modificado = str_replace('{{$sustentacion_jrci}}', $sustentacion_concepto_jrci, $cuerpo_modificado);
                            $cuerpo_modificado = str_replace('{{$sustentacion_jrci1}}', $sustentacion_concepto_jrci1, $cuerpo_modificado);

                            $cuerpo = nl2br($cuerpo_modificado);
                        
                        } elseif (preg_match($patron11, $cuerpo_modificado)) {
                            // Solo patrón11 encontrado
                            $cuerpo_modificado = str_replace('{{$sustentacion_jrci}}', $sustentacion_concepto_jrci, $cuerpo_modificado);

                            $cuerpo = nl2br($cuerpo_modificado);
                        
                        } elseif (preg_match($patron12, $cuerpo_modificado)) {
                            // Solo patrón12 encontrado
                            $cuerpo_modificado = str_replace('{{$sustentacion_jrci1}}', $sustentacion_concepto_jrci1, $cuerpo_modificado);
                            
                            $cuerpo = nl2br($cuerpo_modificado);
                        } else {
                            // Ninguno de los patrones encontrados
                            $cuerpo = "";
                        }

                    } else {
                        $cuerpo = "";
                    }
                }else{

                    if (preg_match($patron2, $cuerpo) && preg_match($patron3, $cuerpo) &&
                        preg_match($patron4, $cuerpo) && preg_match($patron5, $cuerpo)
                    ){
                        $cuerpo_modificado = str_replace('{{$nombre_junta}}', "<b>" . $nombre_junta . "</b>", $cuerpo);
                        //$cuerpo_modificado = str_replace('{{$nro_dictamen}}', "<b>".$nro_dictamen."</b>", $cuerpo);
                        $cuerpo_modificado = str_replace('{{$f_dictamen_jrci}}', "<b>".date("d/m/Y", strtotime($f_dictamen_jrci_emitido))."</b>", $cuerpo_modificado );
                        $cuerpo_modificado = str_replace('{{$nombre_afiliado}}', "<b>".$nombre_afiliado."</b>", $cuerpo_modificado);
                        $cuerpo_modificado = str_replace('{{$tipo_identificacion_afiliado}}', "<b>".$tipo_identificacion."</b>", $cuerpo_modificado);
                        $cuerpo_modificado = str_replace('{{$num_identificacion_afiliado}}', "<b>".$num_identificacion."</b>", $cuerpo_modificado);
                        //$cuerpo_modificado = str_replace('{{$cie10_nombre_cie10_jrci}}', $string_diagnosticos_cie10_jrci, $cuerpo_modificado);
                        //$cuerpo_modificado = str_replace('{{$pcl_jrci}}', "<b>".$porcentaje_pcl_jrci_emitido."</b>", $cuerpo_modificado);
                        //$cuerpo_modificado = str_replace('{{$origen_dx_jrci}}', "<b>".$origen_jrci_emitido."</b>", $cuerpo_modificado);
                        //$cuerpo_modificado = str_replace('{{$f_estructuracion_jrci}}', "<b>".date("d/m/Y", strtotime($f_estructuracion_contro_jrci_emitido))."</b>", $cuerpo_modificado);
                        //$cuerpo_modificado = str_replace('{{$decreto_calificador_jrci}}', "<b>".$manual_de_califi_jrci_emitido."</b>", $cuerpo_modificado);
                        $cuerpo_modificado = str_replace('ACUERDO', "<b>ACUERDO</b>", $cuerpo_modificado);
                        $cuerpo = nl2br($cuerpo_modificado);

                        /*if (preg_match($patron11, $cuerpo_modificado) && preg_match($patron12, $cuerpo_modificado)) {
                            // Ambos patrones encontrados
                            $cuerpo_modificado = str_replace('{{$sustentacion_jrci}}', $sustentacion_concepto_jrci, $cuerpo_modificado);
                            $cuerpo_modificado = str_replace('{{$sustentacion_jrci1}}', $sustentacion_concepto_jrci1, $cuerpo_modificado);
    
                            $cuerpo = nl2br($cuerpo_modificado);
                        
                        } elseif (preg_match($patron11, $cuerpo_modificado)) {
                            // Solo patrón11 encontrado
                            $cuerpo_modificado = str_replace('{{$sustentacion_jrci}}', $sustentacion_concepto_jrci, $cuerpo_modificado);
    
                            $cuerpo = nl2br($cuerpo_modificado);
                        
                        } elseif (preg_match($patron12, $cuerpo_modificado)) {
                            // Solo patrón12 encontrado
                            $cuerpo_modificado = str_replace('{{$sustentacion_jrci1}}', $sustentacion_concepto_jrci1, $cuerpo_modificado);
                            
                            $cuerpo = nl2br($cuerpo_modificado);
                        } else {
                            // Ninguno de los patrones encontrados
                           // $cuerpo = "";
                        }*/
    
                    }else{
                        $cuerpo = "";
                    }
                }

                print_r($cuerpo);
            ?>
        </div>
        <br><br>
        <div class="fuente_todo_texto firma">
            <span>Cordialmente,</span><br><br><br>
            <span><strong>PROTECCIÓN S.A.</strong></span>
        </div>
        @if(!empty($Agregar_copia))
            <br><br>
            <div class="copias">
                @foreach ($Agregar_copia as $copias => $valor)
                    @if($copias == "Afiliado")
                        <span class="fuente_todo_texto"><strong>Afiliado</strong> {{$afiliado_principal}}</strong></span><br>
                    @else
                        <span class="fuente_todo_texto"><strong>{{$copias}}:</strong> {{$valor}}</span><br>
                    @endif
                @endforeach
            </div>
        @endif
        <br>
        <div class="cuadro fuente_cuadro_inferior" style="margin: 0 auto">
            <span class="fuente_cuadro_inferior"><span class="negrita">Nro. Radicado: <br>{{$nro_radicado}}</span></span><br>
            <span class="fuente_cuadro_inferior"><span class="negrita">{{$tipo_identificacion}} {{$num_identificacion}}</span></span><br>
            <span class="fuente_cuadro_inferior"><span class="negrita">Siniestro: {{$N_siniestro}}</span></span><br>
        </div>
        <div class="radicado">
        </div>
    </div>
    <div class="page_break"></div>
    <div class="anexos">
        @foreach ($anexos as $anexo)
            @php
                $imgBase64 = base64_encode(file_get_contents($anexo));
            @endphp
            <img src="data:image/png;base64,{{ $imgBase64 }}" style="display: block; width: 100%; max-width: 100%; height: 99%;">
        @endforeach
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