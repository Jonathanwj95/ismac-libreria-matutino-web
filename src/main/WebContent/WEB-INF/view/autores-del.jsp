<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Eliminar Autor</title>
</head>
<body>

<h1>Eliminar Autor</h1>

<form action="del" method="get">
    <input type="hidden" id="idAutor" name="idAutor" value="${autor.idAutor}">
    <strong>¿Deseas eliminar este autor?</strong>
    <br/>
    <button type="submit">Eliminar</button>
    <button onclick="window.location.href='/autores/findAll'; return false;">Cancelar</button>
</form>

</body>
</html>
