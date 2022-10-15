{include file="header.tpl"}

<div class="modal-body">
    <h1 class="fs-5 fw-bold ms-5 mt-5">Viajes encontrados</h1>
    <hr>
    <table class='table  table-striped text-center'>
        <thead class="table-dark text-center fw-bold text-info">
            <tr>
                <th>Salida</th>
                <th>Destino</th>
                <th>Día</th>
                <th>Horario</th>
                <th>Lugares</th>
                <th>Acepta mascota</th>
                <th>Precio</th>
                <th>Datos que considere importantes:</th>
            <tr>
        </thead>
        <tbody>
            <tr>
                {foreach from=$viajes item=$viaje}
                    <td class="text-uppercase">{$viaje->salida}</td>
                    <td class="text-uppercase">{$viaje->destino}</td>
                    <td class="text-uppercase">{$viaje->dia}</td>
                    <td class="text-uppercase">{$viaje->horario}</td>
                    <td class="text-uppercase">{$viaje->lugares}</td>
                    <td class="text-uppercase">{$viaje->mascota}</td>
                    <td class="text-uppercase">{$viaje->precio}</td>
                    <td>{$viaje->datos}</td>
        </table>
        <p><a href='home'>Volver al home</a></p>
        </body>
    </div>
    <p>Se encontraron: <span class="text-danger">{$count} viajes cargados con salida: {$viaje->salida} y destino:
            {$viaje->destino} para el día {$viaje->dia}</span></p>
{/foreach}

{include file="footer.tpl"}