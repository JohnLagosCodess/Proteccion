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
            top: -3cm;
            left: 0cm;
            width: 100%;
            text-align: right; 
        }
        .codigo_qr{
            position: absolute;
            top: 5px; 
            left: 58px; 
            max-width: 90px; 
            max-height: 70px; 
        }
        .logo_header{
            position: absolute;
            /* max-width: 40%; */
            width: 150px;
            height: auto;
            left: 530px;
            max-height: 80px; 
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
    </style>
</head>
<body>
    <div id="header">    
        <table class="tabla_header">
            <tbody>holaquemas
                <tr>
                    <td>
                        <img src="data:image/png;base64,{{ base64_encode($codigoQR) }}" class="codigo_qr" alt="Código QR">
                    </td>                    
                    <td>
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
                <span style="color: #3C3C3C; margin-top:2px;">{{$nombre_afiliado}} - {{$tipo_identificacion}} {{$num_identificacion}} - SINIESTRO: {{$N_siniestro}}</span>
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
                    {{$nombre_afiliado}} - {{$tipo_identificacion}} {{$num_identificacion}} - SINIESTRO: {{$N_siniestro}} 
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
</body>
</html>