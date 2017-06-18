package app.bean;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Ciudad {
	private Long id;
	private String nombreCiudad;	
	
	private List<Job> jobs = new ArrayList<Job>();
	
	@OneToMany(cascade = {CascadeType.ALL}, fetch=FetchType.LAZY, mappedBy="ciudad")
	public List<Job> getJobs() {
		return jobs;
	}
	public void setJobs(List<Job> jobs) {
		this.jobs = jobs;
	}
	
	public void setJob(Job job) {
		this.jobs.add(job);
	}
	
	@Id
	@GeneratedValue
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	
	public String getNombreCiudad() {
		return nombreCiudad;
	}
	public void setNombreCiudad(String nombreCiudad) {
		this.nombreCiudad = nombreCiudad;
	}
	
	public Ciudad(String nombreCiudad){
		this.nombreCiudad = nombreCiudad;
	}
	
	public Ciudad(){
		
	}
	
	
}
