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
                <span style="color: #4D4D4D; margin-top:2px;">{{$nombre_afiliado}} - {{$t_documento}} {{$n_documento}} - Siniestro: {{$N_siniestro}} </span>
            </div>
        @else
            <div class="footer_content" style="text-align:center;">
                <span style="position: absolute; width: 100%; text-align:center; top: 10px; left:0px; color:#4D4D4D; font-weight:bold; font-size: 11px;">
                    {{$nombre_afiliado}} - {{$t_documento}} {{$n_documento}} - SINIESTRO: {{$N_siniestro}} 
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
        <p class="fuente_todo_texto derecha fecha_comunicado"><span class="negrita">{{$ciudad_comunicado}},  {{$fecha_sustentacion_jrci}}</span></p>
        <br><br>
        <div class="tabla2" style="margin-top: 30px;">
            <span class="fuente_todo_texto">Señores: <br><strong>{{$nombre_junta}}</strong></span><br>
            <span class="fuente_todo_texto">{{$email_junta}}</span><br>
            <span class="fuente_todo_texto">{{$direccion_junta}}</span><br>
            <span class="fuente_todo_texto">Tel. {{$telefono_junta}}</span><br>
            @if($ciudad_junta == "Bogota D.C.")
                <span class="fuente_todo_texto">{{$ciudad_junta}}</span>
            @else
                <span class="fuente_todo_texto">{{$ciudad_junta}} - {{$departamento_junta}}</span>
            @endif
            
        </div>
        <br><br>
        <div style="float: right;text-align: right; width:97%; margin-top:30px; margin-bottom:30px;">
            <div class="col-6">
                <span class="fuente_todo_texto negrita"> Asunto: {{$asunto}}</span><br>
                <span>CASO DEL (LA) SEÑOR(A) <strong>{{$nombre_afiliado}} {{$t_documento}}. {{$n_documento}}</strong></span><br>
                @if($info_afiliado->Tipo_afiliado == 27)
                    <span class="fuente_todo_texto">Afiliado(a): <strong>{{$info_afiliado->Nombre_afiliado_benefi}} {{$info_afiliado->t_doc_beneficiario}}. {{$info_afiliado->Nro_identificacion_benefi}}</strong></span>
                @endif
            </div>
        </div>
        <div class="fuente_todo_texto" style="margin-bottom: 2em; text-align: justify;">
            @php
                $target = [
                    "diagnosticos" => '{{$cie10_nombre_cie10_jrci}}',
                    "nombre_junta" => '{{$nombre_junta}}',
                    "n_dictamen" => '{{$n_dictamen}}',
                    "f_dictamen_jcri" => '{{$f_dictamen_jrci}}',
                    "nombre_afiliado" => '{{$nombre_afiliado}}',
                    "t_documento" => '{{$tipo_identificacion_afiliado}}',
                    "n_documento" => '{{$num_identificacion_afiliado}}',
                    "pcl_jrci" => '{{$pcl_jrci}}',
                    "tipo_evento" => '{{$tipo_evento}}',
                    "origen_jrci" => '{{$origen_jrci}}',
                    "sustentacion_jrci" => '{{$sustentacion_jrci}}',
                    "f_estructuracion_jrci" => '{{$f_estructuracion_jrci}}',
                ];
                
                foreach ($target as $remplazar => $buscar) {
                    $cuerpo = nl2br(str_replace($buscar,$$remplazar,$cuerpo));
                }

                print_r($cuerpo);
            @endphp

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
        <br>
        <div class="radicado">
            <div class="cuadro fuente_cuadro_inferior" style="margin: 0 auto">
                <span class="fuente_cuadro_inferior"><span class="negrita">Nro. Radicado: <br>{{$nro_radicado}}</span></span><br>
                <span class="fuente_cuadro_inferior"><span class="negrita">{{$t_documento}} {{$n_documento}}</span></span><br>
                <span class="fuente_cuadro_inferior"><span class="negrita">Siniestro: {{$N_siniestro}}</span></span><br>
            </div>
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
            $pdf->text(520, 825, "Página $PAGE_NUM de $PAGE_COUNT", $font, 9);
        ');
    }
</script>
</body>
</html>