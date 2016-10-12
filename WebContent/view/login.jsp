<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Acceso</title>

		<link rel="icon" href="http://www.altran.es/fileadmin/templates/main/img/altran/favicon.ico" type="image/x-ico; charset=binary" />
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

		<link rel="stylesheet" type="text/css" href="../css/main.css">

</head>
<body>
<h1>Estoy en Login</h1>
	<form action="../Acceso" method="post" id="idFormLogin">
		<label for="labelNombre" class="etiqueta">Nombre</label>
			<input type="text" name="nombre" id="idNombre"><br/>
		<label for="labelPassword" class="etiqueta">Contraseña</label>
			<input type="password" name="pass" id="idPass"><br/>
		<input type="submit" value="ENVIAR" class="boton">
	</form>

</body>
</html>