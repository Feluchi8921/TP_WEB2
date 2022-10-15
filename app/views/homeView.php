<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class HomeView
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty(); // inicializo Smarty
    }

    //----------------------------Funcion Home (Ok) --------------------//

    function showHome($viajes, $automoviles)
    {
        $this->smarty->assign('viajes', $viajes);
        $this->smarty->assign('automoviles', $automoviles);

        // mostrar el tpl
        $this->smarty->display('home.tpl');
    }

    //----------------------------Funcion filtroViaje(Ok)--------------------//

    function formFiltroViaje()
    {
        $this->smarty->display('formFiltroViaje.tpl');
    }

    function listFiltroViaje($viajes)
    {
        $this->smarty->assign("viajes", $viajes);
        $this->smarty->assign("count", count($viajes));
        $this->smarty->display('listFiltroViaje.tpl'); //muestro la tabla

    }
    //----------------------------Funcion filtroAutomovil(Ok)--------------------//

    function formFiltroAutomovil()
    {
        $this->smarty->display('formFiltroAutomovil.tpl');
    }

    function listFiltroAutomovil($automoviles)
    {
        $this->smarty->assign("automoviles", $automoviles);
        $this->smarty->assign("count", count($automoviles));
        $this->smarty->display('listFiltroAutomovil.tpl'); //muestro la tabla

    }
}
