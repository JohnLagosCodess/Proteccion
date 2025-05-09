<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Log;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        $salida = null;
        $resultado = null;
    
        // Cambia el propietario siempre para las rutas de documento eventos, logs, cache, views
        exec('/usr/local/bin/deploy_wrapper', $salida, $resultado);

        if ($resultado !== 0) {
            Log::error("Fallo el cambio de permisos desde deploy.sh", [
                'salida' => $salida,
                'exit_code' => $resultado,
            ]);
        }
    }
}
