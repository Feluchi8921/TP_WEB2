{include file="header.tpl"}

<h1 class="text-center">Editar datos del vehículo</h1>
<div class="row d-flex justify-content-center bg-light text-success">
    {foreach from=$automoviles item=$automovil}
        <form action="editAutomovilById/{$automovil->id_automovil}" method="POST" class="my-4 fw-bold"
            style="width: 18rem;">
            <div class="mb-3">
                <label for="marca" class="form-label">Marca</label>
                <input type="text" name="marca" id="disabledTextInput" class="form-control text-uppercase"
                    value="{$automovil->marca}" required />
            </div>
            <div class="mb-3">
                <label for="modelo" class="form-label">Modelo</label>
                <input type="text" name="modelo" id="disabledTextInput" class="form-control text-uppercase"
                    value="{$automovil->modelo}" required />
            </div>
            <div class="mb-3">
                <label for="anio" class="form-label">Año</label>
                <input type="text" name="anio" id="disabledTextInput" class="form-control" value="{$automovil->anio}"
                    required />
            </div>
            <div class="mb-3">
                <label for="color" class="form-label">Color</label>
                <input type="text" name="color" id="disabledTextInput" class="form-control text-uppercase"
                    value="{$automovil->color}" required />
            </div>
            <div class="mb-3">
                <label for="patente" class="form-label">Patente</label>
                <input type="text" name="patente" id="disabledTextInput" class="form-control text-uppercase"
                    value="{$automovil->patente}" required />
            </div>
            <div class="mb-3">
                <label for="licencia" class="form-label">Número de licencia del/a conductor/a</label>
                <input type="text" name="licencia" id="disabledTextInput" class="form-control"
                    value="{$automovil->licencia}" required />
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button type="submit" class="btn btn-primary mt-2">Editar</button>
                </div>
            {/foreach}
    </form>
</div>
<p><a href='home'>Volver al home</a></p>
{include file="footer.tpl"}