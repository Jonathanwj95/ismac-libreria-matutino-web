<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Categorías - CoffeeShop Ismac</title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" rel="stylesheet">
</head>
<body>

<section>
    <!-- Título de la página -->
    <div class="container" style="padding-top: 10px">
        <h1>Categorías</h1>
    </div>

    <!-- Botón para agregar una nueva categoría -->
    <div class="container" style="text-align: center;">
        <button class="btn btn-primary" onClick="window.location.href='/ismac-libreria-matutino-web/categorias/findOne?idCategoria=2&opcion=1'; return false;">
            Agregar
        </button>
    </div>
    
    <!-- Tabla de categorías -->
    <div class="container table-responsive">
        <table id="tabla1" name="tabla1" data-search="true" data-pagination="true" data-height="600" class="table table-striped table-sm">
            <thead>
                <tr>
                    <th data-sortable="true">ID</th>
                    <th data-sortable="true">Categoría</th>
                    <th data-sortable="true">Descripción</th>
                    <th data-sortable="true">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${categorias}">
                    <tr>
                        <td>${item.idCategoria}</td>
                        <td>${item.categoria}</td>
                        <td>${item.descripcion}</td>
                        <td>
                            <!-- Botón para actualizar -->
                            <button class="btn btn-success" onClick="window.location.href='/ismac-libreria-web/categorias/findOne?opcion=2&idCategoria=${item.idCategoria}'">
                                Actualizar
                            </button>
                            <!-- Botón para borrar -->
                            <button class="btn btn-danger" onClick="window.location.href='/ismac-libreria-matutino-web/categorias/findOne?idCategoria=2&opcion=3'">
                                Borrar
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<footer>
    <!-- Pie de página (opcional) -->
</footer>

<!-- Scripts necesarios -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
<script type="text/javascript">
    var $tabla1 = $('#tabla1');
    $(function() {
        $tabla1.bootstrapTable({ sortReset: true });
    });
</script>
</body>
</html>