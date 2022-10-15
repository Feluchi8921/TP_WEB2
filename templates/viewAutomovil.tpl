<div class="modal-body">
    <h1 class="fs-5 fw-bold ms-5 mt-5">Datos del automovil</h1>
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
        </thead>
        <tbody>

            <tr>
                <td class="text-uppercase">{$automovil->marca}</td>
                <td class="text-uppercase">{$automovil->modelo}</td>
                <td class="text-uppercase">{$automovil->anio}</td>
                <td class="text-uppercase">{$automovil->color}</td>
                <td class="text-uppercase">{$automovil->patente}</td>
                <td class="text-uppercase">{$automovil->licencia}</td>
            </tr>

            {/foreach}

        </tbody>

</div>