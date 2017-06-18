package app.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import app.bean.Usuario;
import app.model.BajaAdminModel;


@SuppressWarnings("serial")
@WebServlet({ "/super/bajaadmin", "/super/bajaadmin/", "/super/bajaadmin/*" })
public class BajaAdminController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emailAdminBaja = request.getParameter("email-admin-baja").trim();
		
		boolean existeMail = new BajaAdminModel().existeIdAdminByEmail(emailAdminBaja);		
		
		if(existeMail == false){
			//System.out.println("no existe el mail");
			request.setAttribute("BajaAdminErrorMessage", "No se ha podido borrar el Administrador. Compruebe que el E-mail es correcto.");
			RequestDispatcher rd=request.getRequestDispatcher("/view/bajaAdmin.jsp");            
			rd.include(request, response);
		}
		else{
			
			Usuario a = new BajaAdminModel().getIdAdminByEmail(emailAdminBaja);			
			Long idAdminBaja = a.getId();
			
			//System.out.println("******************"+idAdminBaja);
			//System.out.println("existe el mail y lo borra" );
			new BajaAdminModel().bajaAdmin(idAdminBaja);
			response.sendRedirect(request.getContextPath() + "/home");
		}
		
		
		
		
		
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/bajaAdmin.jsp").forward(request, response);
	}

}
