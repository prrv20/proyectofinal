<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado Empleados</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Notable&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

</head>
<body>
<div class="container text-center">
<h1>Listado de Empleado</h1>
<table class="table">
	<tr>
		<th>Nombre Empleado</th>
		<th>Especialidad Empleado</th>
		<th>Acciones</th>
	</tr>
	<c:forEach items="${listaempleados}" var="empleado">
	<tr>
		<td class="table-light"" scope="row">${empleado.getNombre()}</td>
		<td class="table-light">${empleado.getEspecialidad()}</td>
		<td class="table-light">
			<a href="<%=request.getContextPath()%>/EditarEmpleado/${empleado.getId_empleado()}" class="btn btn-warning"><i class="fas fa-pencil-alt"></i></a>&nbsp;
			<a href="<%=request.getContextPath()%>/EliminarEmpleado/${empleado.getId_empleado()}" class="btn  btn-danger"><i class="fas fa-trash"></i></a>&nbsp;
		</td>
	</tr>
	</c:forEach>
</table>
<br/>
<br/>
<a href="<%=request.getContextPath()%>/CrearEmpleado" class="btn btn-info"><i class="fas fa-user-plus"></i></a>&nbsp;

<a class="btn btn-primary" href="<%=request.getContextPath()%>/ListadoEmpleados">Actualizar Listado Empleado</a>
<a title="Ir a inicio" href="<%=request.getContextPath()%>/" class="btn btn-info"><i class="fas fa-home"></i></a>&nbsp;
</div>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>
</html>