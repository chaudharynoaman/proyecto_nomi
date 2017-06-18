package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Job;


public class JobModel extends Model {
	public void crearTrabajo(Job trabajo) {		
		Transaction t = ss.beginTransaction();        
        ss.save(trabajo);		
		t.commit();
		ss.close();				
	}
	
	@SuppressWarnings({ "unchecked" })
	public List<Job> getTodos(){
		List<Job> job = ss.createQuery("from Job where activo = 1 order by fechapublicacion desc").getResultList();
		ss.close();				
		return job;		
	}	
	
	
	@SuppressWarnings("unchecked")
	public Job getJobDetail(long idDetalleTrabajo){		
		List<Job> tra = ss.createQuery("from Job where id='" + idDetalleTrabajo + "'").getResultList();// where id='" + id + "'"
		ss.close();				
		return tra.get(0);		
	}	
	
	
	public Job getJobdByid(Long id) {
		return (Job)ss.get(Job.class,id);
	}
	
	

}
