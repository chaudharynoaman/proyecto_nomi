<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Nimbu | Servicios</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

		

		<link rel="icon" href="http://www.altran.es/fileadmin/templates/main/img/altran/favicon.ico" type="image/x-ico; charset=binary" />
		
		
		<!-- External fonts -->    
    	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">		
		<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">

    	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">  

		    	
    	<link rel="stylesheet" type="text/css" href="./css/main.css">    
    	<link rel="stylesheet" type="text/css" href="./css/footer.css">
    	<link rel="stylesheet" type="text/css" href="./css/login.css">
    	<link rel="stylesheet" type="text/css" href="./css/register.css">
    	<link rel="stylesheet" type="text/css" href="./css/pwdChange.css"> 
    	<link rel="stylesheet" type="text/css" href="./css/cambioEmail.css">
    	<link rel="stylesheet" type="text/css" href="./css/jobs.css"> 
    	<link rel="stylesheet" type="text/css" href="./css/misCandidaturas.css">
    	<link rel="stylesheet" type="text/css" href="./css/miPerfil.css">
    	<link rel="stylesheet" type="text/css" href="./css/sobreNimbu.css">
    	<link rel="stylesheet" type="text/css" href="./css/servicios.css">
    	
    	
    	
    
		<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.0.3/bootstrap-show-password.min.js"></script>
    	
    	
		
		
		
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
			    "message": "Este sitio utiliza cookies para ofrecerle un servicio m�s r�pido y personalizado. Al acceder a esta p�gina consideramos que acepta su uso. Puede obtener m�s informaci�n",
			    "dismiss": "Aceptar",
			    "link": "aqu�.",
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
	      		 	<!-- El logotipo y el icono que despliega el men� se agrupan
	       				 para mostrarlos mejor en los dispositivos m�viles -->
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
	
	        		<!-- Agrupar los enlaces de navegaci�n, los formularios y cualquier
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
		      		 	<!-- El logotipo y el icono que despliega el men� se agrupan
		       				 para mostrarlos mejor en los dispositivos m�viles -->
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
		
		        		<!-- Agrupar los enlaces de navegaci�n, los formularios y cualquier
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
				        				<li><a href="personal/cambiopassword">Cambiar Contrase�a</a></li>
				        				<li><a href="#" data-toggle="modal" data-target="#myModal">Cancelar Cuenta</a></li>
		            				</ul> 	            				
		            				            			
		            			</li>
		            			
		            			<li><a href="logout">Cerrar Sesi�n</a></li>      			
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
							<h4 class="modal-title" id="myModalLabel">Cancelaci�n de Cuenta</h4>
						</div>
						<div class="modal-body">
							<p>�Realmente deseas cancelar tu cuenta?</p>
							<p>Esta operaci�n es irreversible</p>
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
		      		 	<!-- El logotipo y el icono que despliega el men� se agrupan
		       				 para mostrarlos mejor en los dispositivos m�viles -->
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
		
		        		<!-- Agrupar los enlaces de navegaci�n, los formularios y cualquier
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
		            			<li><a href="logout">Cerrar Sesi�n</a></li>      			
		          			</ul>
		        		</div>
		      		</div>
		      	<!-- </div>-->
			</nav>
			
			<div class="container" style="margin-top: 80px">
			<h2>P�gina de Administrador</h2>
			
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


 
<div class="container" id="idServicios-Container">
	<h3 id="servicios-headings">Soluciones tecnol�gicas y rentables</h3>
	<p>El sector de las Tecnolog�as de la Informaci�n y las Comunicaciones se ha mostrado como un pilar esencial en el 
	nuevo modelo de crecimiento econ�mico. Nimbu ha contribuido de manera significativa a este crecimiento aportando 
	soluciones y servicios innovadores. As� nos lo han reconocido los mercados y nuestros clientes situando a nuestra 
	compa��a como la mayor firma de Tecnolog�a y Consultor�a en Espa�a, y una de las multinacionales l�deres en Europa 
	y Latinoam�rica.</p>

	<p>Nuestro compromiso, es crear soluciones que contribuyan desde la innovaci�n tecnol�gica, a la mejora de la 
	competitividad de nuestros clientes, consiguiendo as� aumentar  los ingresos y  reducir los costes en 
	sus l�neas de negocio.</p>
	
	
	<h3 id="servicios-headings">Modernizar las comunicaciones es mejorar el servicio al usuario</h3>
	
	<p>Contamos con una gran experiencia en el desarrollo de la infraestructura IT de los operadores de servicios.
	Tratamos de explorar continuamente el desarrollo de nuevas soluciones, en respuesta a las nuevas necesidades y tendencias, 
	que a�adan valor a la actividad de los operadores de telecomunicaciones.</p>

	<p>Nos apoyamos en  nuestra propia tecnolog�a y en los m�s punteros y avanzados productos que el mercado ofrece 
	en cada momento para desarrollar nuestras soluciones.</p>

	<p>Nuestros servicios de consultor�a estrat�gica, tecnol�gica y funcional incluyen tanto el desarrollo de pol�ticas 
	comerciales como el desarrollo funcional y operativo del negocio. La gesti�n de los procesos de transformaci�n, 
	el an�lisis del mercado y las condiciones regulatorias, as� como la gesti�n de proyectos, el dise�o de planes de infraestructuras 
	o el desarrollo de la oferta comercial, forman parte tambi�n de nuestra oferta.</p>
	
	<h3 id="servicios-headings">Nuestro ADN nos impulsa a explorar nuevas tendencias tecnol�gicas y soluciones innovadoras</h3>
	<p>Disponemos de soluciones para la gesti�n comercial y de negocio (BSS), �reas de soporte a operaci�n de los servicios de telecomunicaciones (OSS)
	 o la gesti�n corporativa de la operaci�n.</p>

	<p>Soluciones flexibles y escalables para adaptarse a la constante demanda que la adopci�n de las nuevas redes y tecnolog�as 
	imponen en un sector en constante lucha competitiva.<p>

	<p>Desarrollamos todas estas actividades manteniendo el equilibrio entre las necesidades del negocio y las exigencias t�cnicas, 
	con el  objetivo de proporcionar soluciones integradas que garanticen los resultados basados en la experiencia combinados con la 
	visi�n anticipada al futuro.</p>	
	 
     		
				
			
		
</div>



	<footer class="footer-distributed">
		<div class="footer-left">		
			<h3>NIMBU</h3>			
			<p class="footer-links">
				<a href="legal">Aviso Legal</a>			    
			    �
			    <a href="cookies">Pol�tica de cookies</a>
			    �
			    <a href="contacto">Contacto</a>
			</p>			
			<p class="footer-company-name">&copy; 2017 NIMBU</p>
		</div>
    </footer>




</body>

</html>