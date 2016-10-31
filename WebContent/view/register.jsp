<!DOCTYPE html>
<html>
  	<head>
  		<title>Registro</title> 

		<meta charset="utf-8">
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
    	
    	
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.js"></script>
    	
    	  	
    	
    	

		

	</head>

	<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
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
          			<a class="navbar-brand" href="../index.jsp"><span class="mainlogo">SLACK</span></a>
        		</div>

        		<!-- Agrupar los enlaces de navegación, los formularios y cualquier
       				 otro elemento que se pueda ocultar al minimizar la barra -->
        		<div id="navbar" class="collapse navbar-collapse navbar-ex1-collapse">  
          			<ul class="nav navbar-nav" id="menu-items">
            			<!--<li class="active"><a href="#">Home</a></li>-->
            			<li><a href="#">Servicios</a></li>
            			<li><a href="#">Quienes somos</a></li>
            			<li><a href="#">Qué nos diferencia </a></li>
            			<li><a href="#">Empleo</a></li>            			
            		</ul>
            		<ul class="nav navbar-nav navbar-right" id="menu-items">
            			<li><a href="../view/login.jsp">Accede</a></li> 
            			<li><a href="../view/register.jsp">Registro</a></li>      			
          			</ul>
        		</div><!--/.nav-collapse -->
      		</div>
      	</div>
	</nav>

 
<div class="container">
	<form class="form-signin" name="registro" action="../usuario" method="post" id="idFormRegister" role="form" data-toggle="validator" >
		<h2 class="form-signin-heading">Formulario de registro</h2>	
			<div class="form-group has-feedback">
				<label for="labelNombreRegistro" class="control-label">Nombre</label>
				<input type="text" name="nombreRegistro" class="form-control" id="idNombreRegistro"	pattern="^[a-zA-Z ÁÉÍÓÚáéíóúñÑ-]{2,50}$" autocomplete="off" data-error="Error. El nombre introducido no es válido" required>		
				<span class="glyphicon form-control-feedback"></span>
				<div class="help-block with-errors"></div>
			</div>
			
			
			<div class="form-group has-feedback">
				<label for="labelApellidosRegistro" class="control-label">Apellidos</label>
				<input type="text" name="apellidosRegistro" class="form-control" id="idApellidosRegistro" pattern="^[a-zA-Z ÁÉÍÓÚáéíóúñÑ-]{2,50}$" autocomplete="off" data-error="Error. El apellido introducido no es válido" required>				
				<span class="glyphicon form-control-feedback"></span>
				<div class="help-block with-errors"></div>
			</div>
			
			
			<div style="height: 30px;"></div>
			<p id="info1">Datos de la cuenta</p>
			<div class="form-group has-feedback">			
				<label for="labelEmailRegistro" class="control-label">E-mail</label>
				<input type="email" name="emailRegistro" class="form-control" id="idEmailRegistro" 
				pattern="^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$" 
				data-error="El E-mail introducido no es válido" autocomplete="off" required>
				<span class="glyphicon form-control-feedback"></span>								
				<div class="help-block with-errors"></div>
			</div>
			
			
			<div class="form-group has-feedback">
				<label for="labelPasswordRegistro" class="control-label">Contraseña</label>
				<input type="password" name="passwordRegistro" class="form-control" id="idPasswordRegistro" data-error="La contraseña debe tener mínimo 2 caracteres" minlength=2 autocomplete="off" oncopy="return false" onpaste="return false" required>
				<span class="glyphicon form-control-feedback"></span>
				<div class="help-block with-errors"></div>
			</div>
			
			<div class="form-group has-feedback">
				<label for="labelConfirmPasswordRegistro" class="control-label">Repita la contraseña</label>
				<input type="password" name="confirmPasswordRegistro" class="form-control" id="idConfirmPasswordRegistro" data-match="#idPasswordRegistro" data-match-error="La contraseña no coincide" minlength=2 autocomplete="off" oncopy="return false" onpaste="return false" required>							
				<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
				<div class="help-block with-errors"></div>
			</div>
			
				
			<div>
			<input type="hidden" name="user_type" class="form-control" value="1">
			</div>
			
			
			<div class="form-group">
				<button class="btn btn-md btn-primary btn-block" type="submit" id="idSubmitRegister">Crear cuenta</button>
			</div>
			<p class="form-group">Al continuar aceptas el Uso del servicio, las Condiciones de uso y la Política de privacidad</p>
			<hr>
			<p id="info">¿Ya tienes una cuenta? <a href="login.jsp">Entra</a></p>
	
	
	
	</form>
</div>



		



<footer class="footer-distributed">
        <div class="footer-left">

          <h3>SLACK</h3>

          <p class="footer-links">
            <a href="#">Aviso Legal</a>
            ·
            <a href="#">Privacidad</a>
            ·
            <a href="#">Política de cookies</a>
            ·
            <a href="#">Contacto</a>
          </p>

          <p class="footer-company-name">&copy; 2016 SLACK</p>
        </div>
    </footer>




</body>

</html>