package app.model;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Usuario;

public class CancelarCuentaModel extends Model {
	public void cancelarCuenta(Long idUsuarioConectado){
		Transaction t = ss.beginTransaction();        
	    Usuario p = (Usuario)ss.load((Usuario.class),idUsuarioConectado);
	    p.setActivo(0);		
		ss.merge(p);
		t.commit();
		ss.close();
	}

}
