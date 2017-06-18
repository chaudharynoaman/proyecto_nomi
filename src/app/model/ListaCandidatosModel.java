package app.model;

import java.util.List;

import org.mvc.Model;

import app.bean.Inscripcion;


@SuppressWarnings("unchecked")
public class ListaCandidatosModel extends Model{	
	public List<Inscripcion>getInscripciones(){
		List<Inscripcion>inscripciones = ss.createQuery("from Inscripcion order by fechacreacion desc").getResultList();
		ss.close();
		return inscripciones;
	}

}
