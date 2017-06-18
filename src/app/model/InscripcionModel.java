package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Inscripcion;

public class InscripcionModel extends Model{
	public void crearInscripcion(Inscripcion inscripcion){
		Transaction t = ss.beginTransaction();
		ss.save(inscripcion);
		t.commit();
		ss.close();
	}
	
	@SuppressWarnings("unchecked")
	public List<Inscripcion>getTodos(){
		List<Inscripcion>inscripciones = ss.createQuery("from Inscripcion").getResultList();
		ss.close();
		return inscripciones;
	}
	
	@SuppressWarnings("unchecked")
	public Inscripcion getInscripcion(long idTrabajo, long idUsuario){		
		List<Inscripcion> tra = ss.createQuery("from Inscripcion where job_id='" + idTrabajo + "' and usuario_id='" + idUsuario + "'").getResultList();
		ss.close();	
		
		if (tra.size() == 0) {
			return null;
		}
		
		return tra.get(0);		
	}	
	
	
	
	
}
