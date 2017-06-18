package app.model;

import java.util.List;

import org.mvc.Model;

import app.bean.Inscripcion;

public class MostrarCvModel extends Model {
	
	@SuppressWarnings("unchecked")
	public Inscripcion getCv(long idDeLaInscripcion){
		List<Inscripcion>inscripcs = ss.createQuery("from Inscripcion where id = '" + idDeLaInscripcion + "'").getResultList();
		ss.close();
		return inscripcs.get(0);
	}

}
