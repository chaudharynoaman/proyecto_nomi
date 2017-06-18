package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Usuario;

public class CambioPasswordModel extends Model{
	
	public boolean cambioPassword(String passwordAntiguo, String passwordNuevo, Long idUsuarioConectado){		
		if(passwordAntiguoCorrecto(passwordAntiguo, idUsuarioConectado )){
			Transaction t = ss.beginTransaction();        
		    Usuario p = (Usuario)ss.load((Usuario.class),idUsuarioConectado);
			p.setPassword(passwordNuevo);
			ss.merge(p);
			t.commit();
			ss.close();
			return true;			
		}
		else{
			return false;//el password antiguo (actual) no es correcto
		}
		 

		
	}
	
	@SuppressWarnings("unchecked")
	public boolean passwordAntiguoCorrecto(String passwordAntiguo, Long idUsuarioConectado){		
		List<Usuario>usuarios = ss.createQuery("from Usuario where password = '" + passwordAntiguo + "' and id = '"+idUsuarioConectado+"'").getResultList();
		//ss.close();
		return !usuarios.isEmpty();		
	}
	
	
	

}
