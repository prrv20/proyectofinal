<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Notable&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<title>Agregar capacitación</title>
</head>
<body>
<div class="container text-center">
		<h1>Agregar capacitación</h1>
		<div class="container col-8">
		<form:form method="post" action="AgregaCapacitacion">
			<div class="form-group">
			<label>Fecha: </label><br />
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
			
			<br><br>
			<input type="submit" value="Agregar Capacitacion" class="btn btn-primary mb-3">
			<br>
			<a href="ListarCapacitacion" class="btn btn-success"><i class="fas fa-list">Listar Capacitaciones</i></a>
		
			
	 </form:form>   
		
	</div>
</div>
	
</body>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
	

</html>