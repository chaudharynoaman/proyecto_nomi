package app.model;

import java.util.List;

import org.mvc.Model;

import app.bean.Usuario;

public class LoginModel extends Model {
	@SuppressWarnings("unchecked")
	public Usuario getUsuario(String emailLogin, String passwordLogin) {		
		List<Usuario> usuarios = ss.createQuery("from Usuario where email='" + emailLogin + "' and password='" + passwordLogin+"'").getResultList();
		//ss.close();		
		if (usuarios.isEmpty()) {
			return null;
		} 
		else {			
			return usuarios.get(0);			
		}
	}
}