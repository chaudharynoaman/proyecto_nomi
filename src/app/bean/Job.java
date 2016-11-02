package app.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Job {
	private Long id;
	private String titulo;
	private String ciudad;
	private String fechapublicacion;
	private String descripcion;
	private String estudiosminimos;
	private String experienciaminima;
	private String requisitosminimos;
	private String tipojornada;
	private String tipocontrato;
	
	@Id
	@GeneratedValue	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	public String getFechapublicacion() {
		return fechapublicacion;
	}
	public void setFechapublicacion(String fechapublicacion) {
		this.fechapublicacion = fechapublicacion;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getEstudiosminimos() {
		return estudiosminimos;
	}
	public void setEstudiosminimos(String estudiosminimos) {
		this.estudiosminimos = estudiosminimos;
	}
	public String getExperienciaminima() {
		return experienciaminima;
	}
	public void setExperienciaminima(String experienciaminima) {
		this.experienciaminima = experienciaminima;
	}
	public String getRequisitosminimos() {
		return requisitosminimos;
	}
	public void setRequisitosminimos(String requisitosminimos) {
		this.requisitosminimos = requisitosminimos;
	}
	public String getTipojornada() {
		return tipojornada;
	}
	public void setTipojornada(String tipojornada) {
		this.tipojornada = tipojornada;
	}
	public String getTipocontrato() {
		return tipocontrato;
	}
	public void setTipocontrato(String tipocontrato) {
		this.tipocontrato = tipocontrato;
	}
	
	public Job(String titulo, String ciudad, String fechapublicacion, String descripcion, String estudiosminimos, String experienciaminima, String requisitosminimos, String tipojornada, String tipocontrato){
		this.titulo = titulo;
		this.ciudad = ciudad;
		this.fechapublicacion = fechapublicacion;
		this.descripcion = descripcion;
		this.estudiosminimos = estudiosminimos;
		this.experienciaminima = experienciaminima;
		this.requisitosminimos = requisitosminimos;
		this.tipojornada = tipojornada;
		this.tipocontrato = tipocontrato;
	}
	
	public Job(){
		
	}

}
