<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<title>Reporte General</title>
</head>
<body>
	<div class="container">
		<h1>Reporte General</h1>
		<div class="panel panel-default ">
			<div class="panel-heading bg-secondary"><h2>Listado de Clientes</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
					<tr>
						<th>Nombre</th>
						<th>Teléfono</th>
						<th>Correo Electrónico</td>
						<th>Rubro</th>
						<th>Dirección</th>
						<th>Cantidad Trabajadores</th>
					</tr>
					</thead>
					<c:forEach items="${listaclientes}" var="cliente">
					<tr>
						<td class="table-light" scope="row">${cliente.getNombre()}</td>
						<td class="table-light">${cliente.getTelefono()}</td>
						<td class="table-light">${cliente.getCorreoelectronico()}</td>
						<td class="table-light">${cliente.getRubro()}</td>
						<td class="table-light">${cliente.getDireccion()}</td>
						<td class="table-light">${cliente.getCantidadtrabajadores()}</td>
					</tr>
					</c:forEach>
				</table>			
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading bg-secondary"><h2>Listado de Pagos</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
					<tr class="bg-info">
						<th >Id Pago</th>
						<th>Mes Año</th>
						<th>Monto Regular</th>
						<th>Monto Adicional</th>
						<th>Id Cliente</th>
					</tr>
					</thead>
					<c:forEach var="pago" items="${listapago}">
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
		<div class="panel panel-default">
			<div class="panel-heading bg-secondary"><h2>Asesorías</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
					<tr>
						<th>Id Asesoría</th>
						<th>Detalle</th>
						<th>Gestión</th>
						<th>Propuestas</th>
						<th>Fecha</th>
						<th>Especial</th>
						<th>Id Visita</th>
					</tr>
					</thead>
					<c:forEach items="${listasesoria}" var="asesoria">
						<tr>
							<td class="table-light" scope="row">${asesoria.id_asesoria}</td>
							<td class="table-light">${asesoria.detalle}</td>
							<td class="table-light">${asesoria.gestion}</td>
							<td class="table-light" >${asesoria.propuestas}</td>
							<td class="table-light">${asesoria.fecha}</td>
							<td class="table-light">${asesoria.especial}</td>
							<td class="table-light">${asesoria.visitas_id_visita}</td>		
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading bg-secondary"><h2>Visitas</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
					<tr>
						<th>Visita</th>
						<th>Dirección</th>
						<th>Ciudad</th>
						<th>Fecha</th>
						<th>Resumen</th>
						<th>Observaciones</th>
						<th>Cliente</th>
						<th>Empleado</th>
					</tr>
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
		<div class="panel panel-defaul">
			<div class="panel-heading bg-secondary"><h2>Mejoras</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
					<tr>
						<th>Id mejora</th>
						<th>Fecha</th>
						<th>Motivo</th>
						<th>Actividades</th>
						<th>Estado</th>
						<th>Id Cliente</th>
					</tr>
					</thead>
					<c:forEach items="${listamejora}" var="mejora">
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
		<div class="panel panel-default">
			<div class="panel-heading bg-secondary"><h2>Accidentes</h2></div>
			<div class="panel-body">
				<table class="table">
					<thead class="thead-dark">
					<tr>
						<th>Id Accidente</th>
						<th>Fecha</th>
						<th>Hora</th>
						<th>Suceso</th>
						<th>Lugar</th>
						<th>Cliente</th>
					</tr>
					</thead>
					<c:forEach items="${listadoaccidente}" var="accidente">
					<tr>
						<td class="table-light" scope="row">${accidente.getId_accidente()}</td>
						<td class="table-light">${accidente.getFecha()}</td>
						<td class="table-light">${accidente.getHora()}</td>
						<td class="table-light">${accidente.getSuceso()}</td>
						<td class="table-light">${accidente.getLugar()}</td>
						<td class="table-light">${accidente.getCliente_id_cliente()}</td>
					</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-success"><i class="fas fa-home"></i></a>
	</div>
</body>
</html>