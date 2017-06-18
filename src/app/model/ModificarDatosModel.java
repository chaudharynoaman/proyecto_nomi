package app.model;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Usuario;

public class ModificarDatosModel extends Model {
	public void updateUserDetails(Long idUsuarioConectado, String nombreNuevo, String apellidosNuevo){
		 Transaction t = ss.beginTransaction();        
	     Usuario p = (Usuario)ss.load((Usuario.class),idUsuarioConectado);
		 p.setNombre(nombreNuevo);
		 p.setApellidos(apellidosNuevo);		
		 ss.merge(p);
		 t.commit();
		 ss.close();		
	}

}
