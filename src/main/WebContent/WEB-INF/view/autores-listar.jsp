<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Autores</title>
    <style>
        /* Estilo global */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        /* Barra de navegación */
        nav {
            background-color: #222;
            padding: 15px;
            text-align: center;
        }

        nav .nav-link {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-size: 1.1em;
        }

        nav .nav-link:hover {
            color: #ff9800;
        }

        /* Botón Agregar */
        button {
            background-color: #ff9800;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            margin: 10px 0;
            border-radius: 5px;
            font-size: 1.1em;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #e68900;
        }

        /* Tabla */
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        table th, table td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        table th {
            background-color: #333;
            color: white;
        }

        table tr:hover {
            background-color: #f1f1f1;
        }

        /* Footer */
        footer {
            background-color: #222;
            color: white;
            padding: 40px 20px;
            font-family: 'Arial', sans-serif;
            margin-top: 40px;
        }

        footer h2, footer h3 {
            margin-bottom: 10px;
        }

        footer a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }

        footer a:hover {
            color: #ff9800;
        }

        footer form input, footer form button {
            padding: 10px;
            font-size: 1em;
            border-radius: 5px;
        }

        footer form input {
            width: 250px;
            border: 1px solid #ddd;
            margin-right: 10px;
        }

        footer form button {
            background-color: #ff9800;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        footer form button:hover {
            background-color: #e68900;
        }

        /* Responsive */
        @media (max-width: 768px) {
            table {
                width: 100%;
                font-size: 0.9em;
            }

            footer div {
                flex: 1 1 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>

<!-- Barra de navegación -->
<nav>
    <a class="nav-link active" href="${pageContext.request.contextPath}/">Inicio</a>
    <a class="nav-link active" href="${pageContext.request.contextPath}/clientes/findAll">Clientes</a>
    <a class="nav-link active" href="${pageContext.request.contextPath}/autores/findAll">Autores</a>
    <a class="nav-link active" href="${pageContext.request.contextPath}/categorias/findAll">Categorías</a>
    <a class="nav-link active" href="${pageContext.request.contextPath}/libros/findAll">Libros</a>
    <a class="nav-link active" href="${pageContext.request.contextPath}/facturacion/findAll">Facturación</a>
    <a class="nav-link active" href="${pageContext.request.contextPath}/acercade/findAll">Acerca de</a>
    <a class="nav-link active" href="${pageContext.request.contextPath}/login/findAll">Iniciar Sesión</a>
</nav>

<!-- Contenido principal -->
<h1>Autores</h1>

<button onclick="window.location.href='${pageContext.request.contextPath}/autores/findOne?opcion=1'; return false;">Agregar</button>


<!-- Tabla de Autores -->
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>País</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="item" items="${autores}">
            <tr>
                <td>${item.idAutor}</td>
                <td>${item.nombre}</td>
                <td>${item.apellido}</td>
                <td>${item.pais}</td>
                <td>
                    <button onclick="window.location.href='${pageContext.request.contextPath}/autores/findOne?idAutor=1&opcion=2'; return false;">Actualizar</button>
					
					<button onclick="window.location.href='${pageContext.request.contextPath}/autores/findOne?idAutor=${item.idAutor}&opcion=2'; return false;">Eliminar</button>
										                 
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<!-- Footer -->
<footer>
    <div style="display: flex; flex-wrap: wrap; justify-content: space-between; max-width: 1200px; margin: auto;">
        <div style="flex: 1; min-width: 250px; text-align: center;">
            <h2>Librería ABC</h2>
            <p>Tu destino para los mejores libros</p>
        </div>

        <div style="flex: 1; min-width: 250px; text-align: center;">
            <h3>Información</h3>
            <ul style="list-style: none; padding: 0;">
                <li><a href="#sobre-nosotros">Sobre nosotros</a></li>
                <li><a href="#politicas-envio">Políticas de envío</a></li>
                <li><a href="#terminos-condiciones">Términos y condiciones</a></li>
                <li><a href="#politica-privacidad">Política de privacidad</a></li>
            </ul>
        </div>

        <div style="flex: 1; min-width: 250px; text-align: center;">
            <h3>Contacto</h3>
            <p>📞 (123) 456-7890</p>
            <p>✉️ <a href="mailto:contacto@libreriaabc.com">contacto@libreriaabc.com</a></p>
            <p>📍 Calle Ejemplo 123, Ciudad, País</p>
        </div>
    </div>

    <div style="text-align: center; margin-top: 20px;">
        <h3>Síguenos</h3>
        <div>
            <a href="#">🔵 Facebook</a>
            <a href="#">📸 Instagram</a>
            <a href="#">🐦 Twitter</a>
        </div>

        <h3 style="margin-top: 20px;">Suscríbete</h3>
        <form action="#" method="post">
            <input type="email" placeholder="Tu correo" required>
            <button type="submit">Suscribirse</button>
        </form>
    </div>

    <div style="text-align: center; margin-top: 20px; font-size: 12px;">
        <p>© 2024 Librería ABC. Todos los derechos reservados.</p>
    </div>
</footer>

</body>
</html>
