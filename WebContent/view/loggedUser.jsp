<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%if(session.getAttribute("nombreUsuario")==null){
	response.sendRedirect("login.jsp");
}

%>

<h1>Hola ${nombreUsuario} Eres Administrador!!</h1>

<form name="f1" action="../Logout" method="post">
	<input type="submit" value="desconectar">
</form>

</body>
</html>