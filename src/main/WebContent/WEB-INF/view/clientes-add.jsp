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
 
<nav></nav>
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
	        
	            window.location.href = '${pageContext.request.contextPath}/clientes/findOne?idCliente=' + idCliente + '&opcion=' + opcion;
	       
	    });
	});
	</script>
</body>
</html>
