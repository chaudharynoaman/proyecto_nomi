package app.model;

import java.util.List;

import org.hibernate.Transaction;
import org.mvc.Model;

import app.bean.Persona;
import app.bean.Usuarios;

public class UsuarioModel extends Model {
	public Usuarios getUsuario(String nombre, String password) {
		List<Usuarios> usuarios = ss.createQuery("from Usuarios where nombre='" + nombre + "' and password='" + password+"'").list();
		ss.close();
		if (usuarios.isEmpty()) {
			return null;
		} else {
			return usuarios.get(0);
		}
	}
}