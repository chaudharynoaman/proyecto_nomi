package app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.model.BorrarEmpleoModel;


@SuppressWarnings("serial")
@WebServlet({ "/admin/borrarempleo", "/admin/borrarempleo/", "/admin/borrarempleo/*" })
public class BorrarEmpleoController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long idTrabajoParaBorrar = Long.parseLong(request.getParameter("idTrabajo-Borrar"));
		
		new BorrarEmpleoModel().borrarEmpleo(idTrabajoParaBorrar);
		
		response.sendRedirect(request.getContextPath() + "/admin/listaempleos");
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/admin/listaempleos");
	}

}
