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
		
		if(usu==null){
			request.getRequestDispatcher("view/errorLogin.jsp").forward(request, response);
		}
		
		if ((usu.getEmail()).equals(emailLogin) && (usu.getPassword()).equals(passwordLogin)) {
			
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("emailUsuarioConectado", emailLogin);	
			
			String nombreUsuarioConectado = usu.getNombre();
			String apellidosUsuarioConectado = usu.getApellidos();
			
			sesion.setAttribute("nombreUsuConectado", nombreUsuarioConectado);
			sesion.setAttribute("apellidosUsuConectado", apellidosUsuarioConectado);
			
			//request.getRequestDispatcher("view/loggedUser.jsp").forward(request, response);
			
			int user_type = usu.getUser_type();			
			
			if(user_type==0){
				request.getRequestDispatcher("view/adminUser.jsp").forward(request, response);
			}
			else{
				request.getRequestDispatcher("view/normalUser.jsp").forward(request, response);
			}			
			
		} 
		else {			
			request.getRequestDispatcher("view/errorLogin.jsp").forward(request, response);
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException	{
		request.getRequestDispatcher("view/login.jsp").forward(request, response);
	
	}	

}
