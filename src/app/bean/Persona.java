package app.bean;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Persona {
	private Long id;
	private String nombre;
	private String nivel;
	
	@Id
	@GeneratedValue	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getNivel() {
		return nivel;
	}
	public void setNivel(String nivel) {
		this.nivel = nivel;
	}
	
	public Persona(String nombre, String nivel){
		this.nombre = nombre;
		this.nivel = nivel;
	}
	
	public Persona(){
		
	}
	

}

