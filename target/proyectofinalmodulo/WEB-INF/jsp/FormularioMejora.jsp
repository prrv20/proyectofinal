<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario Registro de mejoras</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Notable&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

</head>
<body>
<div class="container text-center">
		<h1>Formulario Ingreso de Mejoras</h1>
		<div class="container col-8">
		<form:form method="post" action="AgregarMejora">
			<div class="form-group">
				<label>Cliente: </label><br />
				<form:select path="cliente_id_cliente" items="${listaclientes}" itemValue="Id_cliente" itemLabel="Nombre"></form:select>
				</div><br />
			<div class="form-group">
			<label>Fecha Mejora: (Favor ocupar este formato "Día-Mes-Año")</label><br />
			<form:input type="" path="fecha" class="col-8" maxlength="10" /><br /> 
			</div>
			<div class="form-group">
			<label>Motivo: </label><br />
			<form:input type="text" path="motivo" class="col-8" maxlength="500"/><br /> 
			</div>
			<div class="form-group">
			<label>Actividades: </label><br />
			<form:input type="text" path="actividades" class="col-8" maxlength="500"/><br /> 
			</div>
			<div class="form-group">
			<label>Estado: </label><br />
			<form:input type="text" path="estado" class="col-8" maxlength="10"/><br /> 
			</div>
			<br><br>
			<input type="submit" value="Agregar Mejora	" class="btn btn-primary mb-3">
			<br>
			<a title="Ver Mejoras" href="<%=request.getContextPath()%>/ListadoMejoras" class="btn btn-info"><i class="fas fa-list"></i></a>&nbsp;
			
	 </form:form>   

		</div>
		
</div>
	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
	

</body>
</html>