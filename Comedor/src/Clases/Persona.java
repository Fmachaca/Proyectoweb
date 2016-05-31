package Clases;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Persona {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String nombre;
	
	@Persistent
	private String apellido;
	
	@Persistent
	private String CUI;
	
	@Persistent
	private String email;
	
	@Persistent
	private String escuela;
	
	

	public Persona(String nombre, String apellido,String email, String cUI,
			String escuela) {
		super();
	
		this.nombre = nombre;
		this.apellido = apellido;
		this.email=email;
		CUI = cUI;
		this.escuela = escuela;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public String getApellido() {
		return apellido;
	}



	public void setApellido(String apellido) {
		this.apellido = apellido;
	}



	public String getCUI() {
		return CUI;
	}



	public void setCUI(String cUI) {
		CUI = cUI;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getEscuela() {
		return escuela;
	}



	public void setEscuela(String escuela) {
		this.escuela = escuela;
	}
}