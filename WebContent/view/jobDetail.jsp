<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Oferta de empleo: ${param.name} | SLACK</title>
</head>
<body>


	<c:forEach var="job" items="${jobs}">
	<h1>Detalle de la oferta ${job.titulo}</h1>	
			<div id="${job.id}" class="lista-empleos">				
					<h3> ${job.titulo} </h3>
					<p> ${job.ciudad} | ${job.fechapublicacion}</p>
					<p>Contrato ${job.tipocontrato} | Jornada ${job.tipojornada}</p>
					<h2>Estudios mínimos</h2>
					<p>${job.estudiosminimos}</p>
					<h2>Experiencia mínima</h2>
					<p>${job.experienciaminima}</p>
					<h2>Requisitos mínimos</h2>
					<p>${job.requisitosminimos}</p>
					<h2>Descripción</h2>					
					<p>${job.descripcion}</p>								
					
			</div>	
			
	</c:forEach>
			
			<input type="button" value="Inscribirme en esta oferta"></input>

</body>
</html>