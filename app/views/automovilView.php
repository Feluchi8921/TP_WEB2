<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class AutomovilView
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty(); // inicializo Smarty
    }

    function showError($error)
    {
        echo "$error";
    }

    //----------------------------Funcion Add (Ok) --------------------//

    function formAutomovil($error = null)
    {
        $this->smarty->assign("error", $error);
        $this->smarty->display('formAutomovil.tpl');
    }
    //----------------------------Funcion Edit (ok)--------------------//
    function formEditAutomovil($automoviles)
    {
        $this->smarty->assign("automoviles", $automoviles);
        $this->smarty->display('formEditAutomovil.tpl');
    }
}
