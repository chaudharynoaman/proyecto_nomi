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
			/**
			 * Aquí estas devolviendo solo el primer job. 
			 * Tienes que hacer lo del  resulset.next(). 
			 * Cada resultado tienes que transformarlo a un 
			 * objeto Job, y añadirlo en un array.
			 *
			 * (Esto no creo que compile, corrije lo que haga falta)
			 */
			
			/*
			List<Job> listaDeJobs = new ArrayList();

			while (resulset.next()) {
				Job job = new Job();
				job.setId(resulset.getInt(0));
				job.setTitulo(....);
				....

				listaDeJobs.add(job);
			}

			return listaDeJobs;
			*/
			return (List<Job>) empleos.get(0);
		}
	}

}
