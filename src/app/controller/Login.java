package app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.bean.Persona;
import app.bean.Usuarios;
import app.model.UsuarioModel;

/**
 * Servlet implementation class Acceso
 */
@SuppressWarnings("serial")
@WebServlet("/login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre = request.getParameter("nombre");
		String pw = request.getParameter("pass");
		
		Usuarios usu= new UsuarioModel().getUsuario(nombre, pw);
		
		//System.out.println(usu.getNombre());
		
		if (usu != null) {
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("nombreUsuario", nombre);
			
			response.sendRedirect("view/loggedUser.jsp");
		} 
		else {
			response.sendRedirect("view/login.jsp");
		}
		
		
		/*if(nombre.equals("ahmed") && pw.equals("ahmed"))
		{
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("nombreUsuario", nombre);
						
			response.sendRedirect("view/loggedUser.jsp");
			
		}
		else
		{
			response.sendRedirect("view/login.jsp");
			
		}*/
	}

}
