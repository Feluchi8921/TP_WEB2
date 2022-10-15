<?php
require_once './app/models/viajeModel.php';
require_once './app/views/viajeView.php';
require_once './app/helpers/authHelper.php';


class ViajeController
{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new ViajeModel();
        $this->view = new ViajeView();
        // barrera de seguridad
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
    }

    //----------------------------Funcion Add (Ok)--------------------//

    public function formViaje($id_automovil)
    {
        $this->view->formViaje($id_automovil); //primero muestro el formulario (Ok)

    }

    public function addViaje($id_automovil)
    {
        if (!empty($_POST)) {
            $this->model->insertViaje($_POST['salida'], $_POST['destino'], $_POST['dia'], $_POST['horario'], $_POST['lugares'], $_POST['mascota'], $_POST['precio'], $_POST['datos'], $id_automovil);
        } else {
            $this->view->showError("Complete todos los campos");
            die();
        }
        header("Location: " . BASE_URL);
    }

    //----------------------------Funcion ViewViaje--------------------//
    public function viewViaje($id_viaje)
    {
        $viajes = $this->model->getAutomovilByIdAutomovil($id_viaje);
        $this->view->viewViaje($viajes); //primero muestro el formulario (Ok)

    }

    //----------------------------Funcion Edit (Ok)--------------------//
    public function formEditViaje($id_viaje)
    {
        $viajes = $this->model->getViajeById($id_viaje);
        $this->view->formEditViaje($viajes); //primero muestro el formulario (Ok)

    }
    public function editViajeById($id_viaje)
    {
        if (!empty($_POST)) {
            $salida = $_POST['salida'];
            $destino = $_POST['destino'];
            $dia = $_POST['dia'];
            $horario = $_POST['horario'];
            $lugares = $_POST['lugares'];
            $mascota = $_POST['mascota'];
            $precio = $_POST['precio'];
            $datos = $_POST['datos'];

            $this->model->editViajeById($salida, $destino, $dia, $horario, $lugares, $mascota, $precio, $datos, $id_viaje);
        } else {
            $this->view->showError("No se pudo editar con exito");
            die();
        }
        header("Location: " . BASE_URL);
    }


    //----------------------------Funcion delete (ok)--------------------//

    public function deleteViaje($id_viaje)
    {
        $this->model->deleteViajeById($id_viaje);
        header("Location: " . BASE_URL);
    }
}
