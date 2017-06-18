package app.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import app.bean.Inscripcion;
import app.bean.Usuario;
import app.model.MostrarCvModel;


@SuppressWarnings("serial")
@WebServlet({ "/admin/mostrarcv", "/admin/mostrarcv/", "/admin/mostrarcv/*" })
public class MostrarCvController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		long idDeLaInscripcion = Long.parseLong(request.getParameter("idInscr"));
		
		try{				
								
			Inscripcion test = new MostrarCvModel().getCv(idDeLaInscripcion);			
			Blob cv = test.getCurriculum();				
			
			//Long tituloCv = test.getId();
			Usuario titulo = test.getUsuario();
			String nombreCv = titulo.getNombre();
			String apellidosCv = titulo.getApellidos();
			String tituloCv = "CV "+nombreCv+" "+apellidosCv;
				
			response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "inline");               
				
		    InputStream is = cv.getBinaryStream();
		        
	        FileOutputStream fos = new FileOutputStream("C:\\Users\\chaudhary\\Desktop\\"+tituloCv+".pdf");
	           	            
	        int b = 0;
	        while ((b = is.read()) != -1){
	        	fos.write(b); 
			}	
	        
	        fos.flush();
	        fos.close();   
	        
	        
			response.sendRedirect(request.getContextPath() + "/admin/candidatos");
				
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e);
		}
        	
        
	}
		

}
