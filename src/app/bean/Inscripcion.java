package app.bean;

import java.sql.Blob;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Inscripcion {
	private Long id;	
	private Date fechacreacion;
	private Blob curriculum;
	private Job job;
	private Usuario usuario;
	
	
	@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@ManyToOne
	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
		//nuevo
		job.setInscripcion(this);
	}

	@ManyToOne
	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
		//nuevo
		usuario.setInscripcion(this);
	}
	
	
	public Inscripcion(Blob curriculum){
		this.setFechacreacion(new Date()); 
		this.curriculum = curriculum;
	}
	
	public Inscripcion(){
		
	}
	public Date getFechacreacion() {
		return fechacreacion;
	}
	public void setFechacreacion(Date fechacreacion) {
		this.fechacreacion = fechacreacion;
	}
	public Blob getCurriculum() {
		return curriculum;
	}
	public void setCurriculum(Blob curriculum) {
		this.curriculum = curriculum;
	}
	

}
