<?php

class AutomovilModel
{

    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;' . 'dbname=db_viajes;charset=utf8', 'root', '');
    }


    //----------------------------Funcion gelAll (ok)--------------------//
    public function getAllAutomoviles()
    {
        // 1. abro conexión a la DB
        // ya esta abierta por el constructor de la clase

        // 2. ejecuto la sentencia (2 subpasos)
        $query = $this->db->prepare("SELECT * FROM automoviles");
        $query->execute();

        // 3. obtengo los resultados
        $automoviles = $query->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos

        return $automoviles;
    }

    //----------------------------Funcion getElementByIdAutomovil (ok)--------------------//

    public function getAutomovilByIdAutomovil($id_automovil)
    {
        $query = $this->db->prepare("SELECT * FROM automoviles WHERE id_automovil=$id_automovil");
        $query->execute();
        $automoviles = $query->fetchAll(PDO::FETCH_OBJ);
        return $automoviles;
    }

    //----------------------------Funcion Insert (Ok)--------------------

    public function insertAutomovil($marca, $modelo, $anio, $color, $patente, $licencia)
    {
        $query = $this->db->prepare("INSERT INTO automoviles(marca, modelo, anio, color, patente, licencia) VALUES(?,?,?,?,?,?)");
        $query->execute(array($marca, $modelo, $anio, $color, $patente, $licencia));

        return $this->db->lastInsertId();
    }

    //----------------------------Funcion Edit (Ok)--------------------//

    public function getAutomovilById($id_automovil)
    {
        $query = $this->db->prepare("SELECT * FROM automoviles WHERE id_automovil=?");
        $query->execute(array($id_automovil));
        $automoviles = $query->fetchAll(PDO::FETCH_OBJ);
        return $automoviles;
    }

    public function editAutomovilById($marca, $modelo, $anio, $color, $patente, $licencia, $id_automovil)
    {
        $query = $this->db->prepare("UPDATE automoviles SET marca=?, modelo=?, anio=?, color=?, patente=?, licencia=? WHERE id_automovil=?");
        $query->execute(array($marca, $modelo, $anio, $color, $patente, $licencia, $id_automovil));
    }

    //----------------------------Funcion delete (ok)--------------------//

    public function deleteAutomovilById($id_automovil)
    {
        $query = $this->db->prepare("DELETE FROM automoviles WHERE id_automovil=?");
        $query->execute(array($id_automovil));
    }
}
