<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="es">
<meta charset="UTF-8">
<title>Insert title here</title>
	 <!-- Modal de confirmación con Alertify.js -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
    <script>
    $(document).ready(function() {
        // Botón de eliminar
        $("#btnEliminar").on("click", function() {
            var idCliente = $("#idCliente").val();  // Obtener el idCliente del campo oculto
            
            // Mostrar el modal de confirmación usando Alertify.js
            alertify.confirm("Eliminar Cliente",
                "¿Está seguro de que desea eliminar este cliente?",
                function() {
                    // Si confirma, enviamos el formulario
                    $("#formEliminar").submit();
                },
                function() {
                    // Si cancela, no hace nada
                    alertify.message('Eliminación cancelada');
                }
            ).set('labels', {ok:'Eliminar', cancel:'Cancelar'});  // Configurar los botones del modal
        });
    });
</script>
</head>
<body>
	<nav></nav>
	<section class="container mt-5">
		<h1>Eliminar Cliente</h1>
	
		< <!-- Formulario oculto que usaremos con jQuery para eliminar -->
        <form id="formEliminar" action="/ismac-libreria-matutino-web/clientes/del" method="get">
            <input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" />
            
             <!-- Botones que activan el modal de confirmación -->
        <button type="button" class="btn btn-danger" id="btnEliminar">Eliminar Cliente</button>
        <a href="/ismac-libreria-matutino-web/clientes/findAll" class="btn btn-secondary">Cancelar</a>
       
        </form>
 
       
	</section>
	<footer></footer>
    
	
	
	
	
	
 
 
</body>
</html>