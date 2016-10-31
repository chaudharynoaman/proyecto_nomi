package app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.bean.Usuario;
import app.model.LoginModel;

/**
 * Servlet implementation class Acceso
 */
@SuppressWarnings("serial")
@WebServlet({ "/login", "/login/", "/login/*" })
public class LoginController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailLogin = request.getParameter("emailLogin");
		String passwordLogin = request.getParameter("passwordLogin");		
		
		
		Usuario usu = new LoginModel().getUsuario(emailLogin, passwordLogin);
		
		//System.out.println(usu.getNombre());
		
		if (usu != null) {
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("nombreUsuarioConectado", emailLogin);
			
			response.sendRedirect("view/loggedUser.jsp");
		} 
		else {
			response.sendRedirect("view/login.jsp");
		}
		
	}
	

}
