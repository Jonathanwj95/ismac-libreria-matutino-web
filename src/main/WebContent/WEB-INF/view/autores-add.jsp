<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar/Actualizar Autor</title>
</head>
<body>

<h1>Autor</h1>

<form action="add" method="POST">

    <input type="hidden" id="idAutor" name="idAutor" value="${autor.idAutor}"/>

    Nombre
    <input type="text" id="nombre" name="nombre" value="${autor.nombre}"/>
    <br/>

    Apellido
    <input type="text" id="apellido" name="apellido" value="${autor.apellido}"/>
    <br/>

    País
    <input type="text" id="pais" name="pais" value="${autor.pais}"/>
    <br/>

    Dirección
    <input type="text" id="direccion" name="direccion" value="${autor.direccion}"/>
    <br/>

    Teléfono
    <input type="text" id="telefono" name="telefono" value="${autor.telefono}"/>
    <br/>

    Correo
    <input type="email" id="correo" name="correo" value="${autor.correo}"/>
    <br/>

    <button type="submit">Guardar</button>

    <button onclick="window.location.href='/autores/findAll'; return false;">Cancelar</button>

</form>

</body>
</html>
