<?php 
namespace App\Services;
use App\Contracts\BaseServicio;
use \App\Models\User;

class api_tokens extends BaseServicio{

    /**
     * Comandos disponibles para invocarse en  la consola
     * @var Array
     */
    protected $comandos = [
        'required' => [
            "--accion" => "Accion a realizar. Acciones disponibles: {generarToken}",
            "--nombre_usuario" => "Nombre del usuario que estara gestionando la API",
            "--email" => "Correo del usuario"
        ]
    ];

    /**
     * Funcion principal que se invoca al momento de ser llamado desde la funcion
     * @param Array $param Parametros ejecutados por el usuario dentro de la consola.
     */
    public function ejecutar($param){


        $accion = $param['required']['accion'];
        $nombre_usuario = $param['required']['nombre_usuario'];
        $email = $param['required']['email'];

        if($accion == "generarToken" && !empty($nombre_usuario) && !empty($email)){
            
            $user = User::firstOrCreate([
                'name' => $nombre_usuario,
                'email' => $email ,
            ]);

            $token = $user->createToken('Token de Acceso para la API', ['*'])->plainTextToken;
        }

        return isset($token) ? "Token generado: $token" : "No se ha podido generar el token";
    }

}

?>