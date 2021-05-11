<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Capacitación</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
		<h1>Editar cliente</h1>
		<div class="row">
		<div class="container col-10">
		<form:form method="post" action="/proyectofinalmodulo/GuardarEditarCapacitacion">
			<div class="form-group">
			<form:hidden path="id_capacitacion" class="col-8"/><br /><br />
			</div>
			<label>Fecha: </label><br />
			<div class="form-group">
			<form:input type="text" path="fecha" class="col-8" maxlength="10"/><br />
			</div>
			<div class="form-group">
			<label>Hora: </label><br />
			<form:input type="text" path="hora" class="col-8" maxlength="10"/><br /> 
			</div>
			<div class="form-group">
			<label>Número de asistentes: </label><br />
			<form:input type="number" path="numasistentes" class="col-8"/><br /> 
			</div>
			<div class="form-group">
					<label class="form-label">Visita :</label><br /> 
					<form:select path="visitas_id_visita" items="${listavisitas}" itemValue="id_visita" itemLabel="id_visita"></form:select>
				</div>
			
			<input type="submit" value="Guardar Cambios" class="btn btn-success"/>
			<a href="<%=request.getContextPath()%>/ListarCapacitacion" class="btn btn-primary">Listado de Capacitaciones</a>
			
		</form:form>
		</div>
	</div>
	</div>

</body>
</html>