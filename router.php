<?php
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');
require_once './app/controllers/automovilController.php';
require_once './app/controllers/viajeController.php';
require_once './app/controllers/homeController.php';
require_once './app/controllers/authController.php';

$action = 'home'; // acción por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

// parsea la accion Ej: dev/juan --> ['dev', juan]
$params = explode('/', $action);

// tabla de ruteo
switch ($params[0]) {
        //----------------home (ok)--------------------//
    case 'home':
        $homeController = new HomeController();
        $homeController->home();
        break;
        //----------------filtroViaje (ok)--------------------
    case 'formFiltroViaje':
        $homeController = new HomeController();
        $homeController->formFiltroViaje();
        break;
    case 'filterSearchViaje':
        $homeController = new HomeController();
        $homeController->filterSearchViaje();
        break;
        //----------------filtroAuto (ok)--------------------
    case 'formFiltroAutomovil':
        $homeController = new HomeController();
        $homeController->formFiltroAutomovil();
        break;
    case 'filterSearchAutomovil':
        $homeController = new HomeController();
        $homeController->filterSearchAutomovil();
        break;
        //----------------login (ok)--------------------//
    case 'login':
        $authController = new AuthController();
        $authController->showFormLogin(); //muestro el form
        break;
    case 'validate':
        $authController = new AuthController();
        $authController->validateUser(); //valido los datos
        break;
    case 'logout':
        $authController = new AuthController();
        $authController->logout();
        break;

        //----------------Automovil--------------------

        //----------------Edit (Ok)--------------------//

    case 'formEditAutomovil':
        $automovilController = new AutomovilController();
        $id_automovil = $params[1];
        $automovilController->formEditAutomovil($id_automovil);
        break;
    case 'editAutomovilById':
        $automovilController = new AutomovilController();
        $id_automovil = $params[1];
        $automovilController->editAutomovilById($id_automovil);
        break;
        //----------------Add (Ok)--------------------//
    case 'formAutomovil': //primero muestro el form
        $automovilController = new AutomovilController();
        $automovilController->formAutomovil();
        break;
    case 'addAutomovil': //una vez en el form cargo los datos
        $automovilController = new AutomovilController();
        $automovilController->addAutomovil();
        break;

        //----------------Delete (Ok)--------------------//
    case 'deleteAutomovilById':
        $automovilController = new AutomovilController();
        // obtengo el parametro de la acción
        $id_automovil = $params[1];
        $automovilController->deleteAutomovil($id_automovil);
        break;

        //----------------Viaje--------------------

        //----------------Ver viaje (ok)--------------------//

    case 'viewViaje':
        $viajeController = new ViajeController();
        $id_automovil = $params[1];
        $viajeController->viewViaje($id_automovil);
        break;
        //----------------Add (Ok)--------------------//

    case 'formViaje': //primero muestro el form
        $viajeController = new ViajeController();
        $id_automovil = $params[1];
        $viajeController->formViaje($id_automovil);
        break;

    case 'addViaje': //una vez en el form cargo los datos
        $viajeController = new ViajeController();
        $id_automovil = $params[1];
        $viajeController->addViaje($id_automovil);
        break;

        //----------------Edit--------------------//
    case 'formEditViaje':
        $viajeController = new ViajeController();
        $id_viaje = $params[1];
        $viajeController->formEditViaje($id_viaje);
        break;
    case 'editViajeById':
        $viajeController = new ViajeController();
        $id_viaje = $params[1];
        $viajeController->editViajeById($id_viaje);
        break;
        //----------------Delete (Ok)--------------------//
    case 'deleteViajeById':
        $viajeController = new ViajeController();
        // obtengo el parametro de la acción
        $id_viaje = $params[1];
        $viajeController->deleteViaje($id_viaje);
        break;

    default:
        echo ('404 Page not found');
        break;
}
