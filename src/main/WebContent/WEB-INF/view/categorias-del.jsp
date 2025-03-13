<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Eliminar Categoría - CoffeeShop Ismac</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <style>
        .container-custom {
            max-width: 500px;
            margin-top: 50px;
            padding: 30px;
            border-radius: 15px;
            background-color: #f8f9fa;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        .btn-cancel {
            margin-left: 10px;
        }
    </style>
</head>
<nav class="nav" style="background-color: black; padding: 10px;">
	<a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/" style="color: white;">Inicio</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/clientes/findAll" style="color: white;">Clientes</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/autores/findAll" style="color: white;">Autores</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/categorias/findAll" style="color: white;">Categorías</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/libros/findAll" style="color: white;">Libros</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/facturacion/findAll" style="color: white;">Facturación</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/acercade/findAll" style="color: white;">Acerca de</a>
	<a class="nav-link active" href="${pageContext.request.contextPath}/login/findAll" style="color: white;">Iniciar Sesión</a>
</nav>
<body class="bg-light">

    <div class="container d-flex justify-content-center">
        <div class="container-custom">
            <h2 class="text-center text-danger mb-4">
                <i class="fas fa-trash-alt"></i> Eliminar Categoría
            </h2>

            <p class="text-center">¿Estás seguro de que deseas eliminar esta categoría?</p>
            
            <div class="mb-3">
                <p><strong>ID:</strong> ${categoria.idCategoria}</p>
                <p><strong>Categoría:</strong> ${categoria.categoria}</p>
                <p><strong>Descripción:</strong> ${categoria.descripcion}</p>
            </div>

            <form action="/ismac-libreria-web/categorias/del" method="POST">
                <input type="hidden" name="idCategoria" value="${categoria.idCategoria}" />
                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn btn-danger btn-lg">
                        <i class="fas fa-trash-alt"></i> Eliminar
                    </button>
                    <button type="button" class="btn btn-secondary btn-lg btn-cancel" onclick="window.location.href='/ismac-libreria-web/categorias/findAll';">
                        <i class="fas fa-times"></i> Cancelar
                    </button>
                </div>
            </form>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    
</body>
</html>
