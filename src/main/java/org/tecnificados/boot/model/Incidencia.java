
package org.tecnificados.boot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * @author Juan Carlos Ballesteros (tecnificados.com)
 *
 */

@Entity
public class Incidencia {

	@Id
	private Long id;

	@Column
	private String titulo;

	@Column
	private String descripcion;

	@Column
	private Integer estado;

	@Column
	private String autor;

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

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Integer getEstado() {
		return estado;
	}

	public void setEstado(Integer estado) {
		this.estado = estado;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public Incidencia() {
		super();
		this.id = Long.valueOf(-1);
		this.titulo = "";
		this.descripcion = "";
		this.estado = 0;
		this.autor = "";
	}
	
	

}
