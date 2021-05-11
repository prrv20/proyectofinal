<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Listado de Capacitaciones</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Notable&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

</head>
<body>

<div class="container text-center" >
<h1>Listado Capacitaciones</h1>
<table class="table">
	<tr>
		<th>Fecha</th>
		<th>Hora</th>
		<th>Número de asistentes</th>
		<th>Id Visita</th>
	</tr>
	<c:forEach items="${listarcapacitacion}" var="capacitacion">
	<tr>
		<td class="table-light">${capacitacion.getFecha()}</td>
		<td class="table-light">${capacitacion.getHora()}</td>
		<td class="table-light">${capacitacion.getNumasistentes()}</td>
		<td class="table-light">${capacitacion.getVisitas_id_visita()}</td>
		<td class="table-light">
		
		<a title="Editar Capacitación" href="<%=request.getContextPath()%>/EditarCapacitacion/${capacitacion.getId_capacitacion()}" class="btn btn-warning"><i class="fas fa-pencil-alt"></i></a>&nbsp;
		<a title="Eliminar Capacitación" href="<%=request.getContextPath()%>/EliminarCapacitacion/${capacitacion.getId_capacitacion()}" class="btn  btn-danger"><i class="fas fa-trash"></i></a>&nbsp;
	</td>
	</tr>
	</c:forEach>
</table>
<br>
<br>
<a href="<%=request.getContextPath()%>/AgregarCapacitacion" class="btn btn-info"><i class="fas fa-plus-square"></i></a>&nbsp;
<a class="btn btn-primary" href="<%=request.getContextPath()%>/ListarCapacitacion">Actualizar Listado Capacitaciones</a>
<a title="Ir a inicio" href="<%=request.getContextPath()%>/" class="btn btn-info"><i class="fas fa-home"></i></a>&nbsp;
</div>

</body>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>

</html>