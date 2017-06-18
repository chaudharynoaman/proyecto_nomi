package app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.model.ModificarDatosModel;

@SuppressWarnings("serial")
@WebServlet({ "/personal/modificardatos", "/personal/modificardatos/", "/personal/modificardatos/*" })
public class ModificarDatosController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombreModificar = request.getParameter("nombremod");
		String apellidosModificar = request.getParameter("apemod");
		//String emailModificar = request.getParameter("emailmod");
		
		HttpSession sesion = request.getSession(true);
		Long idUsuarioConectado = (Long) sesion.getAttribute("idUsuarioConectado");
		
		//System.out.println(nombreModificar+"*****"+apellidosModificar+"*****"+emailModificar);
		
		new ModificarDatosModel().updateUserDetails(idUsuarioConectado,nombreModificar,apellidosModificar);
		response.sendRedirect(request.getContextPath() + "/home");

	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/personal/miPerfil.jsp").forward(request, response);

	}

}
