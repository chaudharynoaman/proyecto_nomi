<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>  




<!DOCTYPE html>
<html>
<head>
  		<title>Nimbu | Alta de Administrador</title> 

		<meta charset="ISO-8859-1">
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
    	<link rel="stylesheet" type="text/css" href="../css/jobDetail.css">
    	<link rel="stylesheet" type="text/css" href="../css/altaAdmin.css">   
    	
    	
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.js"></script>
    	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.0.3/bootstrap-show-password.min.js"></script>
    	
    	<script type="text/javascript">
			$("#idPasswordRegistroAdmin").password('toggle');
			$("##idPasswordRegistroAdmin").password('toggle');
		</script>
    	
    	  	
    	<script>
		  function email(){
				var email = document.getElementById("idEmailRegistroAdmin").value;
				//alert(email);
				
				var obj = XMLHttpRequest?new XMLHttpRequest():new ActiveXObject("Microsoft.XMLHTTP");

				obj.onreadystatechange = function() {
					if (obj.readyState==4 && (obj.status==200 || obj.status==301)) {
						var respuesta = obj.responseText;	
						if(respuesta){
							document.getElementById("idEmailRegistroAdmin").style.color = "#BB445F";
							document.getElementById("ajax-response").style.color = "#BB445F";
							document.getElementById("ajax-response").innerHTML = respuesta;
							document.getElementById("idEmailRegistroAdmin").style.borderColor="#BB445F";		
							document.getElementById("idLabelEmailRegistroAdmin").style.color = "#BB445F";
							
						}
						else{
							document.getElementById("idEmailRegistroAdmin").style.color = "";							
							document.getElementById("ajax-response").innerHTML = "";	
							document.getElementById("idEmailRegistroAdmin").style.borderColor="";		
							document.getElementById("idLabelEmailRegistroAdmin").style.color = "";
						}
					}
					
				}

				obj.open('GET', '${pageContext.request.contextPath}/comprobaremail?email='+email, true);
				obj.send(null);		
			
			}
			/*$(document).ready(function() {
				$('#idEmailRegistro').keyup(function() {
					var email = $("#idEmailRegistro").val();
					if(email!=""){
						$.ajax({
							url: '${pageContext.request.contextPath}/comprobaremail',
							method:'GET',
							data: {email : email},
							success : function(responseText) {
								$('#kk').html(responseText);
							}
						});
					}
				});
			});*/
			    	
    	
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
		          			<a class="navbar-logo" href="home"><img src="images/logo.png"></a>
		          		</div>
	          			
	        		</div>
	
	        		<!-- Agrupar los enlaces de navegación, los formularios y cualquier
	       				 otro elemento que se pueda ocultar al minimizar la barra -->
	        		<div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse">  
	          			<ul class="nav navbar-nav" id="menu-items">
	            			<!--<li class="active"><a href="#">Home</a></li>-->
	            			<li><a href="#">Sobre Nimbu</a></li>
	            			<li><a href="#">Servicios</a></li>
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
		            			<li><a href="#">Sobre Nimbu</a></li>
		            			<li><a href="#">Servicios</a></li>
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
		
		
		<c:when test="${tipoUserConectado=='2'}">
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
				<h2>Página de Super Administrador</h2>
				
				<table class="table table-bordered" id="idTabla">
					<tr>
						<td><a href="nuevoadmin">Dar de Alta Nuevo Administrador</a></td>
					</tr>
					<tr>
						<td><a href="bajaadmin">Dar de Baja Administrador</a></td>
					</tr>
							
				</table>
			
			</div> -->
			
			
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
			
			</div>
			 -->
			
		</c:otherwise>
		
	</c:choose>

 
<div class="container">
	<form class="form-signin" action="nuevoadmin" method="post" id="idFormRegisterAdmin" role="form" data-toggle="validator" >
		<h2 class="form-signin-heading">Alta de Administrador</h2>	
			<div class="form-group has-feedback">
				<label for="labelNombreRegistroAdmin" class="control-label">* Nombre</label>
				<input type="text" name="nombre-registro-admin" class="form-control" id="idNombreRegistroAdmin"	
				pattern="^[a-zA-Z ÁÉÍÓÚáéíóúñÑ-]{2,30}$" data-error="El nombre introducido no es válido" required/>		
				<span class="glyphicon form-control-feedback"></span>
				<div class="help-block with-errors"></div>
			</div>
			
			
			<div class="form-group has-feedback">
				<label for="labelApellidosRegistroAdmin" class="control-label">* Apellidos</label>
				<input type="text" name="apellidos-registro-admin" class="form-control" id="idApellidosRegistroAdmin" pattern="^[a-zA-Z ÁÉÍÓÚáéíóúñÑ-]{2,30}$" data-error="El apellido introducido no es válido" required/>				
				<span class="glyphicon form-control-feedback"></span>
				<div class="help-block with-errors"></div>
			</div>
			
			
			<div style="height: 30px;"></div>
			<p id="info1">Datos de la cuenta</p>
			<div class="form-group has-feedback">			
				<label for="labelEmailRegistroAdmin" id="idLabelEmailRegistroAdmin" class="control-label">* E-mail</label>
				<input type="email" name="email-registro-admin" class="form-control" id="idEmailRegistroAdmin" 
				pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" 
				data-error="El E-mail introducido no es válido" onchange="email()" required/>
				<!-- <span class="glyphicon form-control-feedback"></span>	-->							
				<div class="help-block with-errors"></div>
				<span id="ajax-response"></span>								
				
			</div>
			
			
			<div class="form-group has-feedback">
				<label for="labelPasswordRegistroAdmin" class="control-label">* Contraseña</label>
				<input type="password" name="password-registro-admin" class="form-control" id="idPasswordRegistroAdmin"
				pattern="^[a-zA-Z0-9ñÑ\S]{2,20}$" data-error="La contraseña debe tener entre 2 y 20 caracteres. No se admiten espacios" 
				minlength="2" maxlength="20" autocomplete="off" oncopy="return false" onpaste="return false" data-toggle="password" required/>
				<!-- <span class="glyphicon form-control-feedback"></span>-->
				<div class="help-block with-errors"></div>
			</div>
			
			<div class="form-group has-feedback">
				<label for="labelConfirmPasswordRegistroAdmin" class="control-label">* Repita la contraseña</label>
				<input type="password" name="confirm-password-registro-admin" class="form-control" 
				id="idConfirmPasswordRegistroAdmin" pattern="^[a-zA-Z0-9ñÑ\S]{2,20}$"
				data-match="#idPasswordRegistroAdmin" data-match-error="Las contraseñas no coinciden" minlength="2" maxlength="20" autocomplete="off" 
				oncopy="return false" onpaste="return false" data-toggle="password" required/>							
				<!-- <span class="glyphicon form-control-feedback" aria-hidden="true"></span>-->
				<div class="help-block with-errors"></div>
			</div>
			
				
			<div>
			<input type="hidden" name="user_type_admin" class="form-control" value="0"/><!-- 0:Admin 1:user 2:SuperAdmin -->
			</div>
			
			<div>
			<input type="hidden" name="activo-admin" class="form-control" value="1"/><!-- 0:inactivo 1:activo -->
			</div>
			
			
			<div class="form-group">
				<button class="btn btn-md btn-primary btn-block" type="submit" id="idSubmitRegisterAdmin">CREAR NUEVO ADMINISTRADOR</button>
			</div>
			
			<div id="admin-create-error-msg">
					<%
						String error_msg=(String)request.getAttribute("CreateAdminErrorMessage");  
						if(error_msg!=null)
						out.println("<font color=red size=3px>"+error_msg+"</font>");
					%>
			</div>
			<!-- <p class="form-group">Al continuar aceptas los Términos de uso y la Política de privacidad</p>
			<hr>
			<p id="info">¿Ya tienes una cuenta? <a href="login">Entra</a></p> -->
	
	
	
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