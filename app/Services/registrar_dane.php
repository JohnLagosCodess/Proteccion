<?php 
namespace App\Services;
use App\Contracts\BaseServicio;
use App\Models\sigmel_informacion_entidades;
use Illuminate\Support\Facades\File;

class registrar_dane extends BaseServicio{

    /**
     * Funcion principal que se invoca al momento de ser llamado desde la funcion
     * @param Array $param Parametros ejecutados por el usuario dentro de la consola.
     */
    public function ejecutar($param){

        $datos = [
            ["NIT" => "800226098", "Nombre" => "BBVA SEGUROS COLOMBIA", "Tipo_Entidad" => 1],
            ["NIT" => "800226175", "Nombre" => "COLMENA RIESGOS PROFESIONALES", "Tipo_Entidad" => 1],
            ["NIT" => "800240882", "Nombre" => "BBVA SEGUROS DE VIDA COLOMBIA", "Tipo_Entidad" => 1],
            ["NIT" => "800256161", "Nombre" => "SEGUROS DE RIESGOS LABORALES SURAMERICANA", "Tipo_Entidad" => 1],
            ["NIT" => "830008686", "Nombre" => "LA EQUIDAD SEGUROS DE VIDA ORGANISMO COOPERATIVO", "Tipo_Entidad" => 1],
            ["NIT" => "830054904", "Nombre" => "MAPFRE COLOMBIA VIDA SEGUROS", "Tipo_Entidad" => 1],
            ["NIT" => "860002182", "Nombre" => "GLOBAL SEGUROS DE VIDA", "Tipo_Entidad" => 1],
            ["NIT" => "860002183", "Nombre" => "SEGUROS DE VIDA COLPATRIA", "Tipo_Entidad" => 1],
            ["NIT" => "860002400", "Nombre" => "LA PREVISORA DE SEGUROS S A", "Tipo_Entidad" => 1],
            ["NIT" => "860002503", "Nombre" => "SEGUROS BOLIVAR", "Tipo_Entidad" => 1],
            ["NIT" => "860002528", "Nombre" => "COMPAÑIA AGRICOLA DE SEGUROS DE VIDA", "Tipo_Entidad" => 1],
            ["NIT" => "860004974", "Nombre" => "GRAN ARP", "Tipo_Entidad" => 1],
            ["NIT" => "860008645", "Nombre" => "LIBERTY SEGUROS DE VIDA ARP", "Tipo_Entidad" => 1],
            ["NIT" => "860009174", "Nombre" => "SEGUROS DEL ESTADO S.A. /SUC. MEDELLIN", "Tipo_Entidad" => 1],
            ["NIT" => "860009192", "Nombre" => "LATINOAMERICANA DE SEGUROS", "Tipo_Entidad" => 1],
            ["NIT" => "860009578", "Nombre" => "SEGUROS DEL ESTADO S A", "Tipo_Entidad" => 1],
            ["NIT" => "860011153", "Nombre" => "POSITIVA COMPAÑIA DE SEGUROS SA", "Tipo_Entidad" => 1],
            ["NIT" => "860022137", "Nombre" => "CIA DE SEGUROS DE VIDA AURORA SA", "Tipo_Entidad" => 1],
            ["NIT" => "860026182", "Nombre" => "ALLIANZ SEGUROS", "Tipo_Entidad" => 1],
            ["NIT" => "860028415", "Nombre" => "SEGUROS LA EQUIDAD ORGANISMO COOPERATIVO", "Tipo_Entidad" => 1],
            ["NIT" => "860039988", "Nombre" => "LIBERTY SEGUROS", "Tipo_Entidad" => 1],
            ["NIT" => "860503617", "Nombre" => "SEGUROS DE VIDA ALFA", "Tipo_Entidad" => 1],
            ["NIT" => "890800152", "Nombre" => "CIA DE SEGUROS ATLAS DE VIDA", "Tipo_Entidad" => 1],
            ["NIT" => "890800153", "Nombre" => "COMPAÑIA DE SEGUROS ATLAS", "Tipo_Entidad" => 1],
            ["NIT" => "890903790", "Nombre" => "ARL SURA - NUEVO", "Tipo_Entidad" => 1],
            ["NIT" => "901469580", "Nombre" => "COLSANITAS", "Tipo_Entidad" => 1],
            ["NIT" => "901153056", "Nombre" => "UT RED INTEGRADA FOSCAL – CUB", "Tipo_Entidad" => 1],
            ["NIT" => "800045138", "Nombre" => "BONSALUD", "Tipo_Entidad" => 3],
            ["NIT" => "800048533", "Nombre" => "COMPENSAR, ESTE NIT NO ES EL CORRECTO", "Tipo_Entidad" => 3],
            ["NIT" => "800088702", "Nombre" => "EPS SURA", "Tipo_Entidad" => 3],
            ["NIT" => "800106339", "Nombre" => "SALUD COLMENA", "Tipo_Entidad" => 3],
            ["NIT" => "800112806", "Nombre" => "FONDO DE PASIVO SOCIAL DE FERROCARRILES NAL DE COL", "Tipo_Entidad" => 3],
            ["NIT" => "800118954", "Nombre" => "FONDO DE SEGURIDAD SOCIAL EN SALUD -UNIV.NARIÑO-", "Tipo_Entidad" => 3],
            ["NIT" => "800130907", "Nombre" => "SALUD TOTAL", "Tipo_Entidad" => 3],
            ["NIT" => "800140680", "Nombre" => "UNIMEC", "Tipo_Entidad" => 3],
            ["NIT" => "800140949", "Nombre" => "MEDIMAS", "Tipo_Entidad" => 3],
            ["NIT" => "800250119", "Nombre" => "SALUDCOOP", "Tipo_Entidad" => 3],
            ["NIT" => "800251440", "Nombre" => "EPS SANITAS", "Tipo_Entidad" => 3],
            ["NIT" => "804001273", "Nombre" => "SOLSALUD EPS", "Tipo_Entidad" => 3],
            ["NIT" => "805000427", "Nombre" => "COOMEVA", "Tipo_Entidad" => 3],
            ["NIT" => "805001157", "Nombre" => "SOS SERVICIO OCCIDENTAL DE SALUD", "Tipo_Entidad" => 3],
            ["NIT" => "810000878", "Nombre" => "E.P.S DE CALDAS", "Tipo_Entidad" => 3],
            ["NIT" => "830003564", "Nombre" => "FAMISANAR", "Tipo_Entidad" => 3],
            ["NIT" => "830006404", "Nombre" => "HUMANA VIVIR", "Tipo_Entidad" => 3],
            ["NIT" => "830009783", "Nombre" => "CRUZ BLANCA", "Tipo_Entidad" => 3],
            ["NIT" => "830079672", "Nombre" => "CONSORCIO FISALUD FOSYGA", "Tipo_Entidad" => 3],
            ["NIT" => "830096513", "Nombre" => "RED SALUD ATENCION HUMANA EPS", "Tipo_Entidad" => 3],
            ["NIT" => "830113831", "Nombre" => "ALIANSALUD", "Tipo_Entidad" => 3],
            ["NIT" => "860013816", "Nombre" => "INSTITUTO DE SEGUROS SOCIALES", "Tipo_Entidad" => 3],
            ["NIT" => "860027404", "Nombre" => "EPS COLSEGUROS", "Tipo_Entidad" => 3],
            ["NIT" => "860066942", "Nombre" => "COMPENSAR", "Tipo_Entidad" => 3],
            ["NIT" => "860512237", "Nombre" => "COLPATRIA SALUD", "Tipo_Entidad" => 3],
            ["NIT" => "860525148", "Nombre" => "FIDUCIARIA LA PREVISORA", "Tipo_Entidad" => 3],
            ["NIT" => "890203183", "Nombre" => "CAPRUIS CAJA DE PREVISION SOCIAL DE LA UIS", "Tipo_Entidad" => 3],
            ["NIT" => "890303093", "Nombre" => "SALUD COMFENALCO VALLE", "Tipo_Entidad" => 3],
            ["NIT" => "890900842", "Nombre" => "SALUD COMFENALCO", "Tipo_Entidad" => 3],
            ["NIT" => "890904996", "Nombre" => "DPTO MEDICO EEPP", "Tipo_Entidad" => 3],
            ["NIT" => "890905211", "Nombre" => "MUNICIPIO DE MEDELLIN", "Tipo_Entidad" => 3],
            ["NIT" => "890980040", "Nombre" => "PROGRAMA DE SALUD UDEA", "Tipo_Entidad" => 3],
            ["NIT" => "899999010", "Nombre" => "EPS CAJANAL", "Tipo_Entidad" => 3],
            ["NIT" => "899999026", "Nombre" => "CAPRECOM EPS", "Tipo_Entidad" => 3],
            ["NIT" => "899999063", "Nombre" => "UNISALUD", "Tipo_Entidad" => 3],
            ["NIT" => "830074184", "Nombre" => "SALUDVIDA E.P.S", "Tipo_Entidad" => 3],
            ["NIT" => "900156264", "Nombre" => "NUEVA EPS", "Tipo_Entidad" => 3],
            ["NIT" => "891500319", "Nombre" => "UNIVERSIDAD DEL CAUCA - UNIDAD DE SALUD", "Tipo_Entidad" => 3],
            ["NIT" => "900074992", "Nombre" => "GOLDEN GROUP EPS", "Tipo_Entidad" => 3],
            ["NIT" => "900089104", "Nombre" => "ENLACE OPERATIVO", "Tipo_Entidad" => 3],
            ["NIT" => "814000337", "Nombre" => "EMSSANAR", "Tipo_Entidad" => 3],
            ["NIT" => "800249241", "Nombre" => "COOSALUD EPS", "Tipo_Entidad" => 3],
            ["NIT" => "900604350", "Nombre" => "SAVIA SALUD", "Tipo_Entidad" => 3],
            ["NIT" => "806008394", "Nombre" => "EPS-S MUTUAL SER", "Tipo_Entidad" => 3],
            ["NIT" => "818000140", "Nombre" => "EPS-S AMBUQ ASOC MUTUAL BARRIOS UNIDOS DE QUIBDO", "Tipo_Entidad" => 3],
            ["NIT" => "837000084", "Nombre" => "EPS INDIGENA MALLAMAS", "Tipo_Entidad" => 3],
            ["NIT" => "891280008", "Nombre" => "COMFAMILIAR NARIÑO", "Tipo_Entidad" => 3],
            ["NIT" => "890102044", "Nombre" => "CAJA DE COMPENSACIÓN FAMILIAR CAJACOPI ATLÁNTICO", "Tipo_Entidad" => 3],
            ["NIT" => "804002105", "Nombre" => "EPS-S COMPARTA", "Tipo_Entidad" => 3],
            ["NIT" => "811004055", "Nombre" => "EPS EMDI SALUD ESS", "Tipo_Entidad" => 3],
            ["NIT" => "900298372", "Nombre" => "CAPITAL SALUD EPSS S.A.S.", "Tipo_Entidad" => 3],
            ["NIT" => "817000248", "Nombre" => "ASMET SALUD-ASOCIACIÓN MUTUAL LA ESPERANZA ASMET", "Tipo_Entidad" => 3],
            ["NIT" => "891856000", "Nombre" => "CAPRESOCA EPS", "Tipo_Entidad" => 3],
            ["NIT" => "899999107", "Nombre" => "CONVIDA ADMINISTRADORA DE RÉGIMEN SUBSIDIADO", "Tipo_Entidad" => 3],
            ["NIT" => "824001398", "Nombre" => "DUSAKAWI EPS", "Tipo_Entidad" => 3],
            ["NIT" => "900462447", "Nombre" => "FONDO DE SOLIDARIDAD Y GARANTÍA FOSYGA", "Tipo_Entidad" => 3],
            ["NIT" => "891080005", "Nombre" => "COMFACOR EPS-CCF DE CORDOBA", "Tipo_Entidad" => 3],
            ["NIT" => "860045904", "Nombre" => "COMFACUNDI - CCF DE CUNDINAMARCA", "Tipo_Entidad" => 3],
            ["NIT" => "890399010", "Nombre" => "UNIVERSIDAD DEL VALLE", "Tipo_Entidad" => 3],
            ["NIT" => "899999068", "Nombre" => "ECOPETROL", "Tipo_Entidad" => 3],
            ["NIT" => "890500675", "Nombre" => "EPS COMFAORIENTE EPS", "Tipo_Entidad" => 3],
            ["NIT" => "832000760", "Nombre" => "EPS ECOOPSOS", "Tipo_Entidad" => 3],
            ["NIT" => "891180008", "Nombre" => "COMFAMILIAR HUILA", "Tipo_Entidad" => 3],
            ["NIT" => "890201213", "Nombre" => "UNIDAD ESPECIALIZADA EN SALUD ¿ AUISALUD", "Tipo_Entidad" => 3],
            ["NIT" => "817001773", "Nombre" => "ASOCIACIÓN INDÍGENA DEL CAUCA", "Tipo_Entidad" => 3],
            ["NIT" => "899999003", "Nombre" => "MINISTERIO DE DEFENSA - FAC", "Tipo_Entidad" => 3],
            ["NIT" => "900914254", "Nombre" => "FUNDACIÓN SALUD MIA EPS", "Tipo_Entidad" => 3],
            ["NIT" => "900073356", "Nombre" => "INTISALUD IPS", "Tipo_Entidad" => 3],
            ["NIT" => "891600091", "Nombre" => "COMFACHOCO", "Tipo_Entidad" => 3],
            ["NIT" => "811037385", "Nombre" => "EPS OMNISALUD", "Tipo_Entidad" => 3],
            ["NIT" => "901097473", "Nombre" => "MEDIMAS -NUEVO", "Tipo_Entidad" => 3],
            ["NIT" => "800249449", "Nombre" => "COOMEVA-NUEVO", "Tipo_Entidad" => 3],
            ["NIT" => "900226715", "Nombre" => "COOSALUD-NUEVO", "Tipo_Entidad" => 3],
            ["NIT" => "9007536338", "Nombre" => "PROSERVANDA", "Tipo_Entidad" => 3],
            ["NIT" => "890984002", "Nombre" => "Universidad CES", "Tipo_Entidad" => 3],
            ["NIT" => "900968320", "Nombre" => "Policía Nacional", "Tipo_Entidad" => 3],
            ["NIT" => "809008362", "Nombre" => "Pijaos Salud EPS Indígena", "Tipo_Entidad" => 3],
            ["NIT" => "811007832", "Nombre" => "IPS SURA", "Tipo_Entidad" => 3],
            ["NIT" => "901167990", "Nombre" => "Junta Medico Laboral IPS S.A.S", "Tipo_Entidad" => 3],
            ["NIT" => "800144331", "Nombre" => "Porvenir Fondo de pensiones y cesantías", "Tipo_Entidad" => 2],
            ["NIT" => "800149496", "Nombre" => "Colfondos fondo de pensiones y cesantías", "Tipo_Entidad" => 2],
            ["NIT" => "800148514", "Nombre" => "Skandia Colombia", "Tipo_Entidad" => 2],
            ["NIT" => "900336004", "Nombre" => "Colpensiones - Administradora colombiana de pensiones", "Tipo_Entidad" => 2],
            ["NIT" => "800138188", "Nombre" => "Proteccion", "Tipo_Entidad" => 2]
        ];
    
        foreach ($datos as $entidad) {
            // Buscar un registro que coincida con el 'Nit_entidad' o 'Nombre_entidad' utilizando LIKE
            $existe = sigmel_informacion_entidades::on('sigmel_gestiones')
                ->where('Nit_entidad', 'like', '%' . $entidad["NIT"] . '%')
                ->orWhere('Nit_simple', 'like', '%' . $entidad["NIT"] . '%')
                ->orWhere('Nombre_entidad', 'like', '%' . $entidad["Nombre"] . '%')
                ->first();
        
            if ($existe) {
                // Si el registro existe, actualiza
                $existe->update([
                    'Nit_entidad' => $entidad["NIT"],
                    'Nit_simple' => $entidad["NIT"],
                ]);
            } else {
                // Si no existe, crea un nuevo registro
                sigmel_informacion_entidades::on('sigmel_gestiones')
                    ->create([
                        'Nit_entidad' => $entidad["NIT"],
                        'Nit_simple' => $entidad["NIT"],
                        'Nombre_entidad' => $entidad["Nombre"],
                        'IdTipo_entidad' => $entidad["Tipo_Entidad"],
                        'Estado_entidad' => 'activo'
                    ]);
            }
        }
        return "Fin :)";

    }

}

?>