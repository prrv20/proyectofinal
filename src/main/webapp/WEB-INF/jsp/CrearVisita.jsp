<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Agregar Visitas</h1>
		<div class="container col-8">
		<form:form method="post" action="AgregarVisita">
			<div class="form-group">
			
			<label>Direcci?n: </label><br />
			<form:input type="text" path="direccion" class="col-8" maxlength="100"/><br />
			</div>
			<div class="form-group">
			<label>Ciudad: </label><br />
			<form:input type="text" path="ciudad" class="col-8" maxlength="50"/><br /> 
			</div>
			<div class="form-group">
			<label>Fecha: </label><br />
			<form:input type="text" path="fecha" class="col-8" maxlength="10"/><br /> 
			</div>
			<div class="form-group">
			<label>Resumen: </label><br />
			<form:input type="text" path="resumen" class="col-8" maxlength="500"/><br /> 
			</div>
			<div class="form-group">
			<label>Observaciones: </label><br />
			<form:input type="text" path="observaciones" class="col-8" maxlength="500"/><br /> 
			</div>
			<div class="form-group">
			<label>Cliente: </label><br />
					<form:select path="cliente_id_cliente" items="${listaclientes}"
						itemValue="Id_cliente" itemLabel="Nombre"></form:select>
			</div>
			<div class="form-group">
			<label>Empleado: </label><br />
					<form:select path="empleado_id_empleado" items="${listaempleados}"
						itemValue="Id_empleado" itemLabel="Nombre"></form:select>
			</div>
			
			
			<input type="submit" value="Agregar Visita" class="btn btn-success"/>
			<a href="<%=request.getContextPath()%>/ListadoVisitas" class="btn btn-primary">Listado Visitas</a>
		</form:form>
		</div>
		
	</div>
</body>
</html>