<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
		<div class="container" style="padding-top: 5px;">
			<h1>Libros</h1>
		</div>
		
		<div class="container">
		<form class="needs-validation" action="add" method="post" novalidate>
		
		<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
		
		
		<div class="form-group">
			<label class="form-label" for="titulo">Titulo</label>
			<input class="form-control" type="text" id="titulo" name="titulo" value="${libro.titulo}" required>
			<div class="invalid-feedback">
				*
			</div>
		</div>
		
		
		<div class="form-group">
			<label class="form-label" for="editorial">Editorial</label>
			<input class="form-control" type="text" id="editorial" name="editorial" value="${libro.editorial}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="numPaginas">N° Páginas</label>
			<input class="form-control" type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}" required min="1">
		</div>
		
		<div class="form-group">
			<label class="form-label" for="edicion">Edición</label>
			<input class="form-control" type="text" id="edicion" name="edicion" value="${libro.edicion}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="idioma">Idioma</label>
			<input class="form-control" type="text" id="idioma" name="idioma" value="${libro.idioma}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="fechaPublicacion">Fecha Publicación</label>
			<input class="form-control" type="date" id="fechaPublicacion" name="fechaPublicacion" value="${libro.fechaPublicacion}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="descripcion">Descripción</label>
			<input class="form-control" type="text" id="descripcion" name="descripcion" value="${libro.descripcion}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="tipoPasta">Tipo Pasta</label>
			<input class="form-control" type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="iSBN">ISBN</label>
			<input class="form-control" type="text" id="iSBN" name="iSBN" value="${libro.iSBN}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="numEjemplares">Numero de Ejemplares</label>
			<input class="form-control" type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="portada">Portada</label>
			<input class="form-control" type="text" id="portada" name="portada" value="${libro.portada}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="presentacion">Presentación</label>
			<input class="form-control" type="text" id="presentacion" name="presentacion" value="${libro.presentacion}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="precio">Precio</label>
			<input class="form-control" type="number" step="any" id="precio" name="precio" value="${libro.precio}" required>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="idCategoria">Categoria</label>		
				<select class="form-select" id="idCategoria" name="idCategoria" required>
					<c:forEach var="item" items="${categorias}">			
				   <%-- <option value="${item.idCiudad}" ${item.idCiudad == empleado.ciudad.idCiudad? 'selected': ''} >${item.ciudad}</option> --%>
						<option id="" value="${item.idCategoria}" ${item.idCategoria == libro.categoria.idCategoria ? 'selected': '' }  >${item.categoria}</option>											
					</c:forEach>
				</select>
		</div>
		
		<div class="form-group">
			<label class="form-label" for="idAutor">Autor</label>		
				<select class="form-select" id="idAutor" name="idAutor" required>
					<c:forEach var="item" items="${autores}">			
				   <%-- <option value="${item.idCiudad}" ${item.idCiudad == empleado.ciudad.idCiudad? 'selected': ''} >${item.ciudad}</option> --%>
						<option id="" value="${item.idAutor}" ${item.idAutor == libro.autor.idAutor ? 'selected': '' }  >${item.nombre} ${item.apellido}</option>											
					</c:forEach>
				</select>
		</div>
		<div class="container" style="text-align: right; padding-top: 5px;">
		<div class="row">
<div class="col-12 col-sm-6 mb-2 mb-sm-0">
<button class="btn btn-primary w-100" type="submit">Guardar</button>
</div>
<div class="col-12 col-sm-6">
<button class="btn btn-primary cancelar-btn" type="button">Cancelar</button>
</div>
</div>
			
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
		        
		       window.location.href = '${pageContext.request.contextPath}/libros/findAll;
		        
		    });
		});
	 	
	 	

	
	 	
	 	(function () {
		    'use strict'
		    // Obtener todos los formularios a los que se les aplicará la validación personalizada
		    const forms = document.querySelectorAll('.needs-validation')
		
		    // Loop sobre ellos y evitar el envío si hay campos inválidos
		    Array.from(forms).forEach(form => {
		        form.addEventListener('submit', function (event) {
		            if (!form.checkValidity()) {
		                event.preventDefault() // Impide que el formulario se envíe si no es válido
		                event.stopPropagation() // Detiene la propagación del evento
		            }
		
		            form.classList.add('was-validated') // Aplica el estilo de validación
		        }, false)
		    })
		})()

	 	
	</script>
	 	
</body>
</html>
