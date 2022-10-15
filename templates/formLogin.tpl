{include file="header.tpl"}
<h3 class="text-center">Para acceder a la carga de viajes por favor autentifiquese:</h3>
<div class="mt-5 w-25 mx-auto border border-success p-2 mb-2 border-opacity-25">
    <h2 fs-4>Login:</h2>
    <form method="POST" action="validate">
        <div class="input-group input-group-sm mb-3">
            <span class="input-group-text" id="email">E-mail</span>
            <input type="email" required class="form-control" id="email" name="email" aria-describedby="emailHelp"
                required />
        </div>
        <div class="input-group input-group-sm mb-3">
            <span class="input-group-text" id="inputGroup-sizing-sm">Contraseña</span>
            <input type="password" required class="form-control" id="password" name="password" required />
        </div>

        {if $error}
            <div class="alert alert-danger mt-3">
                {$error}
            </div>
        {/if}
        <button type="submit" class="btn btn-primary mt-3">Autenticar</button>
    </form>
</div>
{include file="footer.tpl"}