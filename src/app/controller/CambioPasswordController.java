package app.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.model.CambioPasswordModel;

@SuppressWarnings("serial")
@WebServlet({ "/personal/cambiopassword", "/personal/cambiopassword/", "/personal/cambiopassword/*" })
public class CambioPasswordController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String passwordAntiguo = request.getParameter("old-password").trim();
		String passwordNuevo = request.getParameter("confirm-new-password").trim();
		HttpSession sesion = request.getSession(true);
		Long idUsuarioConectado = (Long) sesion.getAttribute("idUsuarioConectado");	
		
		HttpSession sesion1 = request.getSession(true);
		String pwdUserConectado = (String) sesion1.getAttribute("contrasenaUsuConectado");	

		//Usuario us = new Usuario();
		//System.out.println(passwordAntiguo+"****"+passwordNuevo+"****"+idUsuarioConectado+"***"+pwdUserConectado);
		
		
		
		//boolean actualizaPwd = new CambioPasswordModel().cambioPassword(passwordAntiguo, passwordNuevo, idUsuarioConectado);
		
		
		if(pwdUserConectado.equals(passwordAntiguo)){			
			boolean actualizaPwd = new CambioPasswordModel().cambioPassword(passwordAntiguo, passwordNuevo, idUsuarioConectado);
			if(actualizaPwd){
				response.sendRedirect(request.getContextPath() + "/home");//redirijo a /home una vez cambiado password
				//request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		
			else{
				//request.getRequestDispatcher("view/errorGeneral.jsp").forward(request, response);
				request.setAttribute("PasswordChangeErrorMessage", "Se ha producido un error al actualizar la contraseña. Inténtalo de nuevo");
				RequestDispatcher rd=request.getRequestDispatcher("/view/personal/cambioPassword.jsp");            
				rd.include(request, response);
	
			}
		}
		else{
			//request.getRequestDispatcher("view/errorGeneral.jsp").forward(request, response);
			request.setAttribute("PasswordChangeErrorMessage", "Se ha producido un error al actualizar la contraseña. Inténtalo de nuevo");
			RequestDispatcher rd=request.getRequestDispatcher("/view/personal/cambioPassword.jsp");            
			rd.include(request, response);

		}
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/personal/cambioPassword.jsp").forward(request, response);
	
	}

}
