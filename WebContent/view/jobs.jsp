<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>

<html>
	<head>
  		<title>Slack | Ofertas de Trabajo</title>  

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
    
		<style>
			.lista-empleos{
				background:#F2F2F2;		
				padding:10px;
				margin-bottom:20px;
			}	
			
			.back-to-top {
	    		cursor: pointer;
	   			position: fixed;
	    		bottom: 20px;
	    		right: 20px;
	    		display:none;
			}
		</style>
		
		<script>
		$(document).ready(function(){
		     $(window).scroll(function () {
		            if ($(this).scrollTop() > 50) {
		                $('#back-to-top').fadeIn();
		            } else {
		                $('#back-to-top').fadeOut();
		            }
		        });
		        // scroll body to 0px on click
		        $('#back-to-top').click(function () {
		            $('#back-to-top').tooltip('hide');
		            $('body,html').animate({
		                scrollTop: 0
		            }, 800);
		            return false;
		        });
		        
		        $('#back-to-top').tooltip('show');

		});
		</script>
		

	</head>

	<body style="padding-top: 140px">
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
          			<a class="navbar-brand" href="home"><span class="mainlogo">SLACK;</span></a>
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
            		<ul class="nav navbar-nav navbar-right" id="menu-items">
            			<li><a href="login">Accede</a></li> 
            			<li><a href="usuario">Registro</a></li>      			
          			</ul>
        		</div>
      		</div>
      	</div>
	</nav>


	<div class="container">
	<h1>Ofertas de empleo activas</h1>
		<div style="width:800px;" >		
		
			<c:forEach var="job" items="${jobs}">
			
				<div id="${job.id}" class="lista-empleos">				
						<a href="jobDetail?id=${job.id}&name=${job.titulo}"><h3> ${job.titulo} </h3></a>
						<p> ${job.ciudad} | ${job.fechapublicacion}</p>
						<p>${job.descripcion}</p>
						<p>${job.estudiosminimos} | Contrato ${job.tipocontrato} | Jornada ${job.tipojornada}</p>						
				</div>	
				
			</c:forEach>
		
		
		</div>

	
	<!-- <button type="button" class="btn btn-primary"><a href="#top">Ir arriba</a></button>-->
	<a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Click to return on the top page" data-toggle="tooltip" data-placement="left"><span class="glyphicon glyphicon-chevron-up"></span></a>
	
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
