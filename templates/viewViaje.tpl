{include file="header.tpl"}
<div class="modal-body">
    <h1 class="fs-5 fw-bold">Viajes disponibles</h1>
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

            <tr>
        </thead>
        <tbody>
            {foreach from=$viajes item=$viaje}
                <tr>
                    <td class="text-uppercase">{$viaje->salida}</td>
                    <td class="text-uppercase">{$viaje->destino}</td>
                    <td class="text-uppercase">{$viaje->dia}</td>
                    <td class="text-uppercase">{$viaje->horario}</td>
                    <td class="text-uppercase">{$viaje->lugares}</td>
                    <td class="text-uppercase">{$viaje->mascota}</td>
                    <td class="text-uppercase">{$viaje->precio}</td>
                    <td class="text-uppercase">{$viaje->datos}</td>
                {/foreach}
    </table>
</div>
<p>Hay {$count} viajes cargados para el vehículo seleccionado</p>
<p><a href='home'>Volver al home</a></p>
{include file="footer.tpl"}