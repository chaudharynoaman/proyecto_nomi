package app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.bean.Inscripcion;
import app.model.CandidaturasModel;

/**
 * Servlet implementation class CandidaturasController
 */
@SuppressWarnings("serial")
@WebServlet({ "/personal/candidaturas", "/personal/candidaturas/", "/personal/candidaturas/*" })
public class CandidaturasController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*HttpSession sesion = request.getSession(true);
		Long idUserConectado = (Long) sesion.getAttribute("idUsuarioConectado");
		
		Long idTrabajoInscrito = Long.valueOf(request.getParameter("valor-id-trabajo"));
		
		new CandidaturasModel().getCandidaturas(idUserConectado);*/
 

	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession(true);
		Long idUsuarioCon = (Long) sesion.getAttribute("idUsuarioConectado");
		

		List<Inscripcion> inscripciones = new CandidaturasModel().getCandidaturas(idUsuarioCon);		
		for (Inscripcion inscripcion : inscripciones) {
			response.getWriter().println(inscripcion.getId());
			System.out.println(inscripcion.getId());
		}
		
		request.setAttribute("inscripciones", inscripciones);	
		
		
		
		request.getRequestDispatcher("/view/personal/candidaturasActivas.jsp").forward(request, response);


	}

}
