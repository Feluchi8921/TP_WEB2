{include file="header.tpl"}

<h2 class="text-center">Cargar datos del vehículo</h2>
<div class="row d-flex justify-content-center bg-light text-success">
    <form action="addAutomovil" method="POST" class="my-4 fw-bold" style="width: 20rem;">
        <div class="mb-3">
            <label for="marca" class="form-label">Marca</label>
            <input type="text" name="marca" id="disabledTextInput" class="form-control text-uppercase text-uppercase"
                placeholder="Renault" value="" required />
        </div>
        <div class="mb-3">
            <label for="modelo" class="form-label">Modelo</label>
            <input type="text" name="modelo" id="disabledTextInput" class="form-control text-uppercase"
                placeholder="Logan" value="" required />
        </div>
        <div class="mb-3">
            <label for="anio" class="form-label">Año</label>
            <input type="text" name="anio" id="disabledTextInput" class="form-control" placeholder="2011" value=""
                required />
        </div>
        <div class="mb-3">
            <label for="color" class="form-label">Color</label>
            <input type="text" name="color" id="disabledTextInput" class="form-control text-uppercase"
                placeholder="Gris" value="" required />
        </div>
        <div class="mb-3">
            <label for="patente" class="form-label">Patente</label>
            <input type="text" name="patente" id="disabledTextInput" class="form-control text-uppercase"
                placeholder="ABC 123" value="" required />
        </div>
        <div class="mb-3">
            <label for="licencia" class="form-label">Número de licencia del/a conductor/a</label>
            <input type="text" name="licencia" id="disabledTextInput" class="form-control" placeholder="12345678"
                value="" required />
        </div>
        <div class="d-grid gap-2 col-6 mx-auto">
            <button type="submit" class="btn btn-primary">Insertar</button>
        </div>
    </form>
</div>
<p><a href='home'>Volver al home</a></p>
{include file="footer.tpl"}