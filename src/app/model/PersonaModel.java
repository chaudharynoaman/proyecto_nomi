package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Persona;

public class PersonaModel extends Model {
	public void crearPersona(Persona persona){
		Transaction t = ss.beginTransaction();
		ss.save(persona);
		t.commit();
		ss.close();		
	}
	
	@SuppressWarnings("unchecked")
	public List<Persona>getTodos(){
		List<Persona>personas = ss.createQuery("from Persona").list();
		ss.close();
		return personas;
	}

}
