<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>Listado de Chequeos</h1>

<table class="table">
	<tr>
		<td>Id Chequeo</td>
		<td>Detalle</td>
		<td>Estado</td>
		<td>Id Visita</td>
		<td>Acciones</td>
	</tr>
	<c:forEach items="${listachk}" var="check">
	<tr>
		<td class="table-light" scope="row">${check.getId_chequeo()}</td>
		<td class="table-light">${check.getDetalle()}</td>
		<td class="table-light">${check.getEstado()}</td>
		<td class="table-light">${check.getVisitas_id_visita()}</td>
		<td class="table-light" colspan="2">
			<a title="Eliminar Chequeo" href="<%=request.getContextPath()%>/EliminarCheck/${check.getId_chequeo()}" class="btn  btn-danger"><i class="fas fa-trash"></i></a>&nbsp;
			<a title="Editar Chequeo" href="<%=request.getContextPath()%>/EditarCheck/${check.getId_chequeo()}" class="btn btn-warning"><i class="fas fa-pencil-alt"></i></a>&nbsp;
		</td>
	</tr>
	</c:forEach>
</table>
<br/>
<a href="<%=request.getContextPath()%>/CrearCheck" class="btn btn-info"><i class="fas fa-plus-square"></i></a>&nbsp;
<a href="<%=request.getContextPath()%>/ListadoChequeos" class="btn btn-primary"><i class="fas fa-sync-alt"></i></a>
<a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-success"><i class="fas fa-home"></i></a>
</div>
</body>
</html>