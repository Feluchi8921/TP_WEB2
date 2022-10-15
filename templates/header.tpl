<!DOCTYPE html>
<html lang="en">

<head>
  <base href="{BASE_URL}">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  <title>Rute.Ar 26</title>
</head>

<body>
  <header>
    <img src="./images/autoRuta.jpg" alt="paisajeRuta" style="width:100%;"/>
    <nav class="navbar navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="home" class="float-start ">Bienvenida@ a Rute.Ar 26<img src="./images/ruta26.png"
            alt="logo_ruta26" class="float-start rounded"/></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <!--Si no inicio sesion mostra esto-->
            {if !isset($smarty.session.USER_ID)}
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="login">Login</a>
              </li>
            {else}
              </li>
              <li class="nav-item ml-auto">
                <a class="nav-link" aria-current="page" href="logout">Logout({$smarty.session.USER_EMAIL})</a>
              </li>

              <!--Muestro el filtro de automovil solo si esta logueado(datos de patente y licencia restringidos)-->
              <li class="nav-item ml-auto">
                <a class="nav-link" aria-current="page" href="formFiltroAutomovil">Filtrar búsqueda de automovil</a>
              </li>
            {/if}
            <li class="nav-item ml-auto">
              <a class="nav-link" aria-current="page" href="formFiltroViaje">Filtrar búsqueda de viaje</a>
            </li>

          </ul>
        </div>
      </div>
    </nav>
    <h1 class="text-center fs-2 fst-italic ms-5 mt-5 mb-5">"La única regla del viaje es: No vuelvas como te fuiste.
      Vuelve diferente."</h1>
  </header>

  <!-- inicio main container -->
<main class="container-fluid">