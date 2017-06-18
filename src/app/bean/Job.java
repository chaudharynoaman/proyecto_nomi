package app.bean;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Job {
	private Long id;

	private String titulo;
	private Date fechapublicacion;
	private String descripcion;
	private String estudiosminimos;
	private String experienciaminima;
	private String requisitosminimos;
	private String tipojornada;
	private String tipocontrato;
	private int activo;

	private Ciudad ciudad;
	private List<Inscripcion> inscripciones = new ArrayList<Inscripcion>();

	@OneToMany(mappedBy = "job")
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
	

	@ManyToOne(fetch = FetchType.LAZY)
	public Ciudad getCiudad() {
		return ciudad;
	}

	public void setCiudad(Ciudad ciudad) {
		ciudad.setJob(this);
		this.ciudad = ciudad;
	}

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

	public Date getFechapublicacion() {
		return fechapublicacion;
	}

	public void setFechapublicacion(Date fechapublicacion) {
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

	public int getActivo() {
		return activo;
	}

	public void setActivo(int activo) {
		this.activo = activo;
	}

	public Job(String titulo, String fechapublicacion, String descripcion, String estudiosminimos,
			String experienciaminima, String requisitosminimos, String tipojornada, String tipocontrato, int activo) {
		this.titulo = titulo;
		this.fechapublicacion = getDate(fechapublicacion);
		this.descripcion = descripcion;
		this.estudiosminimos = estudiosminimos;
		this.experienciaminima = experienciaminima;
		this.requisitosminimos = requisitosminimos;
		this.tipojornada = tipojornada;
		this.tipocontrato = tipocontrato;
		this.activo = activo;
	}

	public Date getDate(String fecha) {
		Date fechaFinal = null;
		DateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		try {
			fechaFinal = format.parse(fecha);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return fechaFinal;
	}

	public Job() {

	}

}
