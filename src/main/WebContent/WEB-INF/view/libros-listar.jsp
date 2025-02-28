<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Ventas - Biblioteca</title>
	
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 
</head>
<body>
 
<nav></nav>
<section>
<div class="container">
<h1>Libros</h1>
</div>
 
<div class="container" style="text-align: center;">
	<button class="btn btn-primary btn-lg" onclick="window.location.href='/ismac-libreria-matutino-web/libros/findOne?opcion=1'; return false;">
		<i class="fas fa-plus"></i>
	</button>
</div>
 
<div class="container table-responsive">
<table id="tabla1" name="tabla1" data-search="true" data-pagination="true" data-height="600" class="table table-striped table-sm">
		<thead>
			<tr>
				<th>idLibro</th>
				<th data-sortable="true">Titulo</th> 
				<th data-sortable="true">editorial</th>
				<th data-sortable="true">N° Páginas</th>
				<th data-sortable="true">Edición</th>
				<th data-sortable="true">Idioma</th>
				<th data-sortable="true">Fecha Publicacion</th>
				<th data-sortable="true">Descripcion</th>
				<th data-sortable="true">Tipo Pasta</th>
				<th data-sortable="true">ISBN</th>
				<th data-sortable="true">N° Ejemplares</th>
				<th data-sortable="true">Portada</th>
				<th data-sortable="true">Presentacion</th>
				<th data-sortable="true">Precio</th>
				<th data-sortable="true">Categoria</th>
				<th data-sortable="true">Autor</th>			
				<th data-sortable="true">Acciones</th>			
			</tr>
		</thead>
		<tbody>
		
			<c:forEach var="item" items="${libros}" >
					<tr>
						<td>${item.idLibro}</td>
						<td>${item.titulo}</td>
						<td>${item.editorial}</td>
						<td>${item.numPaginas}</td>
						<td>${item.edicion}</td>
						<td>${item.idioma}</td>
						<td>${fn:substring(item.fechaPublicacion,0,10)}</td>
						<td>${item.descripcion}</td>
						<td>${item.tipoPasta}</td>
						<td>${item.isbn}</td>
						<td>${item.numEjemplares}</td>
						<td>						
							<img alt="foto.jpg" width="100" height="100" src="/ismac-libreria-matutino-web/resources/img/${item.portada}">							
						</td>
						<td>${item.presentacion}</td>
						<td>${item.precio}</td>
						<td>${item.categoria.categoria}</td>
						<td>${item.autor.nombre} ${item.autor.apellido}</td>
						<td>
							<button type="button" onclick="window.location.href='/ismac-libreria-matutino-web/libros/findOne?opcion=1&idLibro=${item.idLibro}'; return false;">Actualizar
							<i class="fa-solid fa-pen-to-square"></i>
							</button>
							<button type="button" onclick="window.location.href='/ismac-libreria-matutino-web/libros/findOne?opcion=2&idLibro=${item.idLibro}'; return false;">Borrar
							<i class="fa-solid fa-trash"></i>
							</button>
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
	
	var $tabla1 = $('#tabla1');j
	$tabla1.bootstrapTable({
		sortReset: true
	});
	
	</script>
 


</body>
</html>