package app.controller;

import java.util.List;

import javax.servlet.annotation.WebServlet;

import org.mvc.Controller;

import app.bean.Persona;
import app.model.PersonaModel;

@SuppressWarnings("serial")
@WebServlet({ "/persona", "/persona/", "/persona/*" })
public class PersonaController extends Controller {
	
	public void crearGet(){
		view("persona/crearGet.jsp");
	}
	
	public void crearPost(){
		String nombre = request.getParameter("nombre");
		String nivel = request.getParameter("nivel");
		Persona persona = new Persona(nombre,nivel);
		
		new PersonaModel().crearPersona(persona);
		datos.put("persona", persona);
		view("persona/crearPost.jsp");
	}
	
	public void listarGet(){
		List<Persona> personas = new PersonaModel().getTodos();
		datos.put("personas", personas);
		view("persona/listarGet.jsp");
	}
	
	public void indexGet(){
		crearGet();
	}

}
