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
    <style>
        .container-custom {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 15px;
            background: #f8f9fa;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body class="bg-light">
    <div class="container-custom">
        <h1 class="text-center text-primary mb-4">
            <i class="fas fa-list-alt"></i> Categorías
        </h1>
        
        <form action="/ismac-libreria-web/categorias/add" method="POST">
            <input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}" />
            
            <div class="mb-3">
                <label for="categoria" class="form-label">Categoría</label>
                <input type="text" id="categoria" name="categoria" class="form-control" value="${categoria.categoria}" required>
            </div>
            
            <div class="mb-3">
                <label for="descripcion" class="form-label">Descripción</label>
                <input type="text" id="descripcion" name="descripcion" class="form-control" value="${categoria.descripcion}" required>
            </div>
            
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-save"></i> Guardar
                </button>
                <button type="button" class="btn btn-secondary" onclick="window.location.href='/ismac-libreria-web/categorias/findAll';">
                    <i class="fas fa-times"></i> Cancelar
                </button>
            </div>
        </form>
    </div>

    <!-- Scripts de Bootstrap y FontAwesome -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js"></script>
</body>
</html>