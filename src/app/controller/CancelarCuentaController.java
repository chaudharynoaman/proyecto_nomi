package app.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import app.model.CancelarCuentaModel;


@SuppressWarnings("serial")
@WebServlet({ "/personal/cancelarcuenta", "/personal/cancelarcuenta/", "/personal/cancelarcuenta/*" })
public class CancelarCuentaController extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sesion = request.getSession(true);
		Long idUsuarioConectado = (Long) sesion.getAttribute("idUsuarioConectado");
		
		new CancelarCuentaModel().cancelarCuenta(idUsuarioConectado);
		
		HttpSession session = request.getSession(false);
        
        if(session != null){
        	session.removeAttribute("idUsuarioConectado");
        	session.invalidate();
    		response.sendRedirect(request.getContextPath() + "/home");
        }
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect(request.getContextPath() + "/home");//redirijo a /home una vez creado el usuario

	}

}
