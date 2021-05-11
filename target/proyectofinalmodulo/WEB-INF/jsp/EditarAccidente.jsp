<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Accidente</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Notable&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

</head>
<body>

	<div class="container text-center">
		<h1>Editar Accidente</h1>
		<div class="container col-8">
			<form:form method="post"
				action="/proyectofinalmodulo/GuardarEditarAccidente">


				<div class="form-group">
					<form:hidden path="id_accidente" class="col-8" />
					<br />
					<br />
				</div>

				<div class="form-group">
					<label>Fecha Accidente: </label><br />
					<form:input type="text" path="fecha" class="col-8" maxlength="10"/>
					<br />
				</div>
				<div class="form-group">
					<label>Hora Accidente: </label><br />
					<form:input type="text" path="hora" class="col-8" maxlength="10"/>
					<br />
				</div>
				<div class="form-group">
					<label>Lugar: </label><br />
					<form:input type="text" path="lugar" class="col-8" maxlength="100"/>
					<br />
				</div>
				<div class="form-group">
					<label>Descripción del Accidente: </label><br />
					<form:textarea path="suceso" cols="50" rows="5" maxlength="500"></form:textarea>
				</div>
				<div class="form-group">
					<form:hidden path="cliente_id_cliente" class="col-8" />
					<br />
				</div>
				<br>
				<br>
				<input type="submit" value="Editar Accidente"
					class="btn btn-primary mb-3">
				<br>
				<a href="<%=request.getContextPath()%>/MostrarAccidente" class="btn btn-success"><i
					class="fas fa-list"></i></a>


			</form:form>

		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>

</body>
</html>