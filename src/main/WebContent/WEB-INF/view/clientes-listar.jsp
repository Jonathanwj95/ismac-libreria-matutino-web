<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ventas - Biblioteca</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css" />
    
    <!-- Font Awesome para los íconos -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>
        .btn-custom {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            font-size: 18px;
            padding: 10px 20px;
            border-radius: 10px;
            transition: all 0.3s ease-in-out;
        }

        .btn-custom i {
            font-size: 20px;
        }

        .btn-custom:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<nav></nav>

<section>
    <div class="container mt-3">
        <h1 class="text-center">Clientes</h1>
    </div>

    <div class="container text-center mt-3">
        <button class="btn btn-primary btn-custom" id="btnAgregar" name="btnAgregar"
            onclick="window.location.href='/ismac-libreria-matutino-web/clientes/findOne?opcion=1'; return false;">
            <i class="fas fa-user-plus"></i> Agregar Cliente
        </button>
    </div>

    <div class="table-responsive mt-3">
        <table id="tabla1" name="tabla1" data-search="True" data-pagination="True" class="table table-striped table-sm">
            <thead>
                <tr>
                    <th data-sortable="true">ID Cliente</th>
                    <th data-sortable="true">Cédula</th>
                    <th data-sortable="true">Nombre</th>
                    <th data-sortable="true">Apellido</th>
                    <th data-sortable="true">Dirección</th>
                    <th data-sortable="true">Teléfono</th>
                    <th data-sortable="true">Correo</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${clientes}">
                    <tr>
                        <td class="idCliente">${item.idCliente}</td>
                        <td>${item.cedula}</td>
                        <td>${item.nombre}</td>
                        <td>${item.apellido}</td>
                        <td>${item.direccion}</td>
                        <td>${item.telefono}</td>
                        <td>${item.correo}</td>
                        <td>
                            <button class="btn btn-success actualizar-btn">
                                <i class="fas fa-edit"></i> Actualizar
                            </button>
                            <button class="btn btn-danger borrar-btn">
                                <i class="fas fa-trash-alt"></i> Borrar
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<footer></footer>

<!-- Scripts -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script>
    $(function () {
        $('#tabla1').bootstrapTable({
            sortReset: true
        });
    });

    $(document).ready(function () {
        // Evento para "Actualizar"
        $(document).on("click", ".actualizar-btn", function () {
            var idCliente = $(this).closest("tr").find(".idCliente").text().trim();
            if (idCliente && !isNaN(idCliente)) {
                window.location.href = '${pageContext.request.contextPath}/clientes/findOne?idCliente=' + idCliente + '&opcion=1';
            } else {
                console.error("El ID del cliente no es válido.");
            }
        });

        // Evento para "Borrar"
        $(document).on("click", ".borrar-btn", function () {
            var idCliente = $(this).closest("tr").find(".idCliente").text().trim();
            if (idCliente && !isNaN(idCliente)) {
                window.location.href = '${pageContext.request.contextPath}/clientes/findOne?idCliente=' + idCliente + '&opcion=2';
            } else {
                console.error("El ID del cliente no es válido.");
            }
        });
    });
</script>

</body>
</html>
