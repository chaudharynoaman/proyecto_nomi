package app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.bean.Usuario;
import app.model.MiPerfilModel;


@SuppressWarnings("serial")
@WebServlet({ "/personal/perfil", "/personal/perfil/", "/personal/perfil/*" })
public class MiPerfilController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession(true);
		Long idUsuarioConectado = (Long) sesion.getAttribute("idUsuarioConectado");
		
		Usuario usuario = new MiPerfilModel().getUserDetailById(idUsuarioConectado);
		request.setAttribute("usuario", usuario);
		
		
		request.getRequestDispatcher("/view/personal/miPerfil.jsp").forward(request, response);

	}

}
