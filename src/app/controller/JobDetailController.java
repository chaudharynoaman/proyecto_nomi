package app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.bean.Inscripcion;
import app.bean.Job;
import app.model.InscripcionModel;
import app.model.JobModel;

/**
 * Servlet implementation class JobDetailController
 */

@SuppressWarnings("serial")
@WebServlet({ "/jobDetail", "/jobDetail/", "/jobDetail/*" })

public class JobDetailController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*@SuppressWarnings("unused")
		int identificadorTrabajo = Integer.parseInt(request.getParameter("id"));*/
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException	{		
		long identificadorTrabajo = Long.parseLong(request.getParameter("id"));		
		Job job = new JobModel().getJobDetail(identificadorTrabajo);
		request.setAttribute("job", job);
		
		HttpSession sesion = request.getSession(true);
		Long idUsuarioConectado = (Long) sesion.getAttribute("idUsuarioConectado");
		
		if (idUsuarioConectado == null) {
			request.setAttribute("yainscrito", false);
		}
		else {
			Inscripcion inscripcion = new InscripcionModel().getInscripcion(identificadorTrabajo, idUsuarioConectado);
			
			if (inscripcion == null) {
				request.setAttribute("yainscrito", false);
			}else {
				request.setAttribute("yainscrito", true);
			}
		}

		request.getRequestDispatcher("view/jobDetail.jsp").forward(request, response);
	}

}
