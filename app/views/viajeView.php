<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class ViajeView
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty(); // inicializo Smarty
    }
    //----------------------------Funcion ViewViaje (Ok) --------------------//
    public function viewViaje($viajes)
    {

        $this->smarty->assign("viajes", $viajes);
        $this->smarty->assign("count", count($viajes));
        $this->smarty->display('viewViaje.tpl');
    }

    //----------------------------Funcion Edit (Ok) --------------------//

    public function formEditViaje($viajes)
    {
        $this->smarty->assign("viajes", $viajes);
        $this->smarty->display('formEditViaje.tpl');
    }
    //----------------------------Funcion Add (Ok) --------------------//

    function formViaje($id_automovil)
    {
        $this->smarty->assign("id_automovil", $id_automovil);
        $this->smarty->display('formViaje.tpl');
    }


    //----------------------------Funcion Error (Ok) --------------------//

    function showError($error)
    {
        echo "$error";
    }
}
