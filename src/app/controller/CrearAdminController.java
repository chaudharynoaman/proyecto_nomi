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


@SuppressWarnings("serial")
@WebServlet({ "/super/nuevoadmin", "/super/nuevoadmin/", "/super/nuevoadmin/*" })
public class CrearAdminController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombreRegistroAdmin = request.getParameter("nombre-registro-admin").trim();
		String apellidosRegistroAdmin = request.getParameter("apellidos-registro-admin").trim();		
		String emailRegistroAdmin = request.getParameter("email-registro-admin").trim();
		String passwordRegistroAdmin = request.getParameter("confirm-password-registro-admin").trim();
		int user_type_admin = Integer.parseInt(request.getParameter("user_type_admin").trim());
		int activoAdmin = Integer.parseInt(request.getParameter("activo-admin").trim());
		
		
		Usuario usuario = new Usuario(nombreRegistroAdmin, apellidosRegistroAdmin, emailRegistroAdmin, passwordRegistroAdmin, user_type_admin, activoAdmin);
		
		boolean usuarioCreado = new UsuarioModel().crearUsuario(usuario);
		
		//System.out.println("usuario creado: " + usuarioCreado);
		
		if(usuarioCreado){
			HttpSession sesion = request.getSession(true);
			sesion.setAttribute("nombreUsuario", nombreRegistroAdmin);			
			//request.getRequestDispatcher("view/registrationOk.jsp").forward(request, response);
			
    		response.sendRedirect(request.getContextPath() + "/home");//redirijo a /home una vez creado el usuario
			
		}
		else{
			//request.getRequestDispatcher("view/registrationError.jsp").forward(request, response); 
			request.setAttribute("CreateAdminErrorMessage", "Se ha producido un error en el registro. Inténtalo de nuevo.");
			RequestDispatcher rd=request.getRequestDispatcher("/view/crearAdmin.jsp");            
			rd.include(request, response);
		}		
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/crearAdmin.jsp").forward(request, response);

	}

}
