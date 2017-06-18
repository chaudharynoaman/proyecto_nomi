package app.model;

import java.util.List;

import org.mvc.Model;

import app.bean.Usuario;

public class MiPerfilModel extends Model {
	@SuppressWarnings("unchecked")
	public Usuario getUserDetailById(long idUsuarioConectado){		
		List<Usuario> usuario = ss.createQuery("from Usuario where id='" + idUsuarioConectado + "'").getResultList();
		ss.close();				
		return usuario.get(0);		
	}

}
