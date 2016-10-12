<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<table>
<tr>
	<th>Nombre</th>
	<th>¿Bilingue?</th>
</tr>
	<c:forEach var="persona" items="${personas}">
		<tr>
			<td>${persona.nombre}</td>			
			<td>${persona.nivel}</td>			
		</tr>
	</c:forEach>	
	
</table>
<a href="persona">Nuevo Candidato</a>