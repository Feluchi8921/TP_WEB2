<div class="modal-body">
    <h1 class="fs-5 fw-bold ms-5 mt-5">Autos cargados</h1>
    <hr>
    <table class='table  table-striped text-center'>
        <thead class="table-dark text-center fw-bold text-info">
            <tr>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Año</th>
                <th>Color</th>
                <!--Si el campo usuario esta vacio no muestro los botones ni datos patente y licencia (privados)-->
                {if isset($smarty.session.USER_ID)}
                    <th>Patente</th>
                    <th>Licencia</th>
                    <th>Ver Viaje</th>
                    <th>Editar</th>
                    <td>Eliminar</td>
                    <td>Agregar Viaje</td>
                {/if}
        </thead>
        <tbody>
            {foreach from=$automoviles item=$automovil}
                <tr>
                    <td class="text-uppercase">{$automovil->marca}</td>
                    <td class="text-uppercase">{$automovil->modelo}</td>
                    <td class="text-uppercase">{$automovil->anio}</td>
                    <td class="text-uppercase">{$automovil->color}</td>
                    <!--Si el campo usuario esta vacio no muestro los botones ni datos patente y licencia (privados)-->
                    {if isset($smarty.session.USER_ID)}
                        <td class="text-uppercase">{$automovil->patente}</td>
                        <td class="text-uppercase">{$automovil->licencia}</td>
                        <td><button type="button" class="btn btn-dark"><a href='viewViaje/{$automovil->id_automovil}'
                                    class="text-decoration-none fw-bold text-info">Mostrar</a></button></td>
                        <td><button type="button" class="btn btn-dark"><a href='formEditAutomovil/{$automovil->id_automovil}'
                                    class="text-decoration-none fw-bold text-info">Editar</a></button></td>
                        <td><button type="button" class="btn btn-dark"><a href='deleteAutomovilById/{$automovil->id_automovil}'
                                    class="text-decoration-none fw-bold text-info">Eliminar</a></button></td>
                        <td><button type="button" class="btn btn-dark"><a href='formViaje/{$automovil->id_automovil}'
                                    class="text-decoration-none fw-bold text-info">Agregar</a></button></td>
                    {/if}
                </tr>

            {/foreach}

        </tbody>
        <button type="button" class="rounded-top btn-dark"><a href='formAutomovil'
                class="text-decoration-none fw-bold text-danger">Cargar Automovil</a></button>

</div>