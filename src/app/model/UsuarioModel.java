package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Usuario;

public class UsuarioModel extends Model {
	public void crearUsuario(Usuario usu) {		
		Transaction t = ss.beginTransaction();        
        ss.save(usu);		
		t.commit();
		ss.close();				
	}
	
	@SuppressWarnings("unchecked")
	public List<Usuario>getTodos(){
		List<Usuario>usuarios = ss.createQuery("from Usuario").list();
		ss.close();
		return usuarios;
	}


}
