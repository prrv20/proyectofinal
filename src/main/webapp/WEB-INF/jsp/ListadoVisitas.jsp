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
<h1>Listado de Visitas</h1>

<table class="table">
	<tr>
		<th>Id Visita</th>
		<th>Dirección</th>
		<th>Ciudad</th>
		<th>Fecha</th>
		<th>Resumen</th>
		<th>Observaciones</th>
		<th>Id Cliente</th>
		<th>Id Empleado</th>
		<th>Acciones</th>
	</tr>
	<c:forEach items="${listarvisitas}" var="visitas">
	<tr>
		<td class="table-light" scope="row">${visitas.getId_visita()}</td>
		<td class="table-light">${visitas.getDireccion()}</td>
		<td class="table-light">${visitas.getCiudad()}</td>
		<td class="table-light">${visitas.getFecha()}</td>
		<td class="table-light">${visitas.getResumen()}</td> 
		<td class="table-light">${visitas.getObservaciones()}</td>
		<td class="table-light">${visitas.getCliente_id_cliente()}</td>
		<td class="table-light">${visitas.getEmpleado_id_empleado()}</td>
		<td class="table-light">
			<a title="Eliminar Visita" href="<%=request.getContextPath()%>/EliminarVisita/${visitas.getId_visita()}" class="btn  btn-danger"><i class="fas fa-trash"></i></a>&nbsp;
			<a title="Editar Visita" href="<%=request.getContextPath()%>/EditarVisita/${visitas.getId_visita()}" class="btn btn-warning"><i class="fas fa-pencil-alt"></i></a>&nbsp;
		</td>
	</tr>
	</c:forEach>
</table>
<br/>
<a href="<%=request.getContextPath()%>/CrearVisita" class="btn btn-success"><i class="fas fa-plus-square"></i></a>
<a href="<%=request.getContextPath()%>/ListadoVisitas" class="btn btn-primary"><i class="fas fa-sync-alt"></i></a>
<a href="<%=request.getContextPath()%>/" class="btn btn-success"><i class="fas fa-home"></i></a>
</div>
</body>
</html>