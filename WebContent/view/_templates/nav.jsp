<%@page import="org.mvc.MenuHelper" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<nav>
	<%= MenuHelper.getInstance(this).dibujarMenu("0") %>
</nav>