<?php

namespace App\Traits;

    trait obtenerMensaje{
    
        private $msj_disponibles = [
            000 => "Error indefinido, por favor intentelo mas tarde.",
            100 => "Autenticacion fallida, por favor intente nuevamente.",
            101 => "No se puede procesar la solicitud, datos incompletos.",
            102 => "Procesamiento exitoso.",
            103 => "No se puede procesar la solicitud, UIID faltante en el encabezado de la solicitud."
        ];

        public function getMensaje(int $codigo, array $msj_adicional = []): Array {

            if(!array_key_exists($codigo,$this->msj_disponibles)){
                throw new \InvalidArgumentException("Codigo no disponible", 1);
            }

            $mensaje = [
                "codigo_error" => $codigo,
                "mensaje" => $this->msj_disponibles[$codigo],
            ];
            
            return empty($msj_adicional) ? $mensaje : array_merge($mensaje,$msj_adicional);
        }
    }

?>