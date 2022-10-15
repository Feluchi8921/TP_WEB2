<?php

class AuthHelper {

     //Verifico que el user este logueado y si no lo está lo redirijo al login.

    public function checkLoggedIn() {
        session_start();
        if (!isset($_SESSION['IS_LOGGED'])) { //si no inició sesion redirecciona al login
            header("Location: " . BASE_URL. 'login');
            die();
        }
    } 
    public function useAuth(){ //para que mantenga iniciada sesion 
        session_start();
    }
}
