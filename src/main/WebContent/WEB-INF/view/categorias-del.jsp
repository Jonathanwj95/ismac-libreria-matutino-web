<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Categorias</h1>
	
	<form action="del" method="get">
	
		<input type="hidden" id="idCategoria" name="idCategoria" value="${categoria.idCategoria}"/>
		
		<strong>¿Desea eliminar el dato?</strong>
		
		<button type="submit">Guardar</button>
		<button onClick="window.location.href='/ismac-libreria-web/categorias/findAll'; return false;">Cancelar</button>
	
	</form>
</body>
</html>