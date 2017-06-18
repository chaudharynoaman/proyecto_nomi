package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Usuario;

public class UsuarioModel extends Model {
	public boolean crearUsuario(Usuario usu) {		
		
		if (existeUsuario(usu.getEmail())) {
			return false; //el usuario ya existe
		} else {
			Transaction t = ss.beginTransaction();        
	        ss.save(usu);		
			t.commit();
			ss.close();
			return true;
		}
	}
	
	
	@SuppressWarnings("unchecked")
	public boolean existeUsuario(String email){		
		List<Usuario>usuarios = ss.createQuery("from Usuario where email = '" + email + "'").getResultList();
		//ss.close();
		return !usuarios.isEmpty();		
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Usuario>getTodos(){
		List<Usuario>usuarios = ss.createQuery("from Usuario").getResultList();
		ss.close();
		return usuarios;
	}
	
	
	public Usuario getUsuariodByid(Long id) {
		return (Usuario)ss.get(Usuario.class,id);
	}

	
}
