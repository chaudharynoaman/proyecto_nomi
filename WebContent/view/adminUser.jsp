<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>SLACK | Admin</title>
		<meta charset="utf-8">
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



		<link rel="stylesheet" type="text/css" href="css/main.css">    
    	<link rel="stylesheet" type="text/css" href="css/footer.css">
    	<link rel="stylesheet" type="text/css" href="css/login.css">
    	<link rel="stylesheet" type="text/css" href="css/register.css"> 
    

		

</head>

<body style="padding-top: 80px">
	<nav id="mainNav" class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">		
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
          			<a class="navbar-brand" href="index.jsp"><span class="mainlogo">SLACK;</span></a>
        		</div>

        		<!-- Agrupar los enlaces de navegación, los formularios y cualquier
       				 otro elemento que se pueda ocultar al minimizar la barra -->
        		<div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse">  
          			<ul class="nav navbar-nav" id="menu-items">
            			<!--<li class="active"><a href="#">Home</a></li>-->
            			<li><a href="#">Servicios</a></li>
            			<li><a href="#">Quienes somos</a></li>
            			<li><a href="view/jobCreate.jsp">Qué nos diferencia </a></li>
            			<li><a href="job">Empleo</a></li>            			
            		</ul>
            		<ul class="nav navbar-nav navbar-right" id="menu-items" style="text-transform: capitalize;">
            			<li><a href="#">${nombreUsuConectado}</a></li> 
            			<li><a href="./">Cerrar Sesión</a></li>      			
          			</ul>
        		</div>
      		</div>
      	</div>
	</nav>
	
	<nav class="navbar navbar-default navbar-static-top">
 	<div class="container">
    		<!-- <div class="navbar-header">
      			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>
        			<span class="icon-bar"></span>                        
      			</button>
      			
    		</div>  -->
<!--     	<div class="collapse navbar-collapse" id="myNavbar">
 -->      		<ul class="nav navbar-nav ">
        		<li><a href="#">Publicar Empleo</a></li>
        		<li><a href="#">Eliminar Empleo</a></li>
        		<li><a href="#">Lista Candidatos-Empleo</a></li>        		
      		</ul>
    	</div>
  	</div>
	</nav>
	
	
    <div class="container">  
        <h1>ERES ADMIN</h1>
		<p>Hola ${emailUsuarioConectado}</p>
		<p>Tu nombre es: ${nombreUsuConectado} ${apellidosUsuConectado}</p>
		<p>Y estas conectado como un ADMINISTRADOR!</p>
		
		<p>Hola</p><br/><p>Hola</p><br/><p>Hola</p><br/><p>Hola</p><br/><p>Hola</p><br/><p>Hola</p><br/>
		<p>Hola</p><br/><p>Hola</p><br/><p>Hola</p><br/><p>Hola</p><br/><p>Hola</p><br/><p>Hola</p><br/>
		
	</div>
	
	
	<footer class="footer-distributed">
        <div class="footer-left">

          <h3>SLACK;</h3>

          <p class="footer-links">
            <a href="#">Aviso Legal</a>
            ·
            <a href="#">Privacidad</a>
            ·
            <a href="#">Política de cookies</a>
            ·
            <a href="#">Contacto</a>
          </p>

          <p class="footer-company-name">&copy; 2017 SLACK</p>
        </div>
    </footer>

</body>
</html>