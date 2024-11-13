<?php 
namespace App\Services;
use App\Contracts\BaseServicio;
use App\Models\sigmel_lista_departamentos_municipios;
use Illuminate\Support\Facades\File;

class registrar_dane extends BaseServicio{

    /**
     * Comandos disponibles para invocarse en  la consola
     * @var Array
     */
    protected $comandos = [
        'required' => [
            "--pathData" => "Fuente de informacion para obtener los datos",
        ]
    ];

    /**
     * Funcion principal que se invoca al momento de ser llamado desde la funcion
     * @param Array $param Parametros ejecutados por el usuario dentro de la consola.
     */
    public function ejecutar($param){


        $pathData = $param['required']['pathData'];

        /**
         * Registra y/o actualiza los municipios con base a los nuevos datos
         */
        if(!empty($pathData)){
            $data = File::get($pathData);
 
            $dataArr = json_decode($data,true);

            foreach($dataArr as $item){
              
                $codigo_dane = str_replace(".",'',$item["DANE"]);
                $existe = sigmel_lista_departamentos_municipios::on('sigmel_gestiones')->where('Nombre_municipio',  $item["MUNICIPIO"])->first();
                $consecutivo_dep = sigmel_lista_departamentos_municipios::on('sigmel_gestiones')
                ->select('Id_departamento')->max('Id_departamento');
                $consecutivo_dep += 1;

                if(empty($existe)){
                    sigmel_lista_departamentos_municipios::on('sigmel_gestiones')->insert([
                        "Nombre_departamento" => $item["DEPARTAMENTO"],
                        "codigo_dane" => $codigo_dane,
                        "Nombre_municipio" => $item["MUNICIPIO"],
                        "Id_departamento" => $consecutivo_dep,
                        "Estado" => "activo",
                        "F_registro" => date("y-m-d")
                    ]);
                }else{
                    sigmel_lista_departamentos_municipios::on('sigmel_gestiones')->where('Nombre_municipio', $item["MUNICIPIO"])->Update([
                        "codigo_dane" => $codigo_dane,
                    ]);
                }
        
            }
        }

        return "Fin :)";

    }

}

?>