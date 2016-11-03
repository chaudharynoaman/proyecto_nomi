<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!-- 
<html>
	<head></head>
	
	<body>
	
	<h2>Lista de trabajos</h2>
	<c:forEach var="job" items="${jobs}">			
			<h2>${job.titulo}</h2>			
			<h2>${job.ciudad}</h2>
			<h2>${job.fechapublicacion}</h2>
			<h2>${job.descripcion}</h2>			
			<h2>${job.estudiosminimos}</h2>
			<h2>${job.experienciaminima}</h2>
			<h2>${job.requisitosminimos}</h2>			
			<h2>${job.tipojornada}</h2>
			<h2>${job.tipocontrato}</h2>
					
		
	</c:forEach>	
	</body>
</html>-->

<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>

<HTML>
    <HEAD>
        <TITLE>The tableName Database Table </TITLE>
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
        
    </HEAD>

    <BODY>
    <div class="container">
        <H1>datos de bbdd job </H1>

        <% 	String schema = "test";
			String usuario = "root";
			String password = "";
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/" + schema, usuario, password); 
       	 	

            Statement statement = con.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from job") ; 
        %>

            <% while(resultset.next()){ %>
            
                <h2> <%= resultset.getString(10) %></h2>
                <p> <%= resultset.getString(2) %> &#124;	
                 	<%= resultset.getString(6) %></p>
                <p> <%= resultset.getString(3) %></p>
                <p> <%= resultset.getString(5) %></p>
                <p> <%= resultset.getString(4) %></p>
                <p> <%= resultset.getString(7) %></p>
                <p> <%= resultset.getString(8) %></p>
                <p> <%= resultset.getString(9) %></p>
            
            <% } %>
      </div>  
    </BODY>
</HTML>