<?php 
namespace App\Contracts;

use App\Http\Api\sigmel_wsController;
use Illuminate\Http\JsonResponse;

    interface  Api {

    /**
     * Metodo principal para que las acciones puedan ser invocadas
     */
    public function registrar(): JsonResponse|Array;
}
?>