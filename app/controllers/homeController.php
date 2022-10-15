<?php
require_once './app/models/homeModel.php';
require_once './app/views/homeView.php';
require_once './app/helpers/authHelper.php';


class HomeController
{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new HomeModel();
        $this->view = new HomeView();
    }

    //----------------------------Funcion home(ok)--------------------//

    public function home()
    {
        $authHelper = new AuthHelper();
        $authHelper->useAuth();
        $viajes = $this->model->getAllViajes();
        $automoviles = $this->model->getAllAutomoviles();
        $this->view->showHome($viajes, $automoviles);
    }

    //----------------------------Funcion filtro Viaje(ok)--------------------//

    public function formFiltroViaje()
    {
        $this->view->formFiltroViaje(); //muestro el formulario
    }
    public function filterSearchViaje()
    {
        $viajes = $this->model->getFilterViaje(); //tomo los datos ingresados
        $this->view->listFiltroViaje($viajes);
    }

    //----------------------------Funcion filtro Automovil(ok)--------------------//

    public function formFiltroAutomovil()
    {
        $this->view->formFiltroAutomovil(); //muestro el formulario
    }
    public function filterSearchAutomovil()
    {
        $automoviles = $this->model->getFilterAutomovil(); //tomo los datos ingresados
        $this->view->listFiltroAutomovil($automoviles);
    }
}
