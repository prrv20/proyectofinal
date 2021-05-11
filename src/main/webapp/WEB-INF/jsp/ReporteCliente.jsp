<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reporte De Cliente</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
</head>
<body>
<div class="container">
	<h1>Reporte General de Cliente</h1>
		<div class="panel panel-default ">
			<div class="panel-heading bg-secondary text-light"><h2>Visitas</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
						<th>Visita</th>
						<th>Dirección</th>
						<th>Ciudad</th>
						<th>Fecha</th>
						<th>Resumen</th>
						<th>Observaciones</th>
						<th>ID Cliente</th>
						<th>Id Empleado</th>
					</thead>
					<c:forEach var="visita" items="${listavisitas}">
					<tr>
						<td>${visita.id_visita}</td>
						<td>${visita.direccion}</td>
						<td>${visita.ciudad}</td>
						<td>${visita.fecha}</td>
						<td>${visita.resumen}</td>
						<td>${visita.observaciones}</td>
						<td>${visita.cliente_id_cliente}</td>
						<td>${visita.empleado_id_empleado}</td>
					</tr>
					</c:forEach>
				</table>			
			</div>
		</div>
		<div class="panel panel-default ">
			<div class="panel-heading bg-secondary text-light"><h2>Pagos</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
						<th>Id Pago</th>
						<th>Mes Año</th>
						<th>Monto Regular</th>
						<th>Monto Adicional</th>
						<th>Id Cliente</th>
					</thead>
					<c:forEach var="pago" items="${list2}">
					<tr>
						<td>${pago.id_pago}</td>
						<td>${pago.mesanio}</td>
						<td>${pago.montoregular}</td>
						<td>${pago.montoadicionales}</td>
						<td>${pago.cliente_id_cliente}</td>
					</tr>
					</c:forEach>
				</table>		
			</div>
		</div>
		<div class="panel panel-default ">
			<div class="panel-heading bg-secondary text-light"><h2>Actividades</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
						<th>Fecha</th>
						<th>Dirección</th>
						<th>Ciudad</th>
						<th>Resumen</th>		
						<th>Observaciones</th>
					</thead>
					<c:forEach items="${listaact}" var="visita">
					<tr>
						<td class="table-light" scope="row">${visita.getFecha()}</td>
						<td class="table-light">${visita.getDireccion()}</td>
						<td class="table-light">${visita.getCiudad()}</td>
						<td class="table-light">${visita.getResumen()}</td>
						<td class="table-light">${visita.getObservaciones()}</td>
					</tr>
					</c:forEach>
				</table>		
			</div>
		</div>
		<div class="panel panel-default ">
			<div class="panel-heading bg-secondary text-light"><h2>Accidentes</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
						<th>cliente id</th>
						<th>Id Accidente</th>
						<th>Fecha</th>
						<th>hora</th>
						<th>suceso</th>
						<th>lugar</th>
					</thead>	
					<c:forEach items="${listadoaccidente2}" var="accidente">
					<tr>
						<td class="table-light">${accidente.getCliente_id_cliente()}</td>
						<td class="table-light" scope="row">${accidente.getId_accidente()}</td>
						<td class="table-light">${accidente.getFecha()}</td>
						<td class="table-light">${accidente.getHora()}</td>
						<td class="table-light">${accidente.getSuceso()}</td>
						<td class="table-light">${accidente.getLugar()}</td>	
					</tr>
					</c:forEach>
				</table>		
			</div>
		</div>
	
		<div class="panel panel-default ">
			<div class="panel-heading bg-secondary text-light"><h2>Lista de Mejoras</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
						<th>Id mejora</th>
						<th>Fecha</th>
						<th>Motivo</th>
						<th>Actividades</th>
						<th>Estado</th>
						<th>Id cliente</th>
					</thead>
					<c:forEach items="${listmej}" var="mejora">
					<tr>
						<td class="table-light" scope="row">${mejora.getId_mejora()}</td>
						<td class="table-light">${mejora.getFecha()}</td>
						<td class="table-light">${mejora.getMotivo()}</td>
						<td class="table-light">${mejora.getActividades()}</td>
						<td class="table-light">${mejora.getEstado()}</td>
						<td class="table-light">${mejora.getCliente_id_cliente()}</td>
					</tr>
					</c:forEach>
				</table>			
			</div>
		</div>
<a href="<%=request.getContextPath()%>/ListadoClientes" class="btn btn-primary" role="button">Listado Clientes</a> 
<a href="<c:url value="/index.jsp"/>" class="btn btn-success"><i class="fas fa-home"></i></a>
	</div> 
	 	
</body>
</html>