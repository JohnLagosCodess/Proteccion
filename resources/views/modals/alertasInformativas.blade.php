<x-adminlte-modal id="alertas_informativas" class="infoalert" theme="info" icon="fas fa-info-circle" disable-animations>
    <div class="card-header" id="contenido_header_gestion">
        <div class="row d-flex justify-content-center">
            <span id="primer_mensaje"></span>
        </div>
        <br>
        <div class="row d-flex justify-content-center">
            <span id="segundo_mensaje"></span>
        </div>
    </div>
    <div id="alertaInformativaFooter">
        <div class="col-12 d-flex justify-content-end">
            <div class="col-9" id="info_footer">
                <h5>¿Esta de acuerdo?</h5>
            </div>
            <div class="col-3 d-flex justify-content-between">
                <button class="btn btn-info" id="si_button">Si</button>
                <button class="btn btn-danger" id="no_button" data-dismiss="modal">No</button>
            </div>
        </div>
    </div>
</x-adminlte-modal>
<style>
    .infoalert .modal-footer{
        display: none;
    }
    .close{
        display: none;
    }
    #alertas_informativas .modal-title {
        display: flex;
        margin-bottom: 0;
        flex-direction: row;
        line-height: 1.5;
        font-size: 19px;
        font-weight: 700;
        align-items: center;
        width: 100%;
        gap: 3%;
    }
    #alertas_informativas #primer_mensaje{
        font-size: 19px;
        font-weight: 500;
        text-align: justify;
    }
    #alertas_informativas #segundo_mensaje{
        font-size: 19px;
        font-weight: 500;
        text-align: justify;
    }
    #alertas_informativas .modal-body{
        justify-content: center;
        display: flex;
        flex-direction: column;
    }
    #alertas_informativas .card-header{
        display: flex;
        width: 90%;
        flex-direction: column;
        justify-content: center;
    }
    #alertas_informativas{
        padding-right: 0px !important;
    }
    #alertas_informativas .modal-dialog{
        max-width: 400px;
        justify-content: center;
        display: flex;
        align-items: center;
        height: 100%;
        margin-top: 0;
    }
</style>