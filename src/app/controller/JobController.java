package app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import app.bean.Job;
import app.model.JobModel;

/**
 * Servlet implementation class JobController
 */
@SuppressWarnings("serial")
@WebServlet({ "/job", "/job/", "/job/*" })
public class JobController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String titulo = request.getParameter("tituloTrabajo");
		String ciudad = request.getParameter("ciudadTrabajo");		
		String fechaPubl = request.getParameter("fechaTrabajo");
		String descrip = request.getParameter("descripcionTrabajo");
		String estudios = request.getParameter("estudiosMinimosTrabajo");
		String experiencia = request.getParameter("experienciaMinimaTrabajo");
		String requisitos = request.getParameter("requisitosMinimosTrabajo");
		String jornada = request.getParameter("tipoJornadaTrabajo");
		String contrato = request.getParameter("tipoContratoTrabajo");
			
		Job trabajo = new Job(titulo, ciudad, fechaPubl, descrip, estudios, experiencia, requisitos, jornada, contrato);
		
		new JobModel().crearTrabajo(trabajo);
		
		if (trabajo != null) {
			response.sendRedirect("view/jobCreate.jsp");
		} 
		
		
		
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException	{

		/**
		 * Seguramente no compile (no lo puedo probar)
		 * pero la idea sería esta:
		 *
		 * Desde aquí se hace la llamada al modelo para obtener todos los trabajos. Esto lo tenías bien. 
		 * Dentro de JobModel es desde donde se hace la consulta a BBDD: abres la conexion y obtienes todos los datos
		 * en un array...
		 * 
		 */
		List<Job> jobs = new JobModel().getTodos();

		/*
		Ahora lo que tienes que hacer es guardar ese array en un parametro de la request. 
		Y luego desde la JSP obtenerlo.

		Creo que era:
		 */
		
		request.setAttribute("jobs", jobs);

		/* Y en la JSP tendrías que hacer: 

			List<Job> jobs = request.getAttribute("jobs");

			Te lo escribo en la JSP....

		*/

		response.sendRedirect("view/jobs.jsp");
	}
	

}
