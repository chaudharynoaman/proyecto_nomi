package com.nomi;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Acceso
 */
@SuppressWarnings("serial")
@WebServlet("/Acceso")
public class Acceso extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String pw = request.getParameter("pass");
		
		if(nombre.equals("ahmed") && pw.equals("ahmed"))
		{
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("nombreUsuario", nombre);
						
			response.sendRedirect("views/loggedUser.jsp");
			
		}
		else
		{
			response.sendRedirect("views/login.jsp");
			
		}
	}

}
