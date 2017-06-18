<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%> 
<!DOCTYPE html>
<html>
<head>
<title>Nimbu| Publicar Nuevo Empleo</title> 
		<meta charset="UTF-8"> 		
   		<meta http-equiv="X-UA-Compatible" content="IE=edge">
   		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

		<link rel="icon" href="http://www.altran.es/fileadmin/templates/main/img/altran/favicon.ico" type="image/x-ico; charset=binary" />
		
		
		<!-- External fonts -->    
    	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">		
		<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

    	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">  



		<link rel="stylesheet" type="text/css" href="../css/main.css">    
    	<link rel="stylesheet" type="text/css" href="../css/footer.css">
    	<link rel="stylesheet" type="text/css" href="../css/login.css">
    	<link rel="stylesheet" type="text/css" href="../css/register.css">
    	<link rel="stylesheet" type="text/css" href="../css/pwdChange.css"> 
    	<link rel="stylesheet" type="text/css" href="../css/cambioEmail.css">
    	<link rel="stylesheet" type="text/css" href="../css/jobs.css"> 
    	<link rel="stylesheet" type="text/css" href="../css/misCandidaturas.css">
    	<link rel="stylesheet" type="text/css" href="../css/miPerfil.css">
    	<link rel="stylesheet" type="text/css" href="../css/errorInscripcion.css">
    	<link rel="stylesheet" type="text/css" href="../css/inscripcionPreview.css">
    	<link rel="stylesheet" type="text/css" href="../css/jobCreate.css">
		
		
		
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css" />
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.min.css" />
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
		
	
	
<script>
$( document ).ready(function() {
    $('#idFechaTrabajo').datepicker({
    	format: "dd/mm/yyyy",
        weekStart: 1,
        language: "es",
        startDate: '0',
        endDate: '0',
		todayHighlight: true,
        autoclose: true
    });
});


</script>

    	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.js"></script>
    	
    	
    	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.css" />
		<script src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/3.0.3/cookieconsent.min.js"></script>
		<script>
			window.addEventListener("load", function(){
			window.cookieconsent.initialise({
			  "palette": {
			    "popup": {
			      "background": "#edeff5",
			      "text": "#838391"
			    },
			    "button": {
			      "background": "#4b81e8"
			    }
			  },
			  "content": {
			    "message": "Este sitio utiliza cookies para ofrecerle un servicio más rápido y personalizado. Al acceder a esta página consideramos que acepta su uso. Puede obtener más información",
			    "dismiss": "Aceptar",
			    "link": "aquí.",
			    "href": "cookies.jsp"
			  }
			})});
		</script>	
    	
    	
    	


</head>
<body>


<c:choose>
	<c:when test="${idUsuarioConectado==null}">
		<nav id="mainNav" class="navbar navbar-default navbar-fixed-top" role="navigation">
			<!-- <div class="container-fluid">	-->	
	      		<div class="container">
	      		 	<!-- El logotipo y el icono que despliega el menú se agrupan
	       				 para mostrarlos mejor en los dispositivos móviles -->
	       			<div class="navbar-header">       				
		          		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		           		<span class="sr-only">Toggle navigation</span>
		            	<span class="icon-bar"></span>
		            	<span class="icon-bar"></span>
		            	<span class="icon-bar"></span>
		          		</button>
		          		<div class="navbar-brand">
		          			<a class="navbar-logo" href="home"><img src="../images/logo.png"></a>
		          		</div>
	          			
	        		</div>
	
	        		<!-- Agrupar los enlaces de navegación, los formularios y cualquier
	       				 otro elemento que se pueda ocultar al minimizar la barra -->
	        		<div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse">  
	          			<ul class="nav navbar-nav" id="menu-items">
	            			<!--<li class="active"><a href="#">Home</a></li>-->
	            			<li><a href="sobrenimbu">Sobre Nimbu</a></li>
	            			<li><a href="servicios">Servicios</a></li>
	            			<li><a href="job">Empleo</a></li>            			
	            		</ul>
	            		<ul class="nav navbar-nav navbar-right" id="menu-items">
	            			<li><a href="login">Accede</a></li> 
	            			<li><a href="usuario">Registro</a></li>      			
	          			</ul>
	        		</div>
	      		</div>
	      	<!-- </div>-->
		</nav>
	</c:when>

	
		<c:when test="${tipoUserConectado=='1'}">
			<nav id="mainNav" class="navbar navbar-default navbar-fixed-top" role="navigation">
				<!-- <div class="container-fluid">-->		
		      		<div class="container">
		      		 	<!-- El logotipo y el icono que despliega el menú se agrupan
		       				 para mostrarlos mejor en los dispositivos móviles -->
		       			<div class="navbar-header">       				
			          		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			           		<span class="sr-only">Toggle navigation</span>
			            	<span class="icon-bar"></span>
			            	<span class="icon-bar"></span>
			            	<span class="icon-bar"></span>
			          		</button>
			          		<div class="navbar-brand">
			          			<a class="navbar-logo" href="../home"><img src="../images/logo.png"></a>
			          		</div>
		        		</div>
		
		        		<!-- Agrupar los enlaces de navegación, los formularios y cualquier
		       				 otro elemento que se pueda ocultar al minimizar la barra -->
		        		<div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse">  
		          			<ul class="nav navbar-nav" id="menu-items">
		            			<!--<li class="active"><a href="#">Home</a></li>-->
		            			<li><a href="../sobrenimbu">Sobre Nimbu</a></li>
		            			<li><a href="../servicios">Servicios</a></li>
		            			<li><a href="../job">Empleo</a></li>            			
		            		</ul>
		            		<ul class="nav navbar-nav navbar-right" id="menu-items" style="text-transform: capitalize;">
		            			
		            			<li class="dropdown">
		            				<a class="dropdown-toggle" data-toggle="dropdown" href="../home">${nombreUsuConectado} <i class="fa fa-bars" aria-hidden="true"></i></a> 
		            			
		            				
		            				<ul class="dropdown-menu" id="otro">
			            				<li><a href="perfil">Mi Perfil</a></li>
				        				<li><a href="candidaturas">Mis Candidaturas</a></li>
				        				<!-- <li><a href="cambioemail">Cambiar E-mail</a></li>-->
				        				<li><a href="cambiopassword">Cambiar Contraseña</a></li>
				        				<li><a href="#" data-toggle="modal" data-target="#myModal">Cancelar Cuenta</a></li>
		            				</ul> 	            				
		            				            			
		            			</li>
		            			
		            			<li><a href="../logout">Cerrar Sesión</a></li>      			
		          			</ul>
		        		</div>
		      		</div>
		      	<!-- </div>-->
			</nav>	
			
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Cancelación de Cuenta</h4>
						</div>
						<div class="modal-body">
							<p>¿Realmente deseas cancelar tu cuenta?</p>
							<p>Esta operación es irreversible</p>
						</div>
						<div class="modal-footer">
							<form name="form-cancel-account" action="personal/cancelarcuenta" method="post">
								<button type="button" class="btn btn-default" data-dismiss="modal">Salir</button>
								<button type="submit" class="btn btn-primary">Si, deseo cancelar mi cuenta</button>
							</form>
						</div>
					</div>
				</div>
			</div>	
			
					
			
		</c:when>
		
		<c:otherwise>
			<nav id="mainNav" class="navbar navbar-default navbar-fixed-top" role="navigation">
				<!-- <div class="container-fluid">	-->	
		      		<div class="container">
		      		 	<!-- El logotipo y el icono que despliega el menú se agrupan
		       				 para mostrarlos mejor en los dispositivos móviles -->
		       			<div class="navbar-header">       				
			          		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			           		<span class="sr-only">Toggle navigation</span>
			            	<span class="icon-bar"></span>
			            	<span class="icon-bar"></span>
			            	<span class="icon-bar"></span>
			          		</button>
			          		<div class="navbar-brand">
			          			<a class="navbar-logo" href="../home"><img src="../images/logo.png"></a>
			          		</div>
		          			
		        		</div>
		
		        		<!-- Agrupar los enlaces de navegación, los formularios y cualquier
		       				 otro elemento que se pueda ocultar al minimizar la barra -->
		        		<div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse">  
		          			<!-- <ul class="nav navbar-nav" id="menu-items">
		            			<li class="active"><a href="#">Home</a></li>
		            			<li><a href="#">Lista empleos-candidatos</a></li>
		            			<li><a href="creartrabajo">Publicar empleo</a></li>
		            			<li><a href="#">Eliminar empleo</a></li>
		            		</ul> -->
		            		<ul class="nav navbar-nav navbar-right" id="menu-items">
		            			<li><a href="../home">${nombreUsuConectado} </a></li> 
		            			<li><a href="../logout">Cerrar Sesión</a></li>      			
		          			</ul>
		        		</div>
		      		</div>
		      	<!-- </div>-->
			</nav>
			
			<!-- <div class="container" style="margin-top: 80px">
			<h2>Página de Administrador</h2>
			
			<table class="table table-bordered" id="idTabla">
				<tr>
					<td><a href="candidatos">Lista empleos-candidatos</a></td>
				</tr>
				<tr>
					<td><a href="creartrabajo">Publicar empleo</a></td>
				</tr>
				<tr>	
					<td><a href="#">Eliminar empleo</a></td>
				</tr>
				<tr>
					<td><a href="#">Lista usuarios inactivos</a></td>
				</tr>			
			</table>
			
			</div> -->
			
			
		</c:otherwise>
		
</c:choose>




	<div class="container">

     		<form class="form-signin" action="creartrabajo" method="post" id="idFormJobCreate" role="form" data-toggle="validator" >
				<h2 class="form-signin-heading">Publicar Nuevo Empleo</h2>
									
				<div class="form-group has-feedback">
					<label for="labelTituloTrabajo" class="control-label">* Título del Empleo</label>
					<input type="text" name="tituloTrabajo" class="form-control" id="idTituloTrabajo"	
					pattern="^[a-zA-Z ÁÉÍÓÚáéíóúñÑ-]{2,30}$" 
					data-error="Introduce un título válido" required/>		
					<!-- <span class="glyphicon form-control-feedback"></span>-->
					<div class="help-block with-errors"></div>
				</div>				
				
				
				<div class="form-group">
					<label for="labelCiudad" class="etiqueta">* Ciudad</label>
					<!-- <input type="text" name="ciudadTrabajo" class="form-control" id="idCiudadTrabajo" required/>-->					
					
					<select name="ciudad-trabajo" class="form-control" id="idCiudadTrabajo" required>
						<c:forEach var="ciudad" items="${ciudades}">
								<option value="${ciudad.id}">${ciudad.nombreCiudad}</option>
						</c:forEach>

					</select>				
				</div>
				
				<div class="form-group has-feedback">
					<label for="labelFecha" class="etiqueta">* Fecha de publicación</label>
					<input type="text" name="fechaTrabajo" class="form-control" id="idFechaTrabajo" 
					data-error="Introduce una fecha válida" required/>
					<!-- <span class="glyphicon form-control-feedback"></span>-->
					<div class="help-block with-errors"></div>
				</div>
	
				<div class="form-group has-feedback">
					<label for="labelDescripcion" class="etiqueta">* Descripción</label>
					
					<textarea rows="7" cols="20" name="descripcionTrabajo" class="form-control" id="idDescripcionTrabajo" 
					data-error="Introduce una descripción válida" required></textarea>
					<!-- <span class="glyphicon form-control-feedback"></span>-->
					<div class="help-block with-errors"></div>					
				</div>
				
				<div class="form-group">
					<label for="labelEstudiosMinimos" class="etiqueta">* Estudios mínimos</label>
					<!-- <input type="text" name="estudiosMinimosTrabajo" class="form-control" id="idEstudiosMinimosTrabajo" required/>-->								
						<select name="estudiosMinimosTrabajo" id="idEstudiosMinimosTrabajo" class="form-control" required>
							<option value="Educación Secundaria Obligatoria">Educación Secundaria Obligatoria</option>					
							<option value="Formación Profesional Grado Medio">Formación Profesional Grado Medio</option>
							<option value="Bachillerato">Bachillerato</option>
							<option value="Formación Profesional Grado Superior">Formación Profesional Grado Superior</option>
							<option value="Diplomado">Diplomado</option>					
							<option value="Ingeniero Técnico">Ingeniero Técnico</option>
							<option value="Grado">Grado</option>
							<option value="Licenciado">Licenciado</option>
							<option value="Ingeniero Superior">Ingeniero Superior</option>
							<option value="Postgrado">Postgrado</option>
							<option value="Máster">Máster</option>
							<option value="Doctorado">Doctorado</option>				
						</select>
				</div>				
				
				<div class="form-group">
					<label for="labelExperienciaMinima" class="etiqueta">* Experiencia mínima</label>
					<!-- <input type="text" name="experienciaMinimaTrabajo" class="form-control" id="idExperienciaMinimaTrabajo" required/>-->				
						<select name="experienciaMinimaTrabajo" id="idExperienciaMinimaTrabajo" class="form-control" required>
							<option value="No requerida">No requerida</option>					
							<option value="Al menos 1 año">Al menos 1 año</option>
							<option value="Al menos 2 años">Al menos 2 años</option>
							<option value="Al menos 3 años">Al menos 3 años</option>
							<option value="Al menos 4 años">Al menos 4 años</option>
							<option value="Más de 4 años">Más de 4 años</option>											
						</select>
				</div>				
				
				<div class="form-group has-feedback">
					<label for="labelRequisitosMinimos" class="etiqueta">* Requisitos mínimos</label>
					<textarea rows="7" cols="20" name="requisitosMinimosTrabajo" class="form-control" 
					id="idRequisitosMinimosTrabajo" data-error="Introduce unos requisitos mínimos válidos" required></textarea>
					<!-- <span class="glyphicon form-control-feedback"></span>-->
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="labelTipoJornada" class="etiqueta">* Jornada laboral</label>
					<!-- <input type="text" name="tipoJornadaTrabajo" class="form-control" id="idTipoJornadaTrabajo" required/>	-->			
						<select name="tipoJornadaTrabajo" id="idTipoJornadaTrabajo" class="form-control" required>
							<option value="Completa">Completa</option>					
							<option value="Parcial - Mañana">Parcial - Mañana</option>
							<option value="Parcial - Tarde">Parcial - Tarde</option>																		
						</select>				
				</div>				
				
				
				<div class="form-group">
					<label for="labelTipoContrato" class="etiqueta">* Tipo Contrato</label>
					<!-- <input type="text" name="tipoContratoTrabajo" class="form-control" id="idTipoContratoTrabajo" required/>-->				
						<select name="tipoContratoTrabajo" id="idTipoContratoTrabajo" class="form-control" required>
							<option value="Indefinido">Indefinido</option>					
							<option value="De duración determinada">De duración determinada</option>
							<option value="A tiempo parcial">A tiempo parcial</option>
							<option value="Formativo">Formativo</option>
							<option value="Otros contratos">Otros contratos</option>
							<option value="Autónomo">Autónomo</option>																		
						</select>				
				</div>				
				
				<input type="hidden" name="trabajo-activo" value="1"/><!-- 0:inactivo 1:activo -->
			
			
				<div class="form-group">
					<button class="btn btn-md btn-primary btn-block" type="submit" id="idSubmit-Job-Create">PUBLICAR EMPLEO</button>
				</div>
				
				<div id="error-msg-job-create">
					<%
						String error_msg=(String)request.getAttribute("JobCreateErrorMessage");  
						if(error_msg!=null)
						out.println("<font color=red size=3px>"+error_msg+"</font>");
					%>
				</div>
			
			</form>
</div>





	<footer class="footer-distributed">
		<div class="footer-left">		
			<h3>NIMBU</h3>			
			<p class="footer-links">
				<a href="../legal">Aviso Legal</a>			    
			    ·
			    <a href="../cookies">Política de cookies</a>
			    ·
			    <a href="../contacto">Contacto</a>
			</p>			
			<p class="footer-company-name">&copy; 2017 NIMBU</p>
		</div>
    </footer>
	
</body>
</html>