<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

<style>
.estilo{
width: 90%;
margin: 0 5%;
}
</style>
<title>Tasa de Accidentabilidad</title>
</head>
<body>
<div class="estilo">
<h1>Tasa de Accidentabilidad</h1>
<table class="table table-bordered">
	<tr>
		<th>Id Cliente</th>
		<th>Cant. Accidentes</th>
		<th>Cant. Trabajadores</th>
		<th>Tasa de Accidentabilidad</th>
	</tr>
	<c:forEach items="${listatasa}" var="tasa">
	<tr>
		
		<td scope="row">${tasa.getCliente_id_cliente()}</td>
		<td scope="row">${tasa.getCantacc()}</td>
		<td scope="row">${tasa.getCantidadtrabajadores()}</td>
		<td scope="row">${tasa.getTasa()}</td>
	</tr>
	</c:forEach>
</table>
<a href="index.jsp" class="btn btn-success"><i class="fas fa-home"></i></a>&nbsp;
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>