<x-adminlte-modal id="alertaCambioClave" class="modalscroll" title="Alerta" theme="info" disable-animations>
    <div class="card-header d-flex justify-content-center">
        <i class="fas fa-exclamation-triangle"  style="font-size: 60px; color: #17a2b8;"></i>
    </div>
    <div class="card-body" style="font-size: 1.25rem !important;" id="alerta_buscador_msj">
        <span>Estimado usuario, ha iniciado sesion por primera vez. Por favor actualice su contraseña, teniendo en cuenta los siguiente parametros:</span>
        <div class="parametros_clave mt-3">
            <ul>
                <li>La contraseña debe tener minimo un letra mayuscala</li>
                <li>La contraseña debe tener minimo un letra minuscula</li>
                <li>La contraseña debe tener minimo 8 caracteres</li>
                <li>La contraseña debe tener minimo un caracter especial</li>
                <li>La contraseña debe tener minimo un numero</li>
            </ul>
        </div>
    </div>
    <x-slot name="footerSlot">
        <button class="btn btn-danger" id="cerrar_modal" data-dismiss="modal">Cerrar</button>
    </x-slot>
</x-adminlte-modal>
