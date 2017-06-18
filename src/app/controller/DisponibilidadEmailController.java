package app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.model.DisponibilidadEmailModel;


@SuppressWarnings("serial")
@WebServlet({ "/comprobaremail", "/comprobaremail/", "/comprobaremail/*" })
public class DisponibilidadEmailController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailacomprobar = request.getParameter("email");
		
		boolean comprobarEmail = new DisponibilidadEmailModel().existeMail(emailacomprobar);
		

		if(comprobarEmail){
	        String resultado = "Este email ya está en uso. Prueba con otro.";
	        response.setContentType("text/plain");
			response.getWriter().write(resultado);
		}
		/*else{
			String resultado = "El email no existe";
	        response.setContentType("text/plain");
			response.getWriter().write(resultado);

		}	*/	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
