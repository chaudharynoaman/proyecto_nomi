
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>    
    

<!DOCTYPE html>
<html>

<head>
  	<title>Oferta de empleo: ${param.name} | Nimbu</title>  

		<meta charset="ISO-8859-1">
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

		

		<link rel="icon" href="images/favicon.png" type="image/x-ico; charset=binary" />		
		
		<!-- External fonts -->    
    	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">		
		<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

    	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">  
    	
    	
    	<link rel="stylesheet" type="text/css" href="css/main.css">    
    	<link rel="stylesheet" type="text/css" href="css/footer.css">
    	<link rel="stylesheet" type="text/css" href="css/login.css">
    	<link rel="stylesheet" type="text/css" href="css/register.css">
    	<link rel="stylesheet" type="text/css" href="css/pwdChange.css"> 
    	<link rel="stylesheet" type="text/css" href="css/cambioEmail.css">
    	<link rel="stylesheet" type="text/css" href="css/jobs.css"> 
    	<link rel="stylesheet" type="text/css" href="css/misCandidaturas.css">
    	<link rel="stylesheet" type="text/css" href="css/miPerfil.css">
    	<link rel="stylesheet" type="text/css" href="css/errorInscripcion.css">
    	<link rel="stylesheet" type="text/css" href="css/inscripcionPreview.css">
    	<link rel="stylesheet" type="text/css" href="css/jobCreate.css">
    	<link rel="stylesheet" type="text/css" href="css/jobDetail.css">
    
		
		
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
			    "href": "cookies"
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
		          			<a class="navbar-logo" href="home"><img src="images/logo.png"></a>
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
			          			<a class="navbar-logo" href="home"><img src="images/logo.png"></a>
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
		            		<ul class="nav navbar-nav navbar-right" id="menu-items" style="text-transform: capitalize;">
		            			
		            			<li class="dropdown">
		            				<a class="dropdown-toggle" data-toggle="dropdown" href="home">${nombreUsuConectado} <i class="fa fa-bars" aria-hidden="true"></i></a> 
		            			
		            				
		            				<ul class="dropdown-menu" id="otro">
			            				<li><a href="personal/perfil">Mi Perfil</a></li>
				        				<li><a href="personal/candidaturas">Mis Candidaturas</a></li>
				        				<!-- <li><a href="personal/cambioemail">Cambiar E-mail</a></li>-->
				        				<li><a href="personal/cambiopassword">Cambiar Contraseña</a></li>
				        				<li><a href="#" data-toggle="modal" data-target="#myModal">Cancelar Cuenta</a></li>
		            				</ul> 	            				
		            				            			
		            			</li>
		            			
		            			<li><a href="logout">Cerrar Sesión</a></li>      			
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
			          			<a class="navbar-logo" href="home"><img src="images/logo.png"></a>
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
		            			<li><a href="home">${nombreUsuConectado} </a></li> 
		            			<li><a href="logout">Cerrar Sesión</a></li>      			
		          			</ul>
		        		</div>
		      		</div>
		      	<!-- </div>-->
			</nav>
			
			<div class="container" style="margin-top: 80px">
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
						
			</table>
			
			</div>
			
			
		</c:otherwise>
		
	</c:choose>



	<div class = "container" id="idJob-Detail-Container">
		<div id="${job.id}" class="lista-empleos-detalle">				
				<h2 id="idTitulo-Job-Detail"> ${job.titulo} </h2>
				
				<p> ${job.ciudad.nombreCiudad} | <fmt:formatDate value="${job.fechapublicacion}" pattern="dd-MM-yyyy"/></p><!-- ${job.fechapublicacion} -->
				 
				<p class="job-detail-labels">Descripción</p>					
				<p class="job-detail-format">${job.descripcion}</p>
				
				<p class="job-detail-labels">Requisitos mínimos</p>
				<p class="job-detail-format">${job.requisitosminimos}</p>
				
				<p class="job-detail-labels">Estudios mínimos</p>
				<p>${job.estudiosminimos}</p>
				
				<p class="job-detail-labels">Experiencia mínima</p>
				<p>${job.experienciaminima}</p>	
				
				<p class="job-detail-labels">Tipo de Contrato</p>
				<p>Contrato ${job.tipocontrato}</p>
				
				<p class="job-detail-labels">Tipo de Jornada</p>
				<p>Jornada ${job.tipojornada}</p>
				
					
		</div>	
		
	
		<form action="inscripcion" method="post" enctype="multipart/form-data" id="idForm-Subida-Cv">
			<div id="subidaCV" >
				<p>Sube tu Curriculum para inscribirte. Solo se admite formato .pdf</p>
		  		<input type="file" name="curriculum" id="idSubidaCurriculum" accept=".pdf" required/>
			</div>	
			
			<input type="hidden" name="valor-id-trabajo" value="${job.id}"></input>
			<br/>
			<br/>					

			<c:if test="${yainscrito}">
				<p>
				<span>Ya estás inscrito a esta oferta</span>
				</p>
			</c:if>
			
			<c:choose>
				<c:when test="${idUsuarioConectado==null}">					
					<button type="submit" value="Inscribirme a esta oferta" id="idSubmit-Inscripcion" class="btn btn-primary" disabled>Inscribirme a esta oferta</button>					
					<p>
						<span>Debes estar conectado para inscribirte a esta oferta</span>
					</p>
				</c:when>
				
				<c:when test="${yainscrito}">					
					<button type="submit" value="Inscribirme a esta oferta" id="idSubmit-Inscripcion" class="btn btn-primary" disabled>Inscribirme a esta oferta</button>					
				</c:when>				
				
				<c:otherwise>					
					<button type="submit" value="Inscribirme a esta oferta" id="idSubmit-Inscripcion" class="btn btn-primary">Inscribirme a esta oferta</button>	
				</c:otherwise>
			</c:choose>
		</form>
	</div>
	
	
	<footer class="footer-distributed">
		<div class="footer-left">		
			<h3>NIMBU</h3>			
			<p class="footer-links">
				<a href="legal">Aviso Legal</a>			    
			    ·
			    <a href="cookies">Política de cookies</a>
			    ·
			    <a href="contacto">Contacto</a>
			</p>			
			<p class="footer-company-name">&copy; 2017 NIMBU</p>
		</div>
    </footer>
    
</body>
</html>