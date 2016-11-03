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

}
