<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<title>Editar Pagos</title>
</head>
<body>
	<div class="container">
		<h1>Editar Pago</h1>
		<c:if test="${ccmensaje != null}">
			<h3>
				<c:out value="${ccmensaje}"></c:out>
			</h3>
		</c:if>
		<div class="container col-8">
			<form:form method="post" action="/proyectofinalmodulo/GuardarEditarPago">
				
				<div class="form-group">
					<form:hidden path="id_pago" class="col-8"/><br /><br />
				</div>
				<div class="form-group">
					<label>Mes A�o:</label> <br />
					<form:input type="text" path="mesanio" class="col-8" maxlength="10"/>
					<br />
				</div>
				<div class="form-group">
					<label>Monto Regular: </label><br />
					<form:input type="number" path="montoregular" class="col-8" />
					<br />
				</div>
				<div class="form-group">
					<label>Monto Adicional:</label> <br />
					<form:input type="number" path="montoadicionales" class="col-8" />
					<br/>
				</div>
				<div class="form-group">
					<form:select path="cliente_id_cliente" items="${listaclientes}"
						itemValue="Id_cliente" itemLabel="Nombre"></form:select>
				</div>
				
				<input type="submit" value="Guardar" class=" btn btn-success" />
				<a href="<%=request.getContextPath()%>/ListadoPago" class="btn btn-primary">Listar Pagos</a>
			</form:form>
		</div>
	</div>
</body>
</html>