<?php
namespace App\Services;
use App\Models\sigmel_clientes;
use App\Models\sigmel_informacion_firmas_clientes;

class PlantillaProformas
{

    public $LOGO;
    public $PATH_LOGO;
    public $PATH_FOOTER;
    public $footer;
    public $firma_cliente;
    CONST ID_CLIENTE = 1;

    public function __construct()
    {
        $cliente = sigmel_clientes::on('sigmel_gestiones')
        ->select('Logo_cliente','Footer_cliente')
        ->where([['Id_cliente', self::ID_CLIENTE]])
        ->first();
        
        $firmaclientecompleta = sigmel_informacion_firmas_clientes::on('sigmel_gestiones')->select('Firma')
        ->where('Id_cliente', self::ID_CLIENTE)->first();

        $this->firma_cliente = $firmaclientecompleta->Firma ?? 'No firma';
        $this->LOGO = $cliente->Logo_cliente ?? "sin logo";
        $this->PATH_LOGO = !is_null($cliente) ? "/logos_clientes/" . self::ID_CLIENTE . "/{$cliente->Logo_cliente}" : "";
        $this->PATH_FOOTER = !is_null($cliente) ? "/footer_clientes/" . self::ID_CLIENTE . "/{$cliente->Footer_cliente}" : "";
        $this->footer = $cliente->Footer_cliente ?? null;
    }

}