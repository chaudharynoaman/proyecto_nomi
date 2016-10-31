package app.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.bean.Usuario;
import app.model.UsuarioModel;

/**
 * Servlet implementation class Acceso
 */
@SuppressWarnings("serial")
@WebServlet({ "/usuario", "/usuario/", "/usuario/*" })
public class UsuarioController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String nombreRegistro = request.getParameter("nombreRegistro");
		String apellidosRegistro = request.getParameter("apellidosRegistro");		
		String emailRegistro = request.getParameter("emailRegistro");
		String passwordRegistro = request.getParameter("confirmPasswordRegistro");
		int user_type = Integer.parseInt(request.getParameter("user_type"));				
		
		Usuario usu = new Usuario(nombreRegistro, apellidosRegistro, emailRegistro, passwordRegistro, user_type);
		
		new UsuarioModel().crearUsuario(usu);
		
		
		
		//System.out.println(usu.getNombre());
		
		if (usu != null) {
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("nombreUsuario", emailRegistro);
			
			response.sendRedirect("view/register.jsp");
		} 
		else {
			response.sendRedirect("view/login.jsp");
		}		
	}

}
