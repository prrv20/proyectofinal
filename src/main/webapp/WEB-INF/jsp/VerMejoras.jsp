<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</head>
<body>

<div class="container text-center">
	<br>
	<h1> Lista de Mejoras</h1>
	<table class="table">

	<tr>
		<th>Id Mejora</th>
		<th>Fecha</th>
		<th>Motivo</th>
		<th>Actividades</th>
		<th>Estado</th>
		<th>Id Cliente</th>
		<th>Id Cliente</th>
	
	</tr>
	<c:forEach items="${listamejora}" var="mejora">
	<tr>
	<td class="table-light" scope="row">${mejora.getId_mejora()}</td>
	<td class="table-light">${mejora.getFecha()}</td>
	<td class="table-light">${mejora.getMotivo()}</td>
	<td class="table-light">${mejora.getActividades()}</td>
	<td class="table-light">${mejora.getEstado()}</td>
	<td class="table-light">${mejora.getCliente_id_cliente()}</td>
	<td class="table-light">
		<a title="Editar Mejora" href="<%=request.getContextPath()%>/EditarMejora/${mejora.getId_mejora()}" class="btn btn-warning"><i class="fas fa-pencil-alt"></i></a>&nbsp;
		<a title="Eliminar Mejora" href="<%=request.getContextPath()%>/EliminarMejora/${mejora.getId_mejora()}" class="btn btn-danger"><i class="fas fa-trash"></i></a>&nbsp;
	</td>
	</tr>
	</c:forEach>
</table>
<a href="<%=request.getContextPath()%>/FormularioMejora" class="btn btn-info"><i class="fas fa-plus-square"></i></a>&nbsp;
<br>
<a title="Ir a inicio" href="<%=request.getContextPath()%>/" class="btn btn-info"><i class="fas fa-home"></i></a>&nbsp;
</div>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>
</html>