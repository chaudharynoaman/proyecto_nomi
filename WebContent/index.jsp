
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>    
    

<!DOCTYPE html>
<html>

  	<head>
  		<title>Nimbu | Home</title>  

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



<c:choose>
	<c:when test="${idUsuarioConectado==null}">
	<body>
		<nav id="mainNav" class="navbar navbar-default navbar-fixed-top" role="navigation">
				
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
		</nav>
		
		<div class="container" style="padding-top: 80px">
		
			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5000">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				    <li data-target="#myCarousel" data-slide-to="1"></li>
				    <li data-target="#myCarousel" data-slide-to="2"></li>
				  </ol>
			
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" id="carrusel-items">
					    <div class="item active">
					      <img src="images/transformaciondigital.jpg" alt="" >
					      <div class="carousel-caption">
					        <h3>Transformación digital</h3>
					        <p>La gran oportunidad para las empresas españolas</p>
					      </div>
					    </div>
			
					    <div class="item" id="carrusel-items">
					      <img src="images/modelo_innovacion.png" alt="">
					      <div class="carousel-caption">
					        <h3>Abierto, ágil y flexible</h3>
					        <p>Así es nuestro nuevo modelo de innovación</p>
					      </div>
					    </div>
			
					    <div class="item" id="carrusel-items">
					      <img src="images/banner.jpg" alt="">
					      <div class="carousel-caption">
					        <h3>¿Construimos juntos el futuro?</h3>
					        <p>Únete a nimbu y deja tu huella en proyectos innovadores de referencia</p>
					      </div>
					    </div>
			  		</div>
			
					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Anterior</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Siguiente</span>
					</a>
			</div>
			
			
			<div class="container" id="body-main-content">
				<div class="row">
					<div class="col-sm-4 portfolio-item">
						<div class="thumbnail">
					        <a href="servicios" id="links-main-body">
					          <img src="images/digi.jpg" alt="" class="img-responsive">
					          <div class="caption">
					          	<h3>IT Agility</h3>
					            <p>Haz de tus activos de IT tu verdadera fortaleza ganando la flexibilidad, eficiencia y visibilidad que tu organización necesita para alcanzar tus objetivos en la era digital.</p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>
                	<div class="col-sm-4 portfolio-item">
						<div class="thumbnail">
					        <a href="servicios" id="links-main-body">
					          <img src="images/nwork.jpg" alt="" class="img-responsive">
					          <div class="caption">
					          	<h3>Network</h3>
					            <p>Gestiona, controla y mejora tu red para satisfacer las necesidades de innovación y la demanda de tus  clientes, siempre yendo un paso por delante de ellos.</p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>
                	<div class="col-sm-4 portfolio-item">
						<div class="thumbnail">
					        <a href="servicios" id="links-main-body">
					          <img src="images/digital-uno.png" alt="" class="img-responsive">
					          <div class="caption">
					          <h3>Digital</h3>
					            <p>Entiende tu negocio, a tus clientes, y ofrece una experiencia digital personalizada para conseguir fidelizar, maximizar la retención y aumentar tus ingresos.</p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>		
				
				</div>
				
			
			
			
			
				<div class="row">				
					<div class="col-sm-6 portfolio-item">
						<div class="thumbnail">
					        <a href="servicios" id="links-main-body">
					          <img src="images/ge.png" alt=""  class="img-responsive">
					          <div class="caption">
					          <h3>Intelligent Systems</h3>
					            <p>Ofrecemos soluciones integrales a clientes de todos los sectores, ayudándoles a crear nuevas oportunidades de negocio y nuevas experiencias para sus usuarios en diversas áreas de aplicaciones, tales como sistemas autónomos, smartphones, contadores inteligentes, dispositivos médicos, coches conectados, control avanzado del tráfico aéreo y sensores inteligentes</p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>                	
                	
                	<div class="col-sm-6 portfolio-item">
						<div class="thumbnail">
					        <a href="job" id="links-main-body">
					          <img src="images/jobs.jpg" alt=""  class="img-responsive">
					          <div class="caption">
					          <h3>Tu primer empleo en nimbu</h3>
					            <p>Para hacer frente a los constantes desafíos,
					             Nimbu redobla su esfuerzo por imaginar e inventar cada día nuevas soluciones con sus empleados
					             y colaboradores. Por eso si has terminado tus estudios o estás en el último curso, puedes contar con nosotros.
					              </p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>		
				
				</div>
			</div>
		</div><!-- container -->
		
		
		
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
	</c:when>

	
	<c:when test="${tipoUserConectado=='1'}">
	<body>
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
			
			
			<div class="container" style="padding-top: 80px">
		
			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5000">
				  <!-- Indicators -->
				  <ol class="carousel-indicators">
				    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				    <li data-target="#myCarousel" data-slide-to="1"></li>
				    <li data-target="#myCarousel" data-slide-to="2"></li>
				  </ol>
			
				  <!-- Wrapper for slides -->
				  <div class="carousel-inner" id="carrusel-items">
					    <div class="item active">
					      <img src="images/transformaciondigital.jpg" alt="" >
					      <div class="carousel-caption">
					        <h3>Transformación digital</h3>
					        <p>La gran oportunidad para las empresas españolas</p>
					      </div>
					    </div>
			
					    <div class="item" id="carrusel-items">
					      <img src="images/modelo_innovacion.png" alt="">
					      <div class="carousel-caption">
					        <h3>Abierto, ágil y flexible</h3>
					        <p>Así es nuestro nuevo modelo de innovación</p>
					      </div>
					    </div>
			
					    <div class="item" id="carrusel-items">
					      <img src="images/banner.jpg" alt="">
					      <div class="carousel-caption">
					        <h3>¿Construimos juntos el futuro?</h3>
					        <p>Únete a nimbu y deja tu huella en proyectos innovadores de referencia</p>
					      </div>
					    </div>
			  		</div>
			
					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Anterior</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Siguiente</span>
					</a>
			</div>
			
			
			<div class="container" id="body-main-content">
				<div class="row">
					<div class="col-sm-4 portfolio-item">
						<div class="thumbnail">
					        <a href="servicios" id="links-main-body">
					          <img src="images/digi.jpg" alt="" class="img-responsive">
					          <div class="caption">
					          	<h3>IT Agility</h3>
					            <p>Haz de tus activos de IT tu verdadera fortaleza ganando la flexibilidad, eficiencia y visibilidad que tu organización necesita para alcanzar tus objetivos en la era digital.</p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>
                	<div class="col-sm-4 portfolio-item">
						<div class="thumbnail">
					        <a href="servicios" id="links-main-body">
					          <img src="images/nwork.jpg" alt="" class="img-responsive">
					          <div class="caption">
					          	<h3>Network</h3>
					            <p>Gestiona, controla y mejora tu red para satisfacer las necesidades de innovación y la demanda de tus  clientes, siempre yendo un paso por delante de ellos.</p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>
                	<div class="col-sm-4 portfolio-item">
						<div class="thumbnail">
					        <a href="servicios" id="links-main-body">
					          <img src="images/digital-uno.png" alt="" class="img-responsive">
					          <div class="caption">
					          <h3>Digital</h3>
					            <p>Entiende tu negocio, a tus clientes, y ofrece una experiencia digital personalizada para conseguir fidelizar, maximizar la retención y aumentar tus ingresos.</p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>		
				
				</div>
				
			
			
			
			
				<div class="row">				
					<div class="col-sm-6 portfolio-item">
						<div class="thumbnail">
					        <a href="servicios" id="links-main-body">
					          <img src="images/ge.png" alt=""  class="img-responsive">
					          <div class="caption">
					          <h3>Intelligent Systems</h3>
					            <p>Ofrecemos soluciones integrales a clientes de todos los sectores, ayudándoles a crear nuevas oportunidades de negocio y nuevas experiencias para sus usuarios en diversas áreas de aplicaciones, tales como sistemas autónomos, smartphones, contadores inteligentes, dispositivos médicos, coches conectados, control avanzado del tráfico aéreo y sensores inteligentes</p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>                	
                	
                	<div class="col-sm-6 portfolio-item">
						<div class="thumbnail">
					        <a href="job" id="links-main-body">
					          <img src="images/jobs.jpg" alt=""  class="img-responsive">
					          <div class="caption">
					          <h3>Tu primer empleo en nimbu</h3>
					            <p>Para hacer frente a los constantes desafíos,
					             Nimbu redobla su esfuerzo por imaginar e inventar cada día nuevas soluciones con sus empleados
					             y colaboradores. Por eso si has terminado tus estudios o estás en el último curso, puedes contar con nosotros.
					              </p>
					          </div>
					        </a>
					    </div>
	                    
                	</div>		
				
				</div>
			</div>
		</div><!-- container -->
		
		
			
			
			
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
	</c:when>
		
		
	<c:when test="${tipoUserConectado=='2'}">
	<body>
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
			
			<div class="container" id="idAdminTabla">
			<h2>Página de Super Administrador</h2>
			
			<table class="table table-bordered" id="idTabla">
				<tr>
					<td><a href="super/nuevoadmin">Dar de Alta Nuevo Administrador</a></td>
				</tr>
				<tr>
					<td><a href="super/bajaadmin">Dar de Baja Administrador</a></td>
				</tr>
				<tr>
					<td><a href="super/listaadmins">Lista de Administradores activos</a></td>
				</tr>
						
			</table>			
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
	</c:when>		
		
		
	<c:otherwise>
	<body>
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
			
			<div class="container" id="idAdminTabla">
			<h2>Página de Administrador</h2>
			
			<table class="table table-bordered" id="idTabla">
				<tr>
					<td><a href="admin/candidatos">Lista empleos-candidatos</a></td>
				</tr>
				<tr>
					<td><a href="admin/creartrabajo">Publicar empleo</a></td>
				</tr>
				<tr>	
					<td><a href="admin/listaempleos">Eliminar empleo</a></td>
				</tr>
							
			</table>
			
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
	</c:otherwise>
		
</c:choose>

	
    
    
	
	
	<!-- <footer class="footer-distributed">
        <div class="footer-left">

          <h3>NIMBU</h3>

          <p class="footer-links">
            <a href="#">Aviso Legal</a>
            ·
            <a href="#">Privacidad</a>
            ·
            <a href="#">Política de cookies</a>
            ·
            <a href="#">Contacto</a>
          </p>

          <p class="footer-company-name">&copy; 2017 NIMBU</p>
        </div>
    </footer> -->


</html>