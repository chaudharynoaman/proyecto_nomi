package app.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.model.CambioEmailModel;


@SuppressWarnings("serial")
@WebServlet({ "/personal/cambioemail", "/personal/cambioemail/", "/personal/cambioemail/*" })
public class CambioEmailController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailAntiguo = request.getParameter("old-email").trim();
		String emailNuevo = request.getParameter("confirm-new-email").trim();
		HttpSession sesion = request.getSession(true);
		Long idUsuarioConectado = (Long) sesion.getAttribute("idUsuarioConectado");		
		
		//System.out.println(/*emailAntiguo+"****"+*/emailNuevo+"****"+idUsuarioConectado);
		boolean actualizaEmail = new CambioEmailModel().actualizarEmail(emailAntiguo, emailNuevo, idUsuarioConectado);
		
		if(actualizaEmail){
    		response.sendRedirect(request.getContextPath() + "/home");//redirijo a /home una vez creado el usuario
    		//System.out.println("********"+request.getContextPath());
		}
		else{ 
			request.setAttribute("EmailChangeErrorMessage", "Se ha producido un error al actualizar el email. Inténtalo de nuevo");
			RequestDispatcher rd=request.getRequestDispatcher("/view/personal/cambioEmail.jsp");            
			rd.include(request, response);
		}
		 
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/personal/cambioEmail.jsp").forward(request, response);

	}

}
