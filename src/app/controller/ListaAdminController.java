package app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.bean.Usuario;
import app.model.ListaAdminModel;


@SuppressWarnings("serial")
@WebServlet({ "/super/listaadmins", "/super/listaadmins/", "/super/listaadmins/*" })
public class ListaAdminController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Usuario> usuarios = new ListaAdminModel().getAdmins();
		for (Usuario usuario : usuarios) {
			response.getWriter().println(usuario.getId());
		}
		
		request.setAttribute("usuarios", usuarios);		


		request.getRequestDispatcher("/view/listaAdmins.jsp").forward(request, response);
	}
	

}
