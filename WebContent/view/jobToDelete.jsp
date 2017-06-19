

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="app.bean.Job"%>


<html>
<head>
  		<title>Nimbu | Borrar Empleo</title>  

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

		<link rel="icon" href="../images/favicon.png" type="image/x-ico; charset=binary" />		
		
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
    	<link rel="stylesheet" type="text/css" href="../css/jobDetail.css">     
		
		
		<script>
		/* $(document).ready(function(){
		     $(window).scroll(function () {
		            if ($(this).scrollTop() > 50) {
		                $('#back-to-top').fadeIn();
		            } else {
		                $('#back-to-top').fadeOut();
		            }
		        });
		        // scroll body to 0px on click
		        $('#back-to-top').click(function () {
		            $('#back-to-top').tooltip('Subir arriba');
		            $('body,html').animate({
		                scrollTop: 0
		            }, 800);
		            return false;
		        });
		        
		        $('#back-to-top').tooltip('show');

		}); */
		
		
		$(document).ready(function(){
			
			
			$(window).scroll(function(){
				if ($(this).scrollTop() > 100) {
					$('#back-to-top').fadeIn();
				} else {
					$('#back-to-top').fadeOut();
				}
			});
			
			
			$('#back-to-top').click(function(){
				$('html, body').animate({scrollTop : 0},800);
				return false;
			});
			
		});
		</script>
		
		
		
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
			    "href": "../cookies"
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


<div class="container" id="idJobs-Container">
	<h1>Ofertas de empleo activas</h1>
	
				
		
			<c:forEach var="job" items="${jobs}">
			
				<% 
					Job job = (Job)pageContext.getAttribute("job");
					SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy"); // Set your date format
					
					String fechaFormateada = sdf.format(job.getFechapublicacion());
					
				%>
				
				
				<div id="${job.id}" class="lista-empleos" >	
							<c:choose>
								<c:when test="${tipoUserConectado=='0'}">
									<form action="borrarempleo" method="post">									
										<button type="submit" class="btn btn-default btn-sm pull-right">
	          								<span class="glyphicon glyphicon-trash"></span> Eliminar 
	        							</button>		
	        							
	        							<input type="hidden" name="idTrabajo-Borrar" value="${job.id}">								
									</form>					
								
								</c:when>						
							</c:choose>			
						
						<a href="../jobDetail?id=${job.id}&name=${job.titulo}"><h3> ${job.titulo} </h3></a>						
						
						<p>${job.ciudad.nombreCiudad} | <%= fechaFormateada %></p>
						<div id="idJobDescripcion">
							<p class="descripcion">${job.descripcion}</p>
						</div>
						
						<p>Estudios: ${job.estudiosminimos} | Contrato: ${job.tipocontrato} | Jornada: ${job.tipojornada}</p>						
				</div>	
				
			</c:forEach>
		
		
		

	
	
	<a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Click to return on the top page" data-toggle="tooltip" data-placement="left"><span class="glyphicon glyphicon-chevron-up"></span></a>
	
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
