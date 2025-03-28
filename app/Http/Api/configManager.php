<?php

namespace App\Http\Api;

    class configManager{
    
        /**
         * Obtiene todas las configuraciones creadas en el archivo de configuracion
         * @return mixed
         */
        public function getConfigAll(): mixed { return config("api"); }


        /**
         * Obtiene la configuracion para el indice dado
         * @param String $target Indice que contiene la configuracion a aplicar
         * @return mixed
         */
        public function getConfig(string $target): mixed {

            //Cargamos las configuraciones de la api
            $tools = config("api");

            //Obtiene la configuracion indicada que caso de que este disponible
            if (array_key_exists($target, $tools)) {
                return $tools[$target];
            }

            return null;
        }
    }

?>