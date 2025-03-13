<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Eliminar Autor</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">Librería ABC</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a></li>
                <li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath}/autores/findAll">Autores</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/categorias/findAll">Categorías</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/libros/findAll">Libros</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/facturacion/findAll">Facturación</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/acercade/findAll">Acerca de</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/login/findAll">Iniciar Sesión</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Contenido principal -->
<div class="container mt-5">
    <h1 class="text-center text-danger">Eliminar Autor</h1>
    <p class="text-center">¿Estás seguro de que deseas eliminar a <strong>${autor.nombre} ${autor.apellido}</strong>?</p>

    <div class="text-center">
        <form action="${pageContext.request.contextPath}/autores/del" method="get">
            <input type="hidden" name="idAutor" value="${autor.idAutor}">
            <button type="submit" class="btn btn-danger">Eliminar</button>
            <a href="${pageContext.request.contextPath}/autores/findAll" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-light text-center py-4 mt-5">
    <p>&copy; 2024 Librería ABC. Todos los derechos reservados.</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

