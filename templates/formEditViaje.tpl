{include file="header.tpl"}

<h1 class="text-center">Editar viaje compartido</h1>
<div class="row d-flex justify-content-center bg-light text-success">

    {foreach from=$viajes item=$viaje}
        <form action="editViajeById/{$viaje->id_viaje}" method="POST" class="my-4 fw-bold" style="width: 18rem;">

            <div class="mb-3">
                <label for="salida" class="form-label">Salida</label>
                <select name="salida" id="disabledSelect" class="form-select" required>
                    <option value="{$viaje->salida}">{$viaje->salida}</option>
                    <option value="Mar del Plata">Mar del Plata</option>
                    <option value="Balcarse">Balcarse</option>
                    <option value="San Alberto">San Alberto</option>
                    <option value="Napaleofu">Napaleofú</option>
                    <option value="Tandil">Tandil</option>
                    <option value="Azul">Azul</option>
                    <option value="Olvarria">Olavarria</option>
                    <option value="Bolivar">Bolivar</option>
                    <option value="Pehuajo">Pejuajó</option>
                    <option value="Carlos Tejedor">Carlos Tejedor</option>
                    <option value="Villegas">Villegas</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="destino" class="form-label">Destino</label>
                <select name="destino" id="disabledSelect" class="form-select" required>
                    <option value="{$viaje->destino}">{$viaje->destino}</option>
                    <option value="Mar del Plata">Mar del Plata</option>
                    <option value="Balcarse">Balcarse</option>
                    <option value="San Alberto">San Alberto</option>
                    <option value="Napaleofu">Napaleofú</option>
                    <option value="Tandil">Tandil</option>
                    <option value="Azul">Azul</option>
                    <option value="Olvarria">Olavarria</option>
                    <option value="Bolivar">Bolivar</option>
                    <option value="Pehuajo">Pejuajó</option>
                    <option value="Carlos Tejedor">Carlos Tejedor</option>
                    <option value="Villegas">Villegas</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="dia" class="form-label">Día</label>
                <input type="date" name="dia" id="disabledTextInput" class="form-control" value="{$viaje->dia}"
                    min="2022-10-12" required />
            </div>
            <div class="mb-3">
                <label for="horario" class="form-label">Horario</label>
                <input type="time" name="horario" id="disabledTextInput" class="form-control" value="{$viaje->horario}"
                    required />
            </div>
            <div class="mb-3">
                <label for="lugares" class="form-label">Cantidad de lugares</label>
                <input type="text" name="lugares" id="disabledTextInput" class="form-control" value="{$viaje->lugares}"
                    min="1" max="10" required />
            </div>
            <div class="mb-3">
                <label for="mascota" class="form-label">Acepta mascota</label>
                <select name="mascota" id="disabledSelect" class="form-select" required>
                    <option value="{$viaje->mascota}">{$viaje->mascota}</option>
                    <option value="ninguna">Ninguna</option>
                    <option value="perro">Perro/a</option>
                    <option value="gato">Gato/a</option>
                    <option value="otro">Otro/a</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="precio" class="form-label">Precio por persona $</label>
                <input type="text" name="precio" id="disabledTextInput" class="form-control" value="{$viaje->precio}"
                    required />
            </div>
            <div class="mb-3">
                <label for="datos" class="form-label">Otros datos importantes</label>
                <textarea type="text" name="datos" id="disabledTextInput" class="form-control"
                    value="{$viaje->datos}"></textarea>
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
                <button type="submit" class="btn btn-primary mt-2">Editar</button>
            </div>
        </form>
    {/foreach}
</div>
<p><a href='home'>Volver al home</a></p>

{include file="footer.tpl"}