<?php

class HomeModel
{

    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_viajes;charset=utf8', 'root', '');
    }

    //----------------------------Funcion getAllViajes (ok)--------------------//

    public function getAllViajes()
    {
        // la conexion a la db esta abierta por el constructor de la clase
        $query = $this->db->prepare("SELECT * FROM viajes");
        $query->execute();
        $viajes = $query->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
        return $viajes;
    }

    //----------------------------Funcion getById (ok)--------------------//

    public function getViajeById($id_viaje)
    {
        // la conexion a la db esta abierta por el constructor de la clase
        $query = $this->db->prepare("SELECT * FROM viajes WHERE id_viaje=?");
        $query->execute();
        $viajes = $query->fetch(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
        return $viajes;
    }

    //----------------------------Funcion getAllAutomoviles (ok)--------------------//

    public function getAllAutomoviles()
    {
        $query = $this->db->prepare("SELECT * FROM automoviles");
        $query->execute();
        $automoviles = $query->fetchAll(PDO::FETCH_OBJ);
        return $automoviles;
    }

    //----------------------------Funcion filtroViaje (ok)--------------------//

    public function getFilterViaje()
    {
        if (!empty($_POST)) {
            $salida = $_POST['salida'];
            $destino = $_POST['destino'];
            $dia = $_POST['dia'];
            $query = $this->db->prepare("SELECT * FROM `viajes` WHERE salida=? AND destino=? AND dia=?");
            $query->execute(array($salida, $destino, $dia));
            $viajes = $query->fetchAll(PDO::FETCH_OBJ);
            return $viajes;
        }
    }

    //----------------------------Funcion filtroAutomovil (ok)--------------------//

    public function getFilterAutomovil()
    {
        if (!empty($_POST)) {
            $patente = $_POST['patente'];
            $query = $this->db->prepare("SELECT * FROM `automoviles` WHERE patente=?");
            $query->execute(array($patente));
            $automoviles = $query->fetchAll(PDO::FETCH_OBJ);
            return $automoviles;
        }
    }
}
