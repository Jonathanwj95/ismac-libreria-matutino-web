<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<section>
	<div class="container mt-5">
    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white text-center">
            <h2>Registro de Clientes</h2>
        </div>
        <div class="card-body">
            <form action="add" method="Post">
                <input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}" />

                <div class="mb-3">
                    <label for="cedula" class="form-label fw-bold">Cédula</label>
                    <input class="form-control" type="text" id="cedula" name="cedula" value="${cliente.cedula}" required />
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="nombre" class="form-label fw-bold">Nombre</label>
                        <input class="form-control" type="text" id="nombre" name="nombre" value="${cliente.nombre}" required />
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="apellido" class="form-label fw-bold">Apellido</label>
                        <input class="form-control" type="text" id="apellido" name="apellido" value="${cliente.apellido}" required />
                    </div>
                </div>

                <div class="mb-3">
                    <label for="direccion" class="form-label fw-bold">Dirección</label>
                    <input class="form-control" type="text" id="direccion" name="direccion" value="${cliente.direccion}" />
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="telefono" class="form-label fw-bold">Teléfono</label>
                        <input class="form-control" type="text" id="telefono" name="telefono" value="${cliente.telefono}" required />
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="correo" class="form-label fw-bold">Correo</label>
                        <input class="form-control" type="email" id="correo" name="correo" value="${cliente.correo}" required />
                    </div>
                </div>

                <div class="text-end">
                    <button class="btn btn-success px-4 me-2" type="submit"><i class="bi bi-save"></i> Guardar</button>
                    <button class="btn btn-danger px-4 cancelar-btn"><i class="bi bi-x-circle"></i> Cancelar</button>
                </div>
            </form>
        </div>
    </div>
</div>
	
 
 
</section>
<footer style="background-color: #222; color: #fff; padding: 40px 20px; font-family: Arial, sans-serif;">
    <div style="display: flex; flex-wrap: wrap; justify-content: space-between; max-width: 1200px; margin: auto;">
        <!-- Información principal -->
        <div style="flex: 1; min-width: 250px; text-align: center;">
            <h2 style="margin-bottom: 10px;">Librería ABC</h2>
            <p>Tu destino para los mejores libros</p>
        </div>
 
        <!-- Enlaces rápidos -->
        <div style="flex: 1; min-width: 250px; text-align: center;">
            <h3>Información</h3>
            <ul style="list-style: none; padding: 0;">
                <li><a href="#sobre-nosotros" style="color: #fff; text-decoration: none;">Sobre nosotros</a></li>
                <li><a href="#politicas-envio" style="color: #fff; text-decoration: none;">Políticas de envío</a></li>
                <li><a href="#terminos-condiciones" style="color: #fff; text-decoration: none;">Términos y condiciones</a></li>
                <li><a href="#politica-privacidad" style="color: #fff; text-decoration: none;">Política de privacidad</a></li>
            </ul>
        </div>
 
        <!-- Contacto -->
        <div style="flex: 1; min-width: 250px; text-align: center;">
            <h3>Contacto</h3>
            <p>📞 (123) 456-7890</p>
            <p>✉️ <a href="mailto:contacto@libreriaabc.com" style="color: #fff;">contacto@libreriaabc.com</a></p>
            <p>📍 Calle Ejemplo 123, Ciudad, País</p>
        </div>
    </div>
 
    <!-- Redes Sociales y suscripción -->
    <div style="text-align: center; margin-top: 20px;">
        <h3>Síguenos</h3>
        <div>
            <a href="#" style="margin: 0 10px; color: #fff;">🔵 Facebook</a>
            <a href="#" style="margin: 0 10px; color: #fff;">📸 Instagram</a>
            <a href="#" style="margin: 0 10px; color: #fff;">🐦 Twitter</a>
        </div>
 
        <h3 style="margin-top: 20px;">Suscríbete</h3>
        <form action="#" method="post">
            <input type="email" placeholder="Tu correo" required style="padding: 10px; width: 200px; border: none;">
            <button type="submit" style="padding: 10px; background-color: #ff9800; color: #fff; border: none; cursor: pointer;">Suscribirse</button>
        </form>
    </div>
 
    <!-- Derechos reservados -->
    <div style="text-align: center; margin-top: 20px; font-size: 12px;">
        <p>© 2024 Librería ABC. Todos los derechos reservados.</p>
    </div>
</footer>
 
 
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
	    // Evento para el botón de "Actualizar"
	    $(".cancelar-btn").on("click", function() {
	        
	            window.location.href = '${pageContext.request.contextPath}/clientes/findOne?idCliente=' + idCliente + '&opcion=' + opcion;
	       
	    });
	});
	</script>
</body>
</html>
