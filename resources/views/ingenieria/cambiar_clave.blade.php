@extends('adminlte::page')
@section('title', 'Cambiar clave')
@section('content')
    <div class="row">
        <div class="col-12">
            <div class="card card-info">
                <div class="card-header mt-3">
                    <h3>Cambio de clave</h3>
                </div>
                <div class="alert alert-warning mt-3" role="alert">
                    <i class="fas fa-info-circle"></i> <strong>Importante:</strong> Una vez actualizada la contraseña, debera
                    volver a iniciar sesion con la nueva clave digitada.<br>
                    <ul>
                        <li>La contraseña debe tener minimo un letra mayuscala</li>
                        <li>La contraseña debe tener minimo un letra minuscula</li>
                        <li>La contraseña debe tener minimo 8 caracteres</li>
                        <li>La contraseña debe tener minimo un caracter especial</li>
                        <li>La contraseña debe tener minimo un numero</li>
                    </ul>
                </div>
                <div class="card-body">
                    <div class="row">
                        <form action="{{ route('cambiar_clave') }}" method="post" id="cambiar_clave">
                            @csrf
                            <input type="hidden" name="email" value="{{ @$user->email }}">
                            <input type="hidden" name="token" value="{{ @$token }}">

                            <div class="d-flex align-items-center" style="margin: auto">
                                <div class="form-group col-4">
                                    <label for="clave1" class="form-label">Por favor digite la nueva contraseña</label>
                                    <input type="password" name="clave1" id="clave1" class="form-control" required>
                                </div>
                                <div class="form-group col-4">
                                    <label for="clave2" class="form-label">Por favor digite nuevamente la
                                        contraseña</label>
                                    <input type="password" name="clave2" id="clave2" class="form-control" required>
                                </div>
                                <div class=" form-group col-4 align-self-end">
                                    <button type="submit" class="btn btn-info" id="sudmit_clave" disabled>Cambiar
                                        clave</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row">
                        <ul id="validation-messages">
                            <!-- Los mensajes de validación se mostrarán aquí -->
                        </ul>
                    </div>
                </div>
                @isset($success)
                <div class="card-footer mb-2">
                    <div id="msg_actualizar_clave">
                            <span role="alert" class="alert alert-success">
                                {{$success}}
                            </span>
                    </div>
                </div>
                @endisset
            </div>
        </div>
    </div>
    @include('modals.alertaCambioClave')
@stop
@section('js')
    <script src="/js/funciones_helpers.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            
            $("#alertaCambioClave").show();
            $("#cerrar_modal").click(function(){
                $("#alertaCambioClave").hide();
            });
            setTimeout(() => {
                $("#alertaCambioClave").hide();
            }, 16000);

            //Valida la primera clave
            $("#clave1").on('keyup', function() {
                const password = $(this).val();
                const errorMessages = validatePassword(password);

                $('#validation-messages').empty();

                if (errorMessages.length > 0) {
                    errorMessages.forEach(message => {
                        $('#validation-messages').append(`<li class="text-danger">${message}</li>`);
                    });
                } else {
                    $('#validation-messages').append(
                        '<li class="text-success">La contraseña es válida.</li>');
                }
            });

            //Valida la clave de confirmacion
            $("#clave2").on('keyup', function() {
                const clave1 = $("#clave1").val();
                const clave2 = $(this).val();

                $('#validation-messages').empty();

                if (!clave1 || clave1 !== clave2) {
                    $("#sudmit_clave").prop('disabled', true);
                    $('#validation-messages').append(
                        '<li class="text-danger">Las contraseñas no son iguales, por favor verifique.</li>'
                        );
                } else {
                    $("#sudmit_clave").prop('disabled', false);
                    $('#validation-messages').append(
                        '<li class="text-success">La contraseña es válida.</li>');
                }
            });

            if($("#msg_actualizar_clave").length > 0){
                $("#alertaCambioClave").hide();
                setTimeout(() => {
			location.href = "{{ route('login')}}";
                }, 4000);
            }

        });

        function validatePassword(password) {
            const validations = [{
                    regex: /(?=.*[a-z])/,
                    message: 'La contraseña debe tener mínimo una letra minúscula'
                },
                {
                    regex: /(?=.*[A-Z])/,
                    message: 'La contraseña debe tener mínimo una letra mayúscula'
                },
                {
                    regex: /(?=.*[!@#$%^&*(),.?":{}|<>])/,
                    message: 'La contraseña debe tener mínimo un carácter especial'
                },
                {
                    regex: /(?=.*\d)/,
                    message: 'La contraseña debe tener mínimo un número'
                },
                {
                    regex: /.{8,}/,
                    message: 'La contraseña debe tener mínimo 8 caracteres'
                }
            ];

            return validations
                .filter(validation => !validation.regex.test(password))
                .map(validation => validation.message);
        }
    </script>
@stop
