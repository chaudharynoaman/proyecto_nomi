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
import app.model.UsuarioModel;

/**
 * Servlet implementation class Acceso
 */
@SuppressWarnings("serial")
@WebServlet({ "/usuario", "/usuario/", "/usuario/*" })
public class UsuarioController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String nombreRegistro = request.getParameter("nombreRegistro").trim();
		String apellidosRegistro = request.getParameter("apellidosRegistro").trim();		
		String emailRegistro = request.getParameter("emailRegistro").trim();
		String passwordRegistro = request.getParameter("confirmPasswordRegistro").trim();
		int user_type = Integer.parseInt(request.getParameter("user_type"));
		int activo = Integer.parseInt(request.getParameter("activo"));
		
				
		Usuario usu = new Usuario(nombreRegistro, apellidosRegistro, emailRegistro, passwordRegistro, user_type, activo);
		
		boolean usuarioCreado = new UsuarioModel().crearUsuario(usu);
		
		//System.out.println("usuario creado: " + usuarioCreado);
		
		if(usuarioCreado){
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("nombreUsuario", nombreRegistro);			
			//request.getRequestDispatcher("view/registrationOk.jsp").forward(request, response);
			
    		response.sendRedirect(request.getContextPath() + "/home");//redirijo a /home una vez creado el usuario


			
		}
		else{
			//request.getRequestDispatcher("view/registrationError.jsp").forward(request, response); 
			request.setAttribute("CreateUserErrorMessage", "Se ha producido un error en el registro. Inténtalo de nuevo.");
			RequestDispatcher rd=request.getRequestDispatcher("view/register.jsp");            
			rd.include(request, response);
		}
		
		
		
		//System.out.println(usu.getNombre());
		
		/*if (usu != null) {
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("nombreUsuario", emailRegistro);
			
			response.sendRedirect("view/registrationOk.jsp");
		} 
		else {
			response.sendRedirect("view/register.jsp");
		}*/	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException	{
		request.getRequestDispatcher("view/register.jsp").forward(request, response);
	
	}

}
