@extends('adminlte::auth.login')
@section('title', 'Inicio Sesión')

@section('js')
<script type="text/javascript">
    setTimeout(() => {
        if($("#msg_actualizar_clave").length > 0){
            location.href = "{{ route('login')}}";
        }
    }, 3000);
</script>
