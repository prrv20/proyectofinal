package com.acc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Asesorias")
public class Asesoria {
	@Id
	@SequenceGenerator(name = "AsesoriaIdGenerator", sequenceName = "ASESORIAS_SEQ", initialValue = 1, allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "AsesoriaIdGenerator")
	@Column(name="id_asesoria")
	private int id_asesoria;
	private String detalle;
	private String gestion;
	private String propuestas;
	private String fecha;
	private String especial;
	private int visitas_id_visita;
	
	public Asesoria() {
		
	}
	
	public Asesoria(String detalle, String gestion, String propuestas, String fecha, String especial,
			int visitas_id_visita) {
		this.detalle = detalle;
		this.gestion = gestion;
		this.propuestas = propuestas;
		this.fecha = fecha;
		this.especial = especial;
		this.visitas_id_visita = visitas_id_visita;
	}

	public int getId_asesoria() {
		return id_asesoria;
	}

	public void setId_asesoria(int id_asesoria) {
		this.id_asesoria = id_asesoria;
	}

	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}

	public String getGestion() {
		return gestion;
	}

	public void setGestion(String gestion) {
		this.gestion = gestion;
	}

	public String getPropuestas() {
		return propuestas;
	}

	public void setPropuestas(String propuestas) {
		this.propuestas = propuestas;
	}

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getEspecial() {
		return especial;
	}

	public void setEspecial(String especial) {
		this.especial = especial;
	}

	public int getVisitas_id_visita() {
		return visitas_id_visita;
	}

	public void setVisitas_id_visita(int visitas_id_visita) {
		this.visitas_id_visita = visitas_id_visita;
	}

	@Override
	public String toString() {
		return "Asesoria [id_asesoria=" + id_asesoria + ", detalle=" + detalle + ", gestion=" + gestion
				+ ", propuestas=" + propuestas + ", fecha=" + fecha + ", especial=" + especial + ", visitas_id_visita="
				+ visitas_id_visita + "]";
	}
	
	
}
