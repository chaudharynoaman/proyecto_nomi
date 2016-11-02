package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Job;
import app.bean.Usuario;

public class JobModel extends Model {
	public void crearTrabajo(Job trabajo) {		
		Transaction t = ss.beginTransaction();        
        ss.save(trabajo);		
		t.commit();
		ss.close();				
	}
	
	@SuppressWarnings("unchecked")
	public List<Job>getTodos(){
		List<Job>empleos = ss.createQuery("from Job").list();
		ss.close();
		if (empleos.isEmpty()) {
			return null;
		} else {
			return (List<Job>) empleos.get(0);
		}
	}

}
