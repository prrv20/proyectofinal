<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mostrar �ltimo Pago</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Notable&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

<body>
<div class="container text-center">
	<h1>Informacion del ultimo pago del cliente</h1>
	<p class="text-primary h4">�ltimo Pago Realizado el: ${ultimopago.getMesanio()}</p>
	<p class="text-primary h4">Monto �ltimo Pago: $${ultimopago.getMontoregular()}</p>
	<p class="text-primary h4">Monto Adicional �ltimo Pago: $${ultimopago.getMontoadicionales()}</p>
	<p class="text-danger h4">${mensaje}</p>
	<br>	<br>	<br>
	
	<a title="Ir a inicio" href="<%=request.getContextPath()%>/" class="btn btn-info"><i class="fas fa-home"></i></a>&nbsp;
	<a href="<%=request.getContextPath()%>/ListadoClientes" class="btn btn-primary">Listado Clientes</a>
</div>


<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>

</body>
</html>