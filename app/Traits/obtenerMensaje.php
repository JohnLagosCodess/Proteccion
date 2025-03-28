<?php

namespace App\Traits;

    trait obtenerMensaje{
    
        private $msj_disponibles = [
            "general" => [
                101 => "No se puede procesar la solicitud, datos incompletos.",  
                103 => "No se puede procesar la solicitud, UIID faltante en el encabezado de la solicitud.",
                000 => "Error indefinido, por favor intentelo mas tarde.",
                100 => "Autenticacion fallida, por favor intente nuevamente.",
                102 => "Procesamiento exitoso.",
            ],
            "registrarEvento" => [
            ],
            "advance" => [
            ]
        ];

        public function getMensaje(string $servicio,int $codigo, array $msj_adicional = []): Array {

            if(!isset($this->msj_disponibles[$servicio]) || !array_key_exists($codigo,$this->msj_disponibles[$servicio])){
                throw new \InvalidArgumentException("Codigo y/o servicio no disponible", 1);
            }

            $mensaje = [
                "codigo_error" => $codigo,
                "mensaje" => $this->msj_disponibles[$servicio][$codigo],
            ];
            
            return empty($msj_adicional) ? $mensaje : array_merge($mensaje,$msj_adicional);
        }
    }

?>