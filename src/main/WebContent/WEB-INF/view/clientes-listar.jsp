<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ventas - Biblioteca</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
	
</head>
<body>
<nav>
 
</nav>
 
 
<section>
<div class="container" style="padding-top: 5px;">
<h1>Clientes</h1>
</div>
 
<div class="container" style="text-align: center;">
<button class="btn btn-primary" id="btnAgregar" name="btnAgregar" onclick="window.location.href='/ismac-libreria-matutino-web/clientes/findOne?opcion=1'; return false;">Agregar</button>
</div>
 
<div class="table-responsive">
<table id="tabla1" name="tabla1" data-search="True" data-pagination="True" class="table table-striped table-sm">
<thead>
<tr>
<th data-sortable=True>idCliente</th>
<th data-sortable=True>Cedula</th>
<th data-sortable=True>Nombre</th>
<th data-sortable=True>Apellido</th>
<th data-sortable=True>Direccion</th>
<th data-sortable=True>Telefono</th>
<th data-sortable=True>Correo</th>

<th> Acciones</th>
 
</tr>
</thead>
<tbody>
<c:forEach var="item" items="${clientes}">
<tr>
<td>${item.idCliente}</td>
<td>${item.cedula}</td>
<td>${item.nombre}</td>
<td>${item.apellido}</td>
<td>${item.direccion}</td>
<td>${item.telefono}</td>
<td>${item.correo}</td>
<td>
	<button class="btn btn-success" onClick="window.location.href='/ismac-libreria-matutino-web/clientes/findOne?idCliente=${item.idCliente}&opcion=1'; return false;">Actualizar</button>
	<button class="btn btn-danger" onClick="window.location.href='/ismac-libreria-matutino-web/clientes/findOne?idCliente=${item.idCliente}&opcion=2'; return false;">Borrar</button>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</section>
 
 
 
<footer></footer>
 
 
 
 
 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
		var $tabla1 = $('#tabla1');
		
		$(function(){
			$tabla1.bootstrapTable({
				sortReset:true
			})
		});
		
		$('#btnAgregar').on('click', function(){
			window.location.href='${pageContext.request.contextPath}/clientes/findOne?opcion=1'; return false;

		});
	</script>
	
	
</body>
</html>