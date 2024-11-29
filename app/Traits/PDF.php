<?php

namespace App\Traits;

use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Artisan;
use setasign\Fpdi\Fpdi;

trait PDF
{
    public function convertir_pdf_a_version_compatible($inputPdf, $outputPdf)
    {
        // Comando Ghostscript para convertir a PDF 1.4
        $gsCommand = "gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$outputPdf $inputPdf";

        // Ejecutar el comando en el sistema
        $output = shell_exec($gsCommand);

        // Comprobar si la conversión fue exitosa
        if (File::exists($outputPdf)) {
            return $outputPdf;  // Devuelve el archivo convertido
        } else {
            throw new \Exception("Error al convertir el archivo PDF.");
        }
    }

    public function combinar_pdf(string $doc_origen, string $path_destino, array $anexos)
    {
        // Crear un nuevo documento PDF utilizando nuestra clase extendida
        $pdf = new MiFPDI();
        
        // Función auxiliar para procesar el PDF y agregar sus páginas
        $processPdf = function ($pdfFile) use ($pdf) {
            if (File::exists($pdfFile)) {
                $convertedPdf = $this->convertir_pdf_a_version_compatible($pdfFile, storage_path('app/converted_' . basename($pdfFile)));
                $pageCount = $pdf->setSourceFile($convertedPdf); // Obtiene el número total de páginas
                for ($i = 1; $i <= $pageCount; $i++) {
                    $templateId = $pdf->importPage($i);
                    // Añadir una nueva página antes de usar la plantilla
                    $pdf->AddPage();
                    // Usar la plantilla del documento importado
                    $pdf->useTemplate($templateId);
                }
                unlink($convertedPdf);
            }
        };
    
        // Procesar el documento principal
        $processPdf($doc_origen);
    
        // Añadir anexos
        foreach ($anexos as $anexo) {
            $processPdf($anexo);
        }
    
        // Ahora que todo el contenido está combinado, aplicar el encabezado y pie de página a todo el documento
        $totalPages = $pdf->PageNo();  // Obtener el número total de páginas
    
        // Recorrer todas las páginas y aplicar el encabezado y pie de página
        for ($page = 1; $page <= $totalPages - 1; $page++) {
            $templateId = $pdf->importPage($page);  // Establecer la página actual
            $pdf->Header();
            $pdf->useTemplate($templateId);      // Aplicar el encabezado
            $pdf->Footer();      // Aplicar el pie de página
        }
    
        // Guardar el PDF combinado con encabezado y pie de página
        $pdf->Output($path_destino, 'F');
    }
    
    

}


// Extiende la clase FPDI para personalizar el encabezado y pie de página
class MiFPDI extends Fpdi
{
    // Encabezado
    public function Header()
    {
        // Configurar fuente para el encabezado
        $this->SetFont('Arial', 'B', 12);
        // Mover a la derecha
        $this->Cell(0, 10, 'Encabezado personalizado', 0, 1, 'C');
        // Salto de línea
        $this->Ln(5);
    }

    // Pie de página
    public function Footer()
    {
        // Mover a la posición en la parte inferior
        $this->SetY(-15);
        // Establecer la fuente para el pie de página
        $this->SetFont('Arial', 'I', 8);
        // Agregar texto al pie de página, incluyendo el número de página
        $this->Cell(0, 10, 'Pagina ' . $this->PageNo(), 0, 0, 'C');
    }
}