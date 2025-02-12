<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Autores</title>
</head>
<body>

<h1>Autores</h1>

<button onclick="window.location.href='/autores/findOne?opcion=1'; return false;">Agregar</button>

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
            <td>${item.id_autor}</td>
            <td>${item.nombre}</td>
            <td>${item.apellido}</td>
            <td>${item.pais}</td>
            <td>
                <button onclick="window.location.href='/autores/findOne?idAutor=${item.idAutor}&opcion=1'; return false;">Actualizar</button>
                <button onclick="window.location.href='/autores/findOne?idAutor=${item.idAutor}&opcion=2'; return false;">Eliminar</button>
            </td>
        </tr>
    </c:forEach>
</tbody>
</table>

</body>
</html>
