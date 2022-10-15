{include file="header.tpl"}

<div class="modal-body">
    {foreach from=$automoviles item=$automovil}

        <h1 class="fs-5 fw-bold ms-5 mt-5">Auto encontrado con patente: <span
                class="text-danger">{$automovil->patente}</span></h1>
        <hr>
        <table class='table  table-striped text-center'>
            <thead class="table-dark text-center fw-bold text-info">
                <tr>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Año</th>
                    <th>Color</th>
                    <th>Patente</th>
                    <th>Licencia</th>
                    <th>Ver Viaje</th>
            </thead>
            <tbody>
                <tr>
                    <td class="text-uppercase">{$automovil->marca}</td>
                    <td class="text-uppercase">{$automovil->modelo}</td>
                    <td class="text-uppercase">{$automovil->anio}</td>
                    <td class="text-uppercase">{$automovil->color}</td>
                    <td class="text-uppercase">{$automovil->patente}</td>
                    <td class="text-uppercase">{$automovil->licencia}</td>
                    <td><button type="button" class="btn btn-dark"><a href='viewViaje/{$automovil->id_automovil}'
                                class="text-decoration-none fw-bold text-info">Mostrar</a></button></td>
                </tr>



            </tbody>

    </div>

{/foreach}
<p><a href='home'>Volver al home</a></p>
{include file="footer.tpl"}