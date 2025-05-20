<?php

namespace App\Http\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;
use App\Traits\obtenerMensaje;




class sigmel_wsController extends Controller
{
    use obtenerMensaje;

    protected $id_servicio;

    protected $id_asignacion;

    /** @var Array Validaciones a realizar para cada seccion, las cuales estan vinculadas a unas acciones
     * que se podran ejecutar de manera individual para el campo operado. 
    */
    protected $validaciones_dinamicas = [];

    /** @var Array Contiene las validaciones a ejecutar desde el validator de laravel @link https://laravel.com/docs/10.x/validation */
    protected $ejecutar_validaciones = [];

    /** @var String indica el estado de ejecucion en la que se encuentra el servicio */
    protected $estado_ejecucion;

    /** @var String indica el mensaje devuelto en caso de que ocurra algun error durante las validaciones*/
    protected $msg_validacion;

    /** @var Request contiene la solicitud http entrante */
    protected $request;

    /** @var String Contiene el identificador de X-REQUEST-ID  */
    protected $uuid;

    /** @var Array|Callback Contiene diferentes heramientas para facilitar algunas operaciones durante la ejecucion del servicio*/
    protected $tools;

    /** @var Array Contiene la referencia a las los diferentes servicios que componen la api */
    private $call_instance = [
        "config_manager" => \App\Http\Api\configManager::class
    ];

    /** @var String {compactar | individual} indica la modalidad de salidad de la respuesta */
    protected $modalidad_salida = 'compactar';

    public function __construct(Request $request)
    {
        $configManager = app($this->call_instance["config_manager"]);
        $this->request = $request;
        $this->uuid =  $request->header('x-request-id');
        $this->tools = $configManager->getConfig("tools");
    }

    /**
     * Valida los inputs en funcion de la validaciones disponibles
     * @return this
     */
    public function validar($ejecutar_validaciones_dinamicas = false)
    {   
        $validacion = Validator::make($this->request->all(), $this->ejecutar_validaciones);
        if ($validacion->fails()) {
            $this->estado_ejecucion = "Fallo";
            $this->msg_validacion = self::getMensaje("general",101, [
                "campos_faltantes" => $validacion->errors()
            ]);

        }else if(is_null($this->uuid)){
            $this->estado_ejecucion = "Fallo";
            $this->msg_validacion = self::getMensaje("general",103);
        } else {
            $ejecutar_validaciones_dinamicas ? $this->procesar_validaciones_dinamicas() : "";
        }

        return $this;
    }

    protected function procesar_validaciones_dinamicas(){
        if(empty($this->validaciones_dinamicas)) return;

        if($this->modalidad_salida == 'compactar'){
            foreach ($this->validaciones_dinamicas as $secciones => $campos) {
                foreach ($campos as $campo => $atributos) {
                    if(is_array($atributos)){
                        $acciones = array_filter($atributos, fn($key) => $key !== 'validar', ARRAY_FILTER_USE_KEY);
                        $this->invocar_acciones($acciones, $campo);
                    }else{
                        $this->request->merge([$campo => $atributos]);
                    }
                }
            }
        }else{
            foreach ($this->validaciones_dinamicas as $secciones => $proceso) {
                foreach ($proceso as $x => $campos) {
                    foreach ($campos as $campo => $atributos) {
                        if(is_array($atributos)){
                            $acciones = array_filter($atributos, fn($key) => $key !== 'validar', ARRAY_FILTER_USE_KEY);
                            $this->invocar_acciones($acciones, $campo);
                        }else{
                            $this->request->merge([$campo => $atributos]);
                        }
                    }
                }
            }
        }
    }

    protected function formatear($campo,$target,$param = null){
        list($accion,$aplicar) = explode(":",$target);
        $acciones = [
            "date" => fn($e) => date($aplicar,strtotime($e)),
            "concatenar" => fn($e) =>  $e . $aplicar,
            "comparar" => fn($e,$operador) => eval("return \$e $operador 50;") ? 1 : ($e != '' ? 0 : '')
        ];

        if(isset($acciones[$accion]) && !empty($this->request->{$campo})){
            $resultado = $acciones[$accion]($this->request->{$campo},$param);
            $this->request->merge([$campo => $resultado]);
        }
    }

    /**
     * Accion de verificar la ciudad suministrada en el input, si la ciudad no esta registrada en el sistema fallara.
     * @var String Campo sobre el cual se esta operando la accion
     * @var Array|String Atributos sobre los cuales estara interactuando la accion
     * @return void
     */
    private function verificar_ciudad($campo, $valores):void {
        $municipio_existe = $this->tools["get_municipio"]($this->request->{$campo});

        if(!empty($this->request->{$campo}) && is_null($municipio_existe)){
            Log::channel('log_api')->error("Ciudad no encontrada " . $this->request->{$campo} );
            $this->estado_ejecucion = "Fallo";
            $this->msg_validacion = $this->getMensaje("general",101, [
                "campos_faltantes" => "La ciudad <{$this->request->$campo}> registrada para el campo $campo no fue encontrada"
            ]);
        }
    }
    
    /**
     * Invoca las acciones disponibles para cada campo que se este operando
     * @param Array Listado de acciones
     * @param String Campo que se esta evaluando
     */
    private function invocar_acciones(array $acciones, string $campo)
    {
        foreach ($acciones as $accion => $valores) {
            if (method_exists($this, $accion)) {
                if(is_array($valores)){
                    $this->$accion($campo,...$valores);
                }else{
                    $this->$accion($campo,$valores);
                }
            }
        }
    }

    private function get_var($campo,$target){
        $opciones = [
            "&parent:" => function($param){
                $var = explode(":",$param);
                return $this->{$var[1]} ?? $this->request->{$var[1]};
            },
            "remplazar:" => function($param) use($campo){
                $str = explode(":",$param);
                $str = explode(",",$str[1]);
                $campo = (bool) $this->request->{$campo};

                return $campo ? $str[0] : $str[1] ?? '';
            },
            "otro" => ""
        ];
        foreach($opciones as $buscar => $invocar){
            if(strstr($target,$buscar)){
                if(is_callable($invocar)){
                    $this->request->merge([$campo => $invocar($target)]);
                }
            }
        }
    }

    private function get_info($campo,$target,$evento){
        $var = explode(":",$target);
        $buscar = $var[0];
        $obtener = $var[1] ?? null;
        if(isset($this->tools[$buscar])){
            $info = $this->tools[$buscar]($obtener,$this->request->{$evento},$this->id_servicio,$this->id_asignacion);
            $info = is_object($info) ? $info->$obtener ?? "" : $info ?? "";
//            $this->debug([$campo => $info . " - " . $this->id_asignacion]);
            $this->request->merge([$campo => $info]);
        }
    }

    /**
     * Accion de homologar los valores obtenidos de acuerdo a los valores esperados por sigmel
     * @var String Campo sobre el cual se esta operando la accion
     * @var Array|String Atributos sobre los cuales estara interactuando la accion
     * @return void
     */
    private function remplazar($campo, $target):void
    {
        // Crear un array asociativo a partir de las opciones de reemplazo
        $opciones = [];
        foreach (explode(",", (string) $target) as $opcion) {
            list($clave, $valor) = explode(":", $opcion);
            $opciones[trim($clave)] = trim($valor);
        }

        // Verificar si el valor actual del campo tiene una opción de reemplazo
        $valorActual = $this->request->{$campo};
        if (isset($opciones[$valorActual])) {
            $this->request->{$campo} = $opciones[$valorActual];
        }
    }

    /**
     * Accion de validar que el servicio seleccionado pertenezca al proceso que le corresponde
     * @var String Campo sobre el cual se esta operando la accion
     * @var Array|String Atributos sobre los cuales estara interactuando la accion
     * @return void
     */
    private function validar_servicio($campo, $target){
        if($this->request->input("servicio") != $this->request->servicio) return;
        
        if (isset($target[$this->request->proceso]) && !in_array($this->request->servicio, $target[$this->request->proceso])) {
            $this->estado_ejecucion = "Fallo";
            $this->msg_validacion = $this->getMensaje("general",101, [
                "campos_faltantes" => "El servicio seleccionado no corresponde al proceso {$this->request->proceso} seleccionado. Por favor verifique."
            ]);
        }
    }

    /**
     * Funcion basica para imprimir valores en caso de debug
     * @return Void
     */
    protected function debug($debug):void{
        Log::channel('log_api')->debug("TEST: ",["test" => $debug]);

        if(is_array($debug)){
            echo json_encode($debug) . "\n \n";
        }else{
            echo "$debug \n";
        }
    }

}

?>