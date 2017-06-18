package app.model;

import java.util.List;

import org.mvc.Model;

import app.bean.Usuario;

public class ListaAdminModel extends Model {
	@SuppressWarnings("unchecked")
	public List<Usuario> getAdmins(){
		List<Usuario> admins = ss.createQuery("from Usuario where user_type=0 and activo=1").getResultList();
		ss.close();				
		return admins;	
	}
}
