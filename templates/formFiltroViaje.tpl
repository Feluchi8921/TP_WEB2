{include file="header.tpl"}
<div class="row d-flex justify-content-center bg-light text-success">
    <h2 class="text-center">Filtrar búsqueda</h2>
    <form action="filterSearchViaje" method="POST" class="my-4 fw-bold" style="width: 18rem;">
        <div class="p-3 bg-info bg-opacity-10 border border-info border-start-0 rounded-end">
            <label for="salida" class="form-label">Ingrese el lugar de salida</label>
            <select name="salida" id="disabledSelect" class="form-select" required>
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
            <label for="destino" class="form-label">Ingrese el destino</label>
            <select name="destino" id="disabledSelect" class="form-select" required>
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
            <label for="dia" class="form-label">Ingrese el día</label>
            <input type="date" name="dia" id="disabledTextInput" class="form-control" value="" min="2022-10-12"
                required />
            <button type="submit" class="btn btn-primary mt-2">Filtrar</button>
        </div>
    </form>
</div>

<p><a href='home'>Volver al home</a></p>
{include file="footer.tpl"}