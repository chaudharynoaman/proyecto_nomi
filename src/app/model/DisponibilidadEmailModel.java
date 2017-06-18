package app.model;

import java.util.List;

import org.mvc.Model;

import app.bean.Usuario;

public class DisponibilidadEmailModel extends Model{
	@SuppressWarnings("unchecked")
	public boolean existeMail(String emailacomprobar){		
		List<Usuario>usuarios = ss.createQuery("from Usuario where email = '" + emailacomprobar + "'").getResultList();
		//ss.close();
		return !usuarios.isEmpty();	
		
	}
	

}
