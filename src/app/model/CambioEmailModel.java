package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Usuario;

public class CambioEmailModel extends Model{
	public boolean actualizarEmail(String emailAntiguo, String emailNuevo, Long idUsuarioConectado) {		
		
		if (existeEmailNuevo(emailNuevo)) {
			return false; //el usuario ya existe
		} 
		else {
			Transaction t = ss.beginTransaction();        
		    Usuario p = (Usuario)ss.load((Usuario.class),idUsuarioConectado);			 
			p.setEmail(emailNuevo);
			ss.merge(p);
			t.commit();
			ss.close();
			return true;

		}
	}
	
	
	@SuppressWarnings("unchecked")
	public boolean existeEmailNuevo(String emailNuevo){		
		List<Usuario>usuarios = ss.createQuery("from Usuario where email = '" + emailNuevo + "'").getResultList();
		//ss.close();
		return !usuarios.isEmpty();		
	} 

}
