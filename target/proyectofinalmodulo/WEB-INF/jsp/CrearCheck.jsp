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
<title>Insertar Check</title>
</head>
<body>
	<div class="container">
		<h1>Agregar Chequeo</h1>
		<div class="container col-8">
		<form:form method="post" action="AgregarCheck">
			<div class="form-group">
			
			<label>Detalle: </label><br />
			<form:input type="text" path="detalle" class="col-8" maxlength="500"/><br />
			</div>
			<div class="form-group">
			<label>Estado: </label><br />
			<form:input type="text" path="estado" class="col-8" maxlength="10"/><br /> 
			</div>
			<div class="form-group">
					<label class="form-label">Visita :</label><br /> 
					<form:select path="visitas_id_visita" items="${listavisitas}" itemValue="id_visita" itemLabel="id_visita"></form:select>
				</div>
			
			<input type="submit" value="Agregar chequeo" class="btn btn-success"/>
			<a href="<%=request.getContextPath()%>/ListadoChequeos" class="btn btn-primary">Listar Chequeo</a>
		</form:form>
		</div>
		
	</div>
</body>
</html>