<div class="modal-body">
    <h1 class="fs-5 fw-bold ms-5 mt-5">Viajes disponibles</h1>
    <hr>
    <table class='table  table-striped text-center m-1 mb-5'>
        <thead class="table-dark text-center fw-bold text-warning">
            <tr>
                <th>Salida</th>
                <th>Destino</th>
                <th>Día</th>
                <th>Horario</th>
                <th>Lugares</th>
                <th>Acepta Mascota</th>
                <th>Precio</th>
                <th>Otros datos</th>
                <!--Si no esta logueado no muestro estas celdas-->
                {if isset($smarty.session.USER_ID)}
                    <th>Editar</th>
                    <th>Eliminar</th>
                {/if}
            <tr>
        </thead>
        <tbody>
            {foreach from=$viajes item=$viaje}
                <tr>
                <tr>
                    <td class="text-uppercase">{$viaje->salida}</td>
                    <td class="text-uppercase">{$viaje->destino}</td>
                    <td class="text-uppercase">{$viaje->dia}</td>
                    <td class="text-uppercase">{$viaje->horario}</td>
                    <td class="text-uppercase">{$viaje->lugares}</td>
                    <td class="text-uppercase">{$viaje->mascota}</td>
                    <td class="text-uppercase">{$viaje->precio}</td>
                    <td>{$viaje->datos}</td>
                    <!--Si no esta logueado oculto estos botones-->
                    {if isset($smarty.session.USER_ID)}
                        <td><button type="button" class="btn btn-dark"><a href='formEditViaje/{$viaje->id_viaje}'
                                    class="text-decoration-none fw-bold text-warning">Editar</a></button></td>
                        <td><button type="button" class="btn btn-dark"><a href='deleteViajeById/{$viaje->id_viaje}'
                                    class="text-decoration-none fw-bold text-warning">Eliminar</a></button></td>
                    {/if}

                {/foreach}
</table>