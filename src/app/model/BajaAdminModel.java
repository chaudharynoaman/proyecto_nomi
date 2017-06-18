package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Usuario;

public class BajaAdminModel extends Model{
	
		public void bajaAdmin(Long idAdminBaja){
			Transaction t = ss.beginTransaction();        
		    Usuario p = (Usuario)ss.load((Usuario.class),idAdminBaja);
		    p.setActivo(0);		
			ss.merge(p);
			t.commit();
			ss.close();
		}
		
		@SuppressWarnings("unchecked")
		public Usuario getIdAdminByEmail(String emailAdminBaja){
			List<Usuario>usuarios = ss.createQuery("from Usuario where email = '"+emailAdminBaja+"'and user_type=0 and activo=1").getResultList();
			//ss.close();
			if (usuarios.isEmpty()) {
				return null;
			} 
			else {			
				return usuarios.get(0);			
			}						
		}
		
		@SuppressWarnings("unchecked")
		public boolean existeIdAdminByEmail(String emailAdminBaja){
			List<Usuario>usuarios = ss.createQuery("from Usuario where email = '"+emailAdminBaja+"'and user_type=0 and activo=1").getResultList();
			return !usuarios.isEmpty();		

		}
		
}


