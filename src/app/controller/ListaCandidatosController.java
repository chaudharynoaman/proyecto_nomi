package app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.bean.Inscripcion;
import app.model.ListaCandidatosModel;


@SuppressWarnings("serial")
@WebServlet({ "/admin/candidatos", "/admin/candidatos/", "/admin/candidatos/*" })
public class ListaCandidatosController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Inscripcion> inscripciones = new ListaCandidatosModel().getInscripciones();
		for (Inscripcion inscripcion : inscripciones) {
			response.getWriter().println(inscripcion.getId());
		}
		
		request.setAttribute("inscripciones", inscripciones);		


		request.getRequestDispatcher("/view/listaEmpleosCandidatos.jsp").forward(request, response);
	
		
	}

}
