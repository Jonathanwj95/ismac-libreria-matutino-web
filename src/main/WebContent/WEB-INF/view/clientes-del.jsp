<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

<nav></nav>
<section>

<h1>Clientes</h1>

<form action="del" method="get">
<input type="hidden" id="idCliente" name="idCliente" value="${cliente.idCliente}">
<strong>¿Desea eliminar el dato?</strong>
<br/>
<button type="submit">Guardar</button>
<button onClick="window.location.href='/ismac-libreria-matutino-web/clientes/findAll'; return false;">Cancelar</button>
</form>
</section>
<footer></footer>


</body>
</html>