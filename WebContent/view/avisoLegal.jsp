
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Nimbu | Aviso Legal</title>
		<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

		

		<link rel="icon" href="./images/favicon.png" type="image/x-ico; charset=binary" />		
		
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
    	<link rel="stylesheet" type="text/css" href="./css/avisoLegal.css">
    	
    	
    	
    
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
			    "message": "Este sitio utiliza cookies para ofrecerle un servicio más rápido y personalizado. Al acceder a esta página consideramos que acepta su uso. Puede obtener más información",
			    "dismiss": "Aceptar",
			    "link": "aquí.",
			    "href": "./cookies"
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
							
			</table>
			
			</div> -->
			
			
		</c:otherwise>
		
</c:choose>


 
<div class="container" id="idLegal-Container">
	<h3 id="legal-headings">Aviso Legal</h3>
	<h3 id="legal-headings">Condiciones Generales de uso de la página Web de Nimbu España</h3>
	Nimbu ha creado esta Web con carácter exclusivamente informativo, y su finalidad es facilitar al público en 
	general información relativa a los productos y servicios que el Grupo Nimbu ofrece en España. 
	Por favor, lea con atención la información que incluimos a continuación, antes de hacer uso de esta página 
	Web. El uso de esta Web y de su contenido está sujeto a tales condiciones de uso. Si Ud. no acepta estos 
	términos y condiciones, le rogamos se abstenga de utilizar tanto nuestra página Web como su contenido. 
	El hecho de acceder a esta página Web y utilizar los materiales contenidos en ella implica que el Usuario 
	ha leído y acepta, sin reserva alguna, estas Condiciones Generales.</p>
	
	
	
	<h3 id="legal-headings">1. DERECHOS DE PROPIEDAD INTELECTUAL E INDUSTRIAL</h3>
	<p>Nimbu es titular de todos los derechos de propiedad industrial e intelectual referidos a los contenidos de 
	esta página Web, incluyendo textos, imágenes, ficheros, sonidos, marcas, logotipos, combinaciones de colores o 
	cualquier otro elemento, su estructura de navegación y diseño, y la forma de presentación de los materiales. 
	Corresponde a Nimbu exclusivamente el ejercicio de tales derechos en cualquier forma y, en especial, los derechos 
	de reproducción, distribución, comunicación pública y transformación.</p>

	<p>Queda prohibido el uso por parte de terceros de las referencias a marcas comerciales o registradas de Nimbu que 
	pueda contener esta página Web, sin el consentimiento expreso previo y por escrito de Nimbu. Todas las referencias a 
	otras marcas comerciales o registradas pertenecen a sus respectivos propietarios.</p>

	<p>Toda persona está autorizada para ver, copiar, imprimir y distribuir cualquier documento publicado por Nimbu en esta
	 página Web respetando todas y cada una de las siguientes condiciones:
		- el documento será utilizado exclusivamente con fines informativos;
		- el documento estará destinado únicamente para uso personal y privado del usuario, y no podrá ser utilizado con fines comerciales;
		- el documento deberá siempre incluir la mención expresa de que es propiedad de Nimbu.</p>

	<p>Todos los materiales incluidos en esta página Web están protegidos por derechos de autor y cualquier uso no autorizado 
	de ellos se considerará que vulnera la normativa sobre derechos de autor, marcas y regulaciones concordantes. La autorización 
	concedida para utilizar esta página Web terminará automáticamente en caso de que cualquiera de estas Condiciones sea infringida, 
	estando en tal el Usuario obligado a destruir de manera inmediata todo material obtenido o impreso de la página Web.</p>

	<p>Cualquier infracción de las prohibiciones y limitaciones contenidas en las presentes Condiciones Generales se considerará 
	constitutiva de una vulneración de los derechos de propiedad intelectual titularidad de Nimbu, y dará lugar a las responsabilidades 
	legales que corresponda de acuerdo con la normativa en vigor en cada momento, pudiendo Nimbu perseguir al infractor mediante el
	ejercicio de las acciones administrativas, civiles o penales que estime más adecuadas.</p>
	
	
	
	<h3 id="legal-headings">2. RESPONSABILIDAD</h3>
	<p>Nimbu se reserva el derecho a realizar, siempre que lo estime necesario o adecuado, y sin necesidad de aviso previo, modificaciones y 
	actualizaciones de la información contenida en esta página Web, de la configuración y presentación de la misma y de las condiciones de acceso.</p>

	<p>Nimbu advierte que la información de esta página Web se proporciona sin garantía de ningún tipo, ni explícita ni implícita. Los documentos
	 y gráficos publicados en esta página Web pueden incorporar imprecisiones técnicas o errores tipográficos.</p>

	<p>Toda la información que pueda recibir Nimbu a través de esta página Web no se considerará confidencial, salvo en los casos en que así 
	se indique de manera expresa en esta misma página Web (Apartado 3, PROTECCIÓN DE DATOS, de estas Condiciones Generales), y los casos en que 
	sea obligatorio de acuerdo con la naturaleza de la información suministrada y la normativa en vigor en cada momento.</p>

	<p>Nimbu no se hace responsable de ningún daño o perjuicio en el software o hardware del usuario que se derive del acceso a su página Web 
	o del uso de información o aplicaciones en ella contenidas. Nimbu no garantiza la inexistencia de interrupciones o errores en el acceso a 
	su Web ni en sus diferentes contenidos. Tampoco garantiza que ésta se encuentre siempre actualizada, aunque desarrollará sus mejores 
	esfuerzos para evitar los errores, subsanarlos y actualizar los contenidos.</p>

	<p>Nimbu no se hace responsable de los contenidos que terceras partes hayan incluido en los enlaces o links a los que se pueda hacer referencia 
	en esta página. La inclusión en esta Web de un link no supone en modo alguno la existencia de relaciones entre Nimbu y el responsable de 
	la página Web a la que remita el link, sobre el que Nimbu no ejerce ningún tipo de control, ni tampoco la aceptación y aprobación por 
	parte de Nimbu de los contenidos allí ofrecidos.</p>

	<p>El Usuario, de manera voluntaria y consciente, acepta que el uso de todos los contenidos incluidos en esta página Web tiene lugar bajo su 
	exclusiva responsabilidad. El Usuario responderá de los daños y perjuicios que Nimbu pueda sufrir a causa del incumplimiento por parte del 
	Usuario de cualquiera de las obligaciones a las que queda sometido por las presentes condiciones.</p>

	<p>Nimbu no garantiza la ausencia de virus u otros elementos lesivos que pudieran causar daños o alteraciones en el sistema informático, 
	en los documentos electrónicos o en los ficheros del usuario de este sitio web. En consecuencia, Nimbu no responderá por los daños y 
	perjuicios que tales elementos pudieran ocasionar al usuario o a terceros.</p>
     		
	<h3 id="legal-headings">3. PROTECCIÓN DE DATOS</h3>	
	<p>Los datos de carácter personal que puedan ser aportados por los usuarios de esta página Web serán tratados por Nimbu con la máxima 
	confidencialidad, de acuerdo con lo establecido en la Ley Orgánica 15/1999, de 13 de diciembre, de protección de datos de carácter 
	personal, y con la normativa europea o nacional que pueda estar en vigor en cada momento. El tratamiento de confidencialidad será aplicado 
	de manera especial por Nimbu a los datos que pueda recibir a través de esta página Web a efectos de selección de personal.</p>

	<p>El envío por parte del usuario de este tipo de información implica la autorización para que Nimbu la use para los propósitos correspondientes 
	en función del motivo y sección de la web a través de la cual se nos facilitan los mencionados datos por parte de los usuarios, estos es,
	 a modo enunciativo, la gestión de candidaturas y ofertas de empleo, inscripción a eventos o conferencias, envío de 
	 información corporativa etc, asimismo Nimbu se reserva el derecho a transferirla a cualquier filial o empresa asociada a Nimbu, o, en su caso, 
	 a los organizadores de los correspondientes eventos para los cuales se haya podido solicitar asistencia, donde será tratada respetando 
	 los mismos criterios.</p>

	<p>Nimbu , conservará, los datos de carácter personal que haya recabado a través de esta web, en el correspondiente fichero en función 
	del propósito para el cual se nos han facilitado, ficheros de los que Nimbu es titular y responsable, adoptando en todo momento las 
	medidas necesarias para evitar su alteración, pérdida, tratamiento o acceso no autorizados. Nimbu cumplirá estos deberes de acuerdo 
	con lo establecido por la normativa aplicable. Nimbu podrá, en determinados casos, conservar la información para efectos estadísticos o históricos.</p>

	<p>Nimbu se reserva el derecho a modificar la presente política de privacidad para adaptarla a las novedades legislativas, jurisprudenciales 
	o prácticas de la industria.</p>

	<p>En relación con los datos recabados en la forma prevista en los apartados anteriores, el Usuario podrá ejercitar los derechos
	 reconocidos por la ley y, en particular, los derechos de acceso, rectificación o cancelación de datos y oposición, si resultase 
	 pertinente, así como el derecho de revocar el consentimiento prestado para la cesión de sus datos. Tales derechos podrán ser ejercitados 
	 por el usuario o, en su caso, por quien lo represente, mediante solicitud escrita y firmada, dirigida a la 
	 siguiente dirección: Nimbu S.L. Departamento de Recursos Humanos, Calle Campezo, número 1, Parque Empresarial Las Mercedes, 28022 MADRID (España). 
	 La solicitud deberá contener los siguientes datos: nombre y apellidos del usuario, domicilio a efectos de notificaciones, fotocopia del Documento 
	 Nacional de Identidad o pasaporte, y contenido concreto del derecho ejercitado.</p>
	
	
	<h3 id="legal-headings">4. LEGISLACIÓN</h3>	
	<p>Estas Condiciones Generales se regirán por la ley española.</p>

	<p>En caso de que se produzca cualquier controversia derivada de la aplicación o interpretación de las mismas, Nimbu y el Usuario se 
	someterán a los Juzgados y Tribunales de la ciudad de Madrid (España), con renuncia expresa a cualquier otro fuero que pudiera corresponderles.</p>

	<p>Para cualquier sugerencia o pregunta acerca de este aviso legal el Usuario puede contactar con Nimbu en la siguiente 
	dirección de correo electrónico: comunicacion.spain@nimbu.com</p>

	<p>Copyright: © 2017. Nimbu S.L. Prohibida la reproducción total o parcial.</p>
		
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