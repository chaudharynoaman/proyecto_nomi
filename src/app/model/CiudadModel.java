package app.model;

import java.util.List;

import org.mvc.Model;

import app.bean.Ciudad;

public class CiudadModel extends Model {
	/*public void insertarCiudades(Ciudad ciudad){
		Transaction t = ss.beginTransaction();
		ss.save(ciudad);
		t.commit();
		ss.close();
	}*/
		
	
	
	@SuppressWarnings("unchecked")
	public List<Ciudad> getCiudades(){
		List<Ciudad> ciudades = ss.createQuery("from Ciudad").getResultList();
		ss.close();
		return ciudades;

	}

	public Ciudad getCiudadByid(Long id) {
		return (Ciudad)ss.get(Ciudad.class,id);
	}
}
