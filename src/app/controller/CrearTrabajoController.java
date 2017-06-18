package app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.bean.Ciudad;
import app.bean.Job;
import app.model.CiudadModel;
import app.model.JobModel;


@SuppressWarnings("serial")
@WebServlet({ "/admin/creartrabajo", "/admin/creartrabajo/", "/admin/creartrabajo/*" })
public class CrearTrabajoController extends HttpServlet {
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String titulo = request.getParameter("tituloTrabajo");
		Long idCiudad = Long.parseLong(request.getParameter("ciudad-trabajo"));
		String fechaPubl = request.getParameter("fechaTrabajo");
		String descrip = request.getParameter("descripcionTrabajo");
		String estudios = request.getParameter("estudiosMinimosTrabajo");
		String experiencia = request.getParameter("experienciaMinimaTrabajo");
		String requisitos = request.getParameter("requisitosMinimosTrabajo");
		String jornada = request.getParameter("tipoJornadaTrabajo");
		String contrato = request.getParameter("tipoContratoTrabajo");
		int activo = Integer.parseInt(request.getParameter("trabajo-activo"));
		
		
		Job trabajo = new Job(titulo, fechaPubl, descrip, estudios, experiencia, requisitos, jornada, contrato, activo);
		Ciudad ciudad = new CiudadModel().getCiudadByid(idCiudad);
		
		trabajo.setCiudad(ciudad);
		new JobModel().crearTrabajo(trabajo);
		
		if (trabajo != null) {
			//response.sendRedirect("view/jobCreate.jsp");
			//request.getRequestDispatcher("view/jobCreate.jsp").forward(request, response);
			response.sendRedirect(request.getContextPath() + "/admin/creartrabajo");

		}
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getRequestDispatcher("view/jobCreate.jsp").forward(request, response);
		
		/*Obtengo lista de ciudades para rellenar el select de ciudades*/
		List<Ciudad> ciudades = new CiudadModel().getCiudades();
		for (Ciudad ciudad : ciudades) {
			response.getWriter().println("***"+ciudad.getId());
		}
		System.out.println("****"+ciudades.size());
		
		
		request.setAttribute("ciudades", ciudades);		

		request.getRequestDispatcher("/view/jobCreate.jsp").forward(request, response);

	}

}
