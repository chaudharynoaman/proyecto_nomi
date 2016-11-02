<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<html>
	<head></head>
	
	<body>
	
	<h2>Lista de trabajos</h2>
	<c:forEach var="jobs" items="${job}">			
			<h2>${jobs.titulo}</h2>			
			<h2>${jobs.ciudad}</h2>
			<h2>${jobs.fechapublicacion}</h2>
			<h2>${jobs.descripcion}</h2>			
			<h2>${jobs.estudiosminimos}</h2>
			<h2>${jobs.experienciaminima}</h2>
			<h2>${jobs.requisitosminimos}</h2>			
			<h2>${jobs.tipojornada}</h2>
			<h2>${jobs.tipocontrato}</h2>
					
		
	</c:forEach>	
	</body>
</html>

