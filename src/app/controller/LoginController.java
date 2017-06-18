package app.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		String emailLogin = request.getParameter("emailLogin").trim();
		String passwordLogin = request.getParameter("passwordLogin").trim();				
		
		Usuario usu = new LoginModel().getUsuario(emailLogin, passwordLogin);		
		
		if(usu==null){
			//request.getRequestDispatcher("view/errorLogin.jsp").forward(request, response);			
			request.setAttribute("UserLoginErrorMessage", "El email o la contraseña son incorrectas. Inténtalo de nuevo.");
			RequestDispatcher rd=request.getRequestDispatcher("view/login.jsp");            
			rd.include(request, response);			
		}
		
		
		if ((usu.getEmail()).equals(emailLogin) && (usu.getPassword()).equals(passwordLogin)) {

			int usuarioActivo=usu.getActivo();
			//System.out.println("Usuario activo???: "+usuarioActivo);	
				
			if(usuarioActivo == 0){
				request.setAttribute("UserLoginErrorMessage", "El email o la contraseña son incorrectas. Inténtalo de nuevo.");
				RequestDispatcher rd=request.getRequestDispatcher("view/login.jsp");            
				rd.include(request, response);	
			}
			else{			
			
				HttpSession sesion = request.getSession(true);	//crear sesion			
				
				Long idUsuarioConectado = usu.getId();
				String nombreUsuarioConectado = usu.getNombre();
				String apellidosUsuarioConectado = usu.getApellidos();
				String contrasenaUsuarioConectado = usu.getPassword();
				int tipoUsuarioConectado = usu.getUser_type();
				
				sesion.setAttribute("emailUsuarioConectado", emailLogin);
				sesion.setAttribute("idUsuarioConectado", idUsuarioConectado);
				sesion.setAttribute("nombreUsuConectado", nombreUsuarioConectado);
				sesion.setAttribute("apellidosUsuConectado", apellidosUsuarioConectado);
				sesion.setAttribute("contrasenaUsuConectado", contrasenaUsuarioConectado);
				sesion.setAttribute("tipoUserConectado", tipoUsuarioConectado);			
			
			
				int user_type = usu.getUser_type();			
			
				if(user_type==0){					
					response.sendRedirect(request.getContextPath() + "/home");
				}
				
				else{					
					response.sendRedirect(request.getContextPath() + "/home");					
				}
			}
			
		} 
		else {						
			request.setAttribute("UserLoginErrorMessage", "El email o la contraseña son incorrectas. Inténtalo de nuevo.");
			RequestDispatcher rd=request.getRequestDispatcher("view/login.jsp");            
			rd.include(request, response);			
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException	{
		request.getRequestDispatcher("view/login.jsp").forward(request, response);
	
	}	

}
