<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Libros</title>
<form action="del" method="get">
<input type="hidden" id="idLibro" name= "idLibro" value="${libro.idLibro}">
<strong>Desea eliminar el dato?</strong>
<button type="submit">Eliminar</button>
<button onClick="window.location.href='href='/ismac-libreria-matutino-web/libros/findAll'; return false;">Cancelar</button>
</head>
<body>

</body>
</html>