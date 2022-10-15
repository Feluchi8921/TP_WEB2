{include file="header.tpl"}
<div class="row d-flex justify-content-center bg-light text-success">
    <h2 class="text-center">Filtrar búsqueda</h2>
    <form action="filterSearchAutomovil" method="POST" class="my-4 fw-bold" style="width: 18rem;">
        <div class="p-3 bg-info bg-opacity-10 border border-info border-start-0 rounded-end">
            <label for="patente" class="form-label">Ingrese la patente del vehículo</label>
            <input type="text" name="patente" id="disabledTextInput" class="form-control" value="" required />
            <button type="submit" class="btn btn-primary mt-2">Filtrar</button>
        </div>
    </form>
</div>
<p><a href='home'>Volver al home</a></p>
{include file="footer.tpl"}