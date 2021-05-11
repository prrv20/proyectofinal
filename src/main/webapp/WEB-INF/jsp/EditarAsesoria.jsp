<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" />
<link href="https://fonts.googleapis.com/css2?family=Notable&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<meta charset="ISO-8859-1">
<title>Editar Asesoria</title>
</head>
<body>
<div class="container">
	<h1>Editar Asesorias</h1>
	<div class="row">
		<div class="container col-10">
			<form:form method="post" action="/proyectofinalmodulo/GuardarEditarAsesoria">
				<div class="form-group">
					<form:hidden path="id_asesoria" class="col-8"/><br /><br />
				</div>
				<div class="form-group">
					<label class="form-label">Detalle :</label><br /> 
					<form:input type="text" path="detalle" class="col-8" maxlength="500"/><br />
				</div>
				<div class="form-group">
					<label class="form-label">Gestion :</label><br /> 
					<form:input type="text" path="gestion" class="col-8" maxlength="500"/><br />
				</div>
				<div class="form-group">
					<label class="form-label">Propuesta :</label><br /> 
					<form:input type="text" path="propuestas" class="col-8" maxlength="500"/><br />
				</div>
					<div class="form-group">
					<label class="form-label">Fecha : (Favor de ocupar este formato "Día-Mes-Año")</label><br /> 
					<form:input type="text" path="fecha" placeholder="01-02-2020 Utilizar este formato" class="col-8" maxlength="10"/><br />
				</div>
				<div class="form-group">
					<label class="form-label">Especial :</label><br /> 
					<form:input type="text" path="especial" class="col-8" maxlength="5"/><br />
				</div>
				<div class="form-group">
					<label class="form-label">Visita :</label><br /> 
					<form:select path="visitas_id_visita" items="${listavisitas}" itemValue="id_visita" itemLabel="id_visita"></form:select>
				</div>
				<br />
				<br>
				<input type="submit" value="Guardar Cambios" class="btn btn-success mb-3">
				<a href="<%=request.getContextPath()%>/ListadoAsesoria" class="btn btn-primary mb-3">Listar Asesorias</a>
				
			</form:form>
		</div>
	</div>	
</div>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>

</body>

</html>