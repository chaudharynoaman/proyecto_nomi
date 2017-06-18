package app.model;

import java.util.List;

import org.mvc.Model;

import app.bean.Inscripcion;

public class CandidaturasModel extends Model{
	@SuppressWarnings("unchecked")
	public List<Inscripcion> getCandidaturas(Long idUsuarioCon){
		//List<Job> job = ss.createQuery("from Job where id in(from Inscripcion where idUsuario='" + idUsuarioCon + "')").getResultList();
		
		List<Inscripcion> inscripcion = ss.createQuery("from Inscripcion where job_id in(select id from Job where activo=1)and usuario_id='" + idUsuarioCon + "'order by fechacreacion desc").getResultList();

		ss.close();				
		return inscripcion;		
	}
	

}
