package app.model;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Job;

public class BorrarEmpleoModel extends Model {
	public void borrarEmpleo(Long idTrabajoParaBorrar){
		Transaction t = ss.beginTransaction();        
	    Job j = (Job)ss.load((Job.class),idTrabajoParaBorrar);
	    j.setActivo(0);		
		ss.merge(j);
		t.commit();
		ss.close();
		
	}

}
