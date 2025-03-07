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
