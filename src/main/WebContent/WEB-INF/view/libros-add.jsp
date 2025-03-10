<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ventas - Biblioteca</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />

<style>
    body {
        background-color: #f8f9fa;
    }
    .container {
        max-width: 700px;
        margin-top: 20px;
    }
    .card {
        border-radius: 10px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }
    .card-header {
        background-color: #007bff;
        color: white;
        text-align: center;
        font-size: 1.5rem;
        font-weight: bold;
        border-radius: 10px 10px 0 0;
    }
    .form-control {
        border-radius: 8px;
    }
    .btn-primary, .btn-secondary {
        padding: 10px;
        font-size: 1.1rem;
        border-radius: 8px;
    }
    .btn-primary {
        background-color: #007bff;
        border: none;
    }
    .btn-secondary {
        background-color: #6c757d;
        border: none;
    }
    .btn:hover {
        opacity: 0.9;
    }
</style>

</head>
<body>

<nav></nav>

<section>
<div class="container">
    <div class="card">
        <div class="card-header">
            📚 Registrar Libro
        </div>
        <div class="card-body">
            <form class="needs-validation" action="add" method="post" novalidate>
                
                <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">

                <div class="form-group">
                    <label class="form-label" for="titulo">Título</label>
                    <input class="form-control" type="text" id="titulo" name="titulo" value="${libro.titulo}" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="editorial">Editorial</label>
                    <input class="form-control" type="text" id="editorial" name="editorial" value="${libro.editorial}" required>
                </div>

                <div class="row">
                    <div class="col-md-6 form-group">
                        <label class="form-label" for="numPaginas">N° Páginas</label>
                        <input class="form-control" type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}" required>
                    </div>
                    <div class="col-md-6 form-group">
                        <label class="form-label" for="edicion">Edición</label>
                        <input class="form-control" type="text" id="edicion" name="edicion" value="${libro.edicion}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label" for="idioma">Idioma</label>
                    <input class="form-control" type="text" id="idioma" name="idioma" value="${libro.idioma}" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="fechaPublicacion">Fecha Publicación</label>
                    <input class="form-control" type="date" id="fechaPublicacion" name="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion,0,10)}" required>
                </div>

                <div class="form-group">
                    <label class="form-label" for="descripcion">Descripción</label>
                    <textarea class="form-control" id="descripcion" name="descripcion" rows="3" required>${libro.descripcion}</textarea>
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
                    <label class="form-label" for="numEjemplares">N° Ejemplares</label>
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
                    <input class="form-control" type="number" id="precio" name="precio" value="${libro.precio}" required>
                </div>

                <div class="row">
                    <div class="col-md-6 form-group">
                        <label class="form-label" for="idCategoria">Categoría</label>
                        <select class="form-select" id="idCategoria" name="idCategoria" required>
                            <c:forEach var="item" items="${categorias}">
                                <option value="${item.idCategoria}" ${item.idCategoria == libro.categoria.idCategoria ? 'selected' : ''}>
                                    ${item.categoria}
                                </option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="col-md-6 form-group">
                        <label class="form-label" for="id_autor">Autor</label>
                        <select class="form-select" id="id_autor" name="id_autor" required>
                            <c:forEach var="item" items="${autores}">
                                <option value="${item.idAutor}" ${item.idAutor == libro.autor.idAutor ? 'selected' : ''}>
                                    ${item.nombre} ${item.apellido}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-sm-6 mb-2 mb-sm-0">
                        <button class="btn btn-primary w-100" type="submit">Guardar</button>
                    </div>
                    <div class="col-12 col-sm-6">
                        <button class="btn btn-secondary w-100 cancelar-btn" type="button">Cancelar</button>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
</section>

<footer></footer>

<!-- Bootstrap & jQuery Scripts -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    // Evento para el botón de "Cancelar"
    $(".cancelar-btn").on("click", function() {
        window.location.href = '${pageContext.request.contextPath}/libros/findAll';
    });
});

// Bootstrap validation
(() => {
  'use strict'
  const forms = document.querySelectorAll('.needs-validation')
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }
      form.classList.add('was-validated')
    }, false)
  })
})()
</script>

</body>
</html>
