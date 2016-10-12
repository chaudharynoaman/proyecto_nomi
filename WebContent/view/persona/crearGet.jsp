<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<h3>
FORMULARIO de CREACIÛN de PERSONAS
</h3>

<form action="persona/crear" method="post">
	Nombre<input type="text" name="nombre"><br/>
	<fieldset><legend>Nivel de Ingles</legend>
		<input type="radio" name="nivel" value="nulo">Nulo<br/>
		<input type="radio" name="nivel" value="bajo">Bajo<br/>
		<input type="radio" name="nivel" value="medio">Medio<br/>
		<input type="radio" name="nivel" value="alto">Alto<br/>
		<input type="radio" name="nivel" value="bilingue">Bilingue<br/>
	</fieldset>
	<input type="submit" value="Registrar">
</form>