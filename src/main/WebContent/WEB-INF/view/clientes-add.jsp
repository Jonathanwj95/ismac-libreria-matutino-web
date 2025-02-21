<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ventas - Biblioteca</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
	
</head>
<body>
 
<nav></nav>
<section>
	<div class="container" style="padding-top 5px;">
		<h1>Clientes</h1>
	</div>
	
	<div class="container">
		<form action="add" method="Post">
 
	<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" />
	
	<div class="form-group">
	<label for="cedula" class="form-Label">Cédula</label>
	<input class="form-control" type="text" id="cedula" name="cedula" value="${cliente.cedula}" />
	</div>
	
	<div class="form-group">
	<label for="nombre" class="form-Label">Nombre</label>
	<input class="form-control" type="text" id="nombre" name="nombre" value="${cliente.nombre}" />
	</div>
	
	<div class="form-group">
	<label for="apellido" class="form-Label">Apellido</label>
	<input class="form-control" type="text" id="apellido" name="apellido" value="${cliente.apellido}" />
	</div>
	
	<div class="form-group">
	<label for="direccion" class="form-Label">Dirección</label>
	<input class="form-control" type="text" id="direccion" name="direccion" value="${cliente.direccion}" />
	</div>
	
	<div class="form-group">
	<label for="telefono" class="form-Label">Telefono</label>
	<input class="form-control" type="text" id="telefono" name="telefono" value="${cliente.telefono}" />
	</div>
	
	<div class="form-group">
	<label for="correo" class="form-Label">Correo</label>
	<input class="form-control" type="text" id="correo" name="correo" value="${cliente.correo}" />
	</div>	
	
	<div style="text-align:right; padding-top: 5px;">
	<button class="btn btn-primary" type="submit">Guardar</button>
	<button class="btn btn-primary cancelar-btn">Cancelar</button>
	</div>
	
	</form>
	</div>
 
 
 
</section>
<footer></footer>
 
 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
	    // Evento para el botón de "Actualizar"
	    $(".cancelar-btn").on("click", function() {
	        
	            window.location.href = '${pageContext.request.contextPath}/clientes/findOne?idCliente=' + idCliente + '&opcion=' + opcion;
	       
	    });
	});
	</script>
</body>
</html>
