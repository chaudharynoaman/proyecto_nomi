
    
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
			    "message": "Este sitio utiliza cookies para ofrecerle un servicio m�s r�pido y personalizado. Al acceder a esta p�gina consideramos que acepta su uso. Puede obtener m�s informaci�n",
			    "dismiss": "Aceptar",
			    "link": "aqu�.",
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
			
			<!-- <div class="container" style="margin-top: 80px">
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
			
			</div> -->
			
			
		</c:otherwise>
		
</c:choose>


 
<div class="container" id="idLegal-Container">
	<h3 id="legal-headings">Aviso Legal</h3>
	<h3 id="legal-headings">Condiciones Generales de uso de la p�gina Web de Nimbu Espa�a</h3>
	Nimbu ha creado esta Web con car�cter exclusivamente informativo, y su finalidad es facilitar al p�blico en 
	general informaci�n relativa a los productos y servicios que el Grupo Nimbu ofrece en Espa�a. 
	Por favor, lea con atenci�n la informaci�n que incluimos a continuaci�n, antes de hacer uso de esta p�gina 
	Web. El uso de esta Web y de su contenido est� sujeto a tales condiciones de uso. Si Ud. no acepta estos 
	t�rminos y condiciones, le rogamos se abstenga de utilizar tanto nuestra p�gina Web como su contenido. 
	El hecho de acceder a esta p�gina Web y utilizar los materiales contenidos en ella implica que el Usuario 
	ha le�do y acepta, sin reserva alguna, estas Condiciones Generales.</p>
	
	
	
	<h3 id="legal-headings">1. DERECHOS DE PROPIEDAD INTELECTUAL E INDUSTRIAL</h3>
	<p>Nimbu es titular de todos los derechos de propiedad industrial e intelectual referidos a los contenidos de 
	esta p�gina Web, incluyendo textos, im�genes, ficheros, sonidos, marcas, logotipos, combinaciones de colores o 
	cualquier otro elemento, su estructura de navegaci�n y dise�o, y la forma de presentaci�n de los materiales. 
	Corresponde a Nimbu exclusivamente el ejercicio de tales derechos en cualquier forma y, en especial, los derechos 
	de reproducci�n, distribuci�n, comunicaci�n p�blica y transformaci�n.</p>

	<p>Queda prohibido el uso por parte de terceros de las referencias a marcas comerciales o registradas de Nimbu que 
	pueda contener esta p�gina Web, sin el consentimiento expreso previo y por escrito de Nimbu. Todas las referencias a 
	otras marcas comerciales o registradas pertenecen a sus respectivos propietarios.</p>

	<p>Toda persona est� autorizada para ver, copiar, imprimir y distribuir cualquier documento publicado por Nimbu en esta
	 p�gina Web respetando todas y cada una de las siguientes condiciones:
		- el documento ser� utilizado exclusivamente con fines informativos;
		- el documento estar� destinado �nicamente para uso personal y privado del usuario, y no podr� ser utilizado con fines comerciales;
		- el documento deber� siempre incluir la menci�n expresa de que es propiedad de Nimbu.</p>

	<p>Todos los materiales incluidos en esta p�gina Web est�n protegidos por derechos de autor y cualquier uso no autorizado 
	de ellos se considerar� que vulnera la normativa sobre derechos de autor, marcas y regulaciones concordantes. La autorizaci�n 
	concedida para utilizar esta p�gina Web terminar� autom�ticamente en caso de que cualquiera de estas Condiciones sea infringida, 
	estando en tal el Usuario obligado a destruir de manera inmediata todo material obtenido o impreso de la p�gina Web.</p>

	<p>Cualquier infracci�n de las prohibiciones y limitaciones contenidas en las presentes Condiciones Generales se considerar� 
	constitutiva de una vulneraci�n de los derechos de propiedad intelectual titularidad de Nimbu, y dar� lugar a las responsabilidades 
	legales que corresponda de acuerdo con la normativa en vigor en cada momento, pudiendo Nimbu perseguir al infractor mediante el
	ejercicio de las acciones administrativas, civiles o penales que estime m�s adecuadas.</p>
	
	
	
	<h3 id="legal-headings">2. RESPONSABILIDAD</h3>
	<p>Nimbu se reserva el derecho a realizar, siempre que lo estime necesario o adecuado, y sin necesidad de aviso previo, modificaciones y 
	actualizaciones de la informaci�n contenida en esta p�gina Web, de la configuraci�n y presentaci�n de la misma y de las condiciones de acceso.</p>

	<p>Nimbu advierte que la informaci�n de esta p�gina Web se proporciona sin garant�a de ning�n tipo, ni expl�cita ni impl�cita. Los documentos
	 y gr�ficos publicados en esta p�gina Web pueden incorporar imprecisiones t�cnicas o errores tipogr�ficos.</p>

	<p>Toda la informaci�n que pueda recibir Nimbu a trav�s de esta p�gina Web no se considerar� confidencial, salvo en los casos en que as� 
	se indique de manera expresa en esta misma p�gina Web (Apartado 3, PROTECCI�N DE DATOS, de estas Condiciones Generales), y los casos en que 
	sea obligatorio de acuerdo con la naturaleza de la informaci�n suministrada y la normativa en vigor en cada momento.</p>

	<p>Nimbu no se hace responsable de ning�n da�o o perjuicio en el software o hardware del usuario que se derive del acceso a su p�gina Web 
	o del uso de informaci�n o aplicaciones en ella contenidas. Nimbu no garantiza la inexistencia de interrupciones o errores en el acceso a 
	su Web ni en sus diferentes contenidos. Tampoco garantiza que �sta se encuentre siempre actualizada, aunque desarrollar� sus mejores 
	esfuerzos para evitar los errores, subsanarlos y actualizar los contenidos.</p>

	<p>Nimbu no se hace responsable de los contenidos que terceras partes hayan incluido en los enlaces o links a los que se pueda hacer referencia 
	en esta p�gina. La inclusi�n en esta Web de un link no supone en modo alguno la existencia de relaciones entre Nimbu y el responsable de 
	la p�gina Web a la que remita el link, sobre el que Nimbu no ejerce ning�n tipo de control, ni tampoco la aceptaci�n y aprobaci�n por 
	parte de Nimbu de los contenidos all� ofrecidos.</p>

	<p>El Usuario, de manera voluntaria y consciente, acepta que el uso de todos los contenidos incluidos en esta p�gina Web tiene lugar bajo su 
	exclusiva responsabilidad. El Usuario responder� de los da�os y perjuicios que Nimbu pueda sufrir a causa del incumplimiento por parte del 
	Usuario de cualquiera de las obligaciones a las que queda sometido por las presentes condiciones.</p>

	<p>Nimbu no garantiza la ausencia de virus u otros elementos lesivos que pudieran causar da�os o alteraciones en el sistema inform�tico, 
	en los documentos electr�nicos o en los ficheros del usuario de este sitio web. En consecuencia, Nimbu no responder� por los da�os y 
	perjuicios que tales elementos pudieran ocasionar al usuario o a terceros.</p>
     		
	<h3 id="legal-headings">3. PROTECCI�N DE DATOS</h3>	
	<p>Los datos de car�cter personal que puedan ser aportados por los usuarios de esta p�gina Web ser�n tratados por Nimbu con la m�xima 
	confidencialidad, de acuerdo con lo establecido en la Ley Org�nica 15/1999, de 13 de diciembre, de protecci�n de datos de car�cter 
	personal, y con la normativa europea o nacional que pueda estar en vigor en cada momento. El tratamiento de confidencialidad ser� aplicado 
	de manera especial por Nimbu a los datos que pueda recibir a trav�s de esta p�gina Web a efectos de selecci�n de personal.</p>

	<p>El env�o por parte del usuario de este tipo de informaci�n implica la autorizaci�n para que Nimbu la use para los prop�sitos correspondientes 
	en funci�n del motivo y secci�n de la web a trav�s de la cual se nos facilitan los mencionados datos por parte de los usuarios, estos es,
	 a modo enunciativo, la gesti�n de candidaturas y ofertas de empleo, inscripci�n a eventos o conferencias, env�o de 
	 informaci�n corporativa etc, asimismo Nimbu se reserva el derecho a transferirla a cualquier filial o empresa asociada a Nimbu, o, en su caso, 
	 a los organizadores de los correspondientes eventos para los cuales se haya podido solicitar asistencia, donde ser� tratada respetando 
	 los mismos criterios.</p>

	<p>Nimbu , conservar�, los datos de car�cter personal que haya recabado a trav�s de esta web, en el correspondiente fichero en funci�n 
	del prop�sito para el cual se nos han facilitado, ficheros de los que Nimbu es titular y responsable, adoptando en todo momento las 
	medidas necesarias para evitar su alteraci�n, p�rdida, tratamiento o acceso no autorizados. Nimbu cumplir� estos deberes de acuerdo 
	con lo establecido por la normativa aplicable. Nimbu podr�, en determinados casos, conservar la informaci�n para efectos estad�sticos o hist�ricos.</p>

	<p>Nimbu se reserva el derecho a modificar la presente pol�tica de privacidad para adaptarla a las novedades legislativas, jurisprudenciales 
	o pr�cticas de la industria.</p>

	<p>En relaci�n con los datos recabados en la forma prevista en los apartados anteriores, el Usuario podr� ejercitar los derechos
	 reconocidos por la ley y, en particular, los derechos de acceso, rectificaci�n o cancelaci�n de datos y oposici�n, si resultase 
	 pertinente, as� como el derecho de revocar el consentimiento prestado para la cesi�n de sus datos. Tales derechos podr�n ser ejercitados 
	 por el usuario o, en su caso, por quien lo represente, mediante solicitud escrita y firmada, dirigida a la 
	 siguiente direcci�n: Nimbu S.L. Departamento de Recursos Humanos, Calle Campezo, n�mero 1, Parque Empresarial Las Mercedes, 28022 MADRID (Espa�a). 
	 La solicitud deber� contener los siguientes datos: nombre y apellidos del usuario, domicilio a efectos de notificaciones, fotocopia del Documento 
	 Nacional de Identidad o pasaporte, y contenido concreto del derecho ejercitado.</p>
	
	
	<h3 id="legal-headings">4. LEGISLACI�N</h3>	
	<p>Estas Condiciones Generales se regir�n por la ley espa�ola.</p>

	<p>En caso de que se produzca cualquier controversia derivada de la aplicaci�n o interpretaci�n de las mismas, Nimbu y el Usuario se 
	someter�n a los Juzgados y Tribunales de la ciudad de Madrid (Espa�a), con renuncia expresa a cualquier otro fuero que pudiera corresponderles.</p>

	<p>Para cualquier sugerencia o pregunta acerca de este aviso legal el Usuario puede contactar con Nimbu en la siguiente 
	direcci�n de correo electr�nico: comunicacion.spain@nimbu.com</p>

	<p>Copyright: � 2017. Nimbu S.L. Prohibida la reproducci�n total o parcial.</p>
		
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