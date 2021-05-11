<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario Registro de accidente</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Notable&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

</head>
<body>

<div class="container text-center">
		<h1>Formulario Registro de accidente</h1>
		<div class="container col-8">
		<form:form method="post" action="ProcesarAccidente">
			<label>Cliente: </label><br />
			<div class="form-group">
			<form:select path="cliente_id_cliente" items="${listaclientes}" itemValue="Id_cliente" itemLabel="Nombre"></form:select>
			</div>
			<div class="form-group">
			<label>Fecha Accidente: (Favor de utilizar este formato "Dia-Mes-A�o" Ej: 01-12-2020)</label><br />
			<form:input type="text" path="fecha" placeholder="01-01-2020" class="col-8" maxlength="10"/><br /> 
			</div>
			<div class="form-group">
			<label>Hora Accidente: (Favor de utilizar este formato "Hora:Min" Ej: 12:00</label><br />
			<form:input type="text" path="hora" placeholder="12:00" class="col-8" maxlength="10"/><br /> 
			</div>
			<div class="form-group">
			<label>Lugar: </label><br />
			<form:input type="text" path="lugar" class="col-8" maxlength="100"/><br /> 
			</div>
			<div class="form-group">
			<label>Descripci�n del Accidente: </label><br />
			<form:textarea path="suceso" cols="50" rows="5" maxlength="500"></form:textarea>
			</div>
			
			<br><br>
			<input type="submit" value="Agregar Accidente" class="btn btn-primary mb-3">
			<br>
			<a href="MostrarAccidente" class="btn btn-success"><i class="fas fa-list"></i></a>
		
			
	 </form:form>   

		</div>
		
</div>
	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
	
</body>
</html>