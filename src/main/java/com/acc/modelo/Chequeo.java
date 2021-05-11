package com.acc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="chequeo")
public class Chequeo {

	@Id
	@SequenceGenerator(name = "COL_GEN", sequenceName = "CHEQUEO_SEQ", initialValue = 1, allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "COL_GEN")
	@Column(name="id_chequeo")
	private int id_chequeo;
	private String detalle;
	private String estado;
	private int visitas_id_visita;
	
	public Chequeo() {
		super();
	}
	
	public Chequeo(int id_chequeo, String detalle, String estado, int visitas_id_visita) {
		this.id_chequeo = id_chequeo;
		this.detalle = detalle;
		this.estado = estado;
		this.visitas_id_visita = visitas_id_visita;
	}

	public int getId_chequeo() {
		return id_chequeo;
	}

	public void setId_chequeo(int id_chequeo) {
		this.id_chequeo = id_chequeo;
	}

	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public int getVisitas_id_visita() {
		return visitas_id_visita;
	}

	public void setVisitas_id_visita(int visitas_id_visita) {
		this.visitas_id_visita = visitas_id_visita;
	}

	@Override
	public String toString() {
		return "Chequeo [id_chequeo=" + id_chequeo + ", detalle=" + detalle + ", estado=" + estado
				+ ", visitas_id_visita=" + visitas_id_visita + "]";
	}
	
}
	