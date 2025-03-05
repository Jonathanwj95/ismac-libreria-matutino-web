<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="es">
<meta charset="UTF-8">
<title>Eliminar Cliente</title>

<!-- CSS de Bootstrap y Alertify.js -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

<script>
$(document).ready(function() {
    $("#btnEliminar").on("click", function() {
        var idCliente = $("#idCliente").val();
        
        alertify.confirm("Eliminar Cliente",
            "¿Está seguro de que desea eliminar este cliente?",
            function() {
                $("#formEliminar").submit();
            },
            function() {
                alertify.message('Eliminación cancelada');
            }
        ).set('labels', {ok:'Eliminar', cancel:'Cancelar'}); 
    });
});
</script>

</head>
<body class="bg-light">

<nav></nav>

<section class="container d-flex justify-content-center mt-5">
    <div class="card shadow-lg w-50">
        <div class="card-header bg-danger text-white text-center">
            <h2><i class="bi bi-exclamation-triangle"></i> Eliminar Cliente</h2>
        </div>
        <div class="card-body text-center">
            <p class="fs-5">Está a punto de eliminar a este cliente. Esta acción no se puede deshacer.</p>

            <!-- Formulario oculto que se enviará al confirmar -->
            <form id="formEliminar" action="/ismac-libreria-matutino-web/clientes/del" method="get">
                <input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" />

                <!-- Botones -->
                <button type="button" class="btn btn-danger px-4 me-2" id="btnEliminar">
                    <i class="bi bi-trash"></i> Eliminar Cliente
                </button>
                <a href="/ismac-libreria-matutino-web/clientes/findAll" class="btn btn-secondary px-4">
                    <i class="bi bi-arrow-left"></i> Cancelar
                </a>
            </form>
        </div>
    </div>
</section>

<footer></footer>

</body>
</html>
    