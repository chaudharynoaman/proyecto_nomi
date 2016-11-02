<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
   		<meta http-equiv="X-UA-Compatible" content="IE=edge">
   		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		

		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

		<link rel="stylesheet" type="text/css" href="../css/jobs.css"> 

</head>
<body>
	<div class="container">

     		<form class="form-signin" action="../job" method="post" id="idFormJob">
				<h2 class="form-signin-heading">Creacion de trabajos</h2>
					
				<div class="form-group">
					<label for="labelTitulo" class="etiqueta">Titulo</label>
					<input type="text" name="tituloTrabajo" class="form-control" id="idTituloTrabajo"/>
				</div>
				
				<div class="form-group">
					<label for="labelCiudad" class="etiqueta">Ciudad</label>
					<input type="text" name="ciudadTrabajo" class="form-control" id="idCiudadTrabajo"/>
				</div>
				
				<div class="form-group">
					<label for="labelFecha" class="etiqueta">Fecha publicacion</label>
					<input type="date" name="fechaTrabajo" class="form-control" id="idFechaTrabajo"/>
				</div>
	
				<div class="form-group">
					<label for="labelDescripcion" class="etiqueta">Descripcion</label>
					<input type="text" name="descripcionTrabajo" class="form-control" id="idDescripcionTrabajo"/>
				</div>
				
				<div class="form-group">
					<label for="labelEstudiosMinimos" class="etiqueta">Estudios minimos</label>
					<input type="text" name="estudiosMinimosTrabajo" class="form-control" id="idEstudiosMinimosTrabajo"/>
				</div>
				
				<div class="form-group">
					<label for="labelExperienciaMinima" class="etiqueta">Experiencia Minima</label>
					<input type="text" name="experienciaMinimaTrabajo" class="form-control" id="idExperienciaMinimaTrabajo"/>
				</div>
				
				<div class="form-group">
					<label for="labelRequisitosMinimos" class="etiqueta">Requisitos minimos</label>
					<input type="text" name="requisitosMinimosTrabajo" class="form-control" id="idRequisitosMinimosTrabajo"/>
				</div>
				
				<div class="form-group">
					<label for="labelTipoJornada" class="etiqueta">Tipo Jornada</label>
					<input type="text" name="tipoJornadaTrabajo" class="form-control" id="idTipoJornadaTrabajo"/>
				</div>
				
				<div class="form-group">
					<label for="labelTipoContrato" class="etiqueta">Tipo Contrato</label>
					<input type="text" name="tipoContratoTrabajo" class="form-control" id="idTipoContratoTrabajo"/>
				</div>
			
				<div class="form-group">
					<button class="btn btn-md btn-primary btn-block" type="submit" id="idSubmitJob">Crear trabajo</button>
				</div>
			
			
			</form>
</div>
</body>
</html>