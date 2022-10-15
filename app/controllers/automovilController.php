<?php
require_once './app/models/automovilModel.php';
require_once './app/views/automovilView.php';
require_once './app/helpers/authHelper.php';

class AutomovilController
{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new AutomovilModel();
        $this->view = new AutomovilView();
        // barrera de seguridad
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
    }


    //----------------------------Funcion add (Ok) --------------------

    public function formAutomovil()
    {
        $this->view->formAutomovil(); //primero muestro el formulario
    }

    public function addAutomovil()
    { //inserto todos los datos
        if (!empty($_POST)) {
            $marca = $_POST['marca'];
            $modelo = $_POST['modelo'];
            $anio = $_POST['anio'];
            $color = $_POST['color'];
            $patente = $_POST['patente'];
            $licencia = $_POST['licencia'];
            $this->model->insertAutomovil($marca, $modelo, $anio, $color, $patente, $licencia);
        } else {
            $this->view->showError("Complete todos los campos");
            die();
        }
        header("Location: " . BASE_URL);
    }

    //----------------------------Funcion Edit (Ok)--------------------//

    function formEditAutomovil($id_automovil)
    { //Traigo los datos de este id y los inserto el en form
        $automoviles = $this->model->getAutomovilById($id_automovil);
        $this->view->formEditAutomovil($automoviles);
    }

    function editAutomovilById($id_automovil)
    { //reescribo los datos
        if (!empty($_POST)) {
            $marca = $_POST['marca'];
            $modelo = $_POST['modelo'];
            $anio = $_POST['anio'];
            $color = $_POST['color'];
            $patente = $_POST['patente'];
            $licencia = $_POST['licencia'];

            $this->model->editAutomovilById($marca, $modelo, $anio, $color, $patente, $licencia, $id_automovil);
        } else {
            $this->view->showError("No se pudo editar con exito");
            die();
        }
        header("Location: " . BASE_URL);
    }

    //----------------------------Funcion Delete(ok)--------------------//

    function deleteAutomovil($id_automovil)
    {

        $this->model->deleteAutomovilById($id_automovil);
        header("Location: " . BASE_URL);
    }
}
