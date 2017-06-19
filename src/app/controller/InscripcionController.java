package app.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.sql.rowset.serial.SerialException;

import app.bean.Inscripcion;
import app.bean.Job;
import app.bean.Usuario;
import app.model.InscripcionModel;
import app.model.JobModel;
import app.model.UsuarioModel;

/**
 * Servlet implementation class InscripcionController
 */
@SuppressWarnings("serial")
@MultipartConfig
@WebServlet({ "/inscripcion", "/inscripcion/", "/inscripcion/*" })
public class InscripcionController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long idOfertaInscripcion = Long.valueOf(request.getParameter("valor-id-trabajo"));		
		
		HttpSession sesion = request.getSession(true);
		Long idUsuarioConectado = (Long) sesion.getAttribute("idUsuarioConectado");
		
		if(idUsuarioConectado==null){//Si el usuario no esta conectado, redirige a pag de error
			request.getRequestDispatcher("view/errorInscripcion.jsp").forward(request, response);
		}
		else{
			Part filePart = request.getPart("curriculum"); 
			byte[] bytes = readBytesFromFile(filePart);
			try {
				Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			
				Inscripcion inscripcion = new Inscripcion(blob);
				
				Usuario usuario = new UsuarioModel().getUsuariodByid(idUsuarioConectado);
				Job trab = new JobModel().getJobdByid(idOfertaInscripcion);
				
				inscripcion.setUsuario(usuario);
				inscripcion.setJob(trab);
			
				new InscripcionModel().crearInscripcion(inscripcion);
			
				if (inscripcion != null) {
					
					Job job = new JobModel().getJobDetail(idOfertaInscripcion.intValue());
					String titulo = job.getTitulo();
					
					request.setAttribute("tituloJob", titulo);
					
					//Esto es solo para probar que lo guarda y lo lee bien de BBDD 
					
					/*Inscripcion test = new InscripcionModel().getInscripcion(idOfertaInscripcion, idUsuarioConectado);
					Blob cv = test.getCurriculum();
					
					InputStream is = blob.getBinaryStream();
		            FileOutputStream fos = new FileOutputStream("C:\\Users\\chaudhary\\Desktop\\resultado.pdf");
		 
		            int b = 0;
					while ((b = is.read()) != -1)
					{
					    fos.write(b); 
					}

					request.setAttribute("linkCV", "C:\\Users\\chaudhary\\Desktop\\resultado.pdf");*/
					
					//request.getRequestDispatcher("view/inscripcionPreview.jsp").forward(request, response);
					response.sendRedirect(request.getContextPath() + "/job");
				}
			
			} catch (SerialException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		//getNombreTrabajoPorId(Long id)
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getRequestDispatcher("view/inscripcionPreview.jsp").forward(request, response);
		response.sendRedirect(request.getContextPath() + "/job");
	}

	private byte[] readBytesFromFile(Part filePart) throws IOException {
		InputStream inputStream = filePart.getInputStream();

		byte[] fileBytes = new byte[(int) filePart.getSize()];
		inputStream.read(fileBytes);
		inputStream.close();
		
		return fileBytes;
	}
}
