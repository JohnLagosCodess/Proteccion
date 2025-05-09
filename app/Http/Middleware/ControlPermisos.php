<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Log;

class ControlPermisos
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        $salida = null;
        $resultado = null;
    
        // Cambia el propietario siempre para las rutas de documento eventos, logs, cache, views
        exec('/usr/local/bin/deploy_wrapper', $salida, $resultado);

        Log::info("Test ",[
            'request' => $request->all(),
        ]);

        if ($resultado !== 0) {
            Log::error("Fallo el cambio de permisos desde deploy.sh", [
                'salida' => $salida,
                'exit_code' => $resultado,
                'request' => $request->all(),
            ]);
        }

        return $next($request);
    }
}
