package app.bean;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Usuario {
	private Long id;
	private String nombre;
	private String apellidos;
	private String email;
	private String password;
	private int user_type;
	private int activo;
	
	private List<Inscripcion> inscripciones = new ArrayList<Inscripcion>();
	
	@OneToMany(mappedBy="usuario")
	public List<Inscripcion> getInscripciones() {
		return inscripciones;
	}
	public void setInscripciones(List<Inscripcion> inscripciones) {
		this.inscripciones = inscripciones;
	}
	
	//nuevo
	public void setInscripcion(Inscripcion inscripcion){
		this.inscripciones.add(inscripcion);
	}	
	
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
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUser_type() {
		return user_type;
	}
	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}
	public int getActivo() {
		return activo;
	}
	public void setActivo(int activo) {
		this.activo = activo;
	}
	
	public Usuario(String nombre, String apellidos, String email, String password, int user_type, int activo){
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = email;
		this.password = password;
		this.user_type = user_type;	
		this.activo = activo;
	}
	
	public Usuario(){
		
	}	
	

}
