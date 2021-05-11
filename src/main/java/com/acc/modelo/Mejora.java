package com.acc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;



@Entity
@Table(name="Mejoras")
public class Mejora {

	@Id
	@SequenceGenerator(name = "MejIdGenerator", sequenceName = "MEJORAS_SEQ", initialValue = 1, allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "MejIdGenerator")
	@Column(name="id_mejora")
	private int id_mejora;
	private String fecha;
	private String motivo;
	private String actividades;
	private String estado;
	private int cliente_id_cliente;
	
	
	public Mejora() {

	}


	public Mejora(int id_mejora, String fecha, String motivo, String actividades, String estado,
			int cliente_id_cliente) {
		super();
		this.id_mejora = id_mejora;
		this.fecha = fecha;
		this.motivo = motivo;
		this.actividades = actividades;
		this.estado = estado;
		this.cliente_id_cliente = cliente_id_cliente;
	}


	public int getId_mejora() {
		return id_mejora;
	}


	public void setId_mejora(int id_mejora) {
		this.id_mejora = id_mejora;
	}


	public String getFecha() {
		return fecha;
	}


	public void setFecha(String fecha) {
		this.fecha = fecha;
	}


	public String getMotivo() {
		return motivo;
	}


	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}


	public String getActividades() {
		return actividades;
	}


	public void setActividades(String actividades) {
		this.actividades = actividades;
	}


	public String getEstado() {
		return estado;
	}


	public void setEstado(String estado) {
		this.estado = estado;
	}


	public int getCliente_id_cliente() {
		return cliente_id_cliente;
	}


	public void setCliente_id_cliente(int cliente_id_cliente) {
		this.cliente_id_cliente = cliente_id_cliente;
	}


	@Override
	public String toString() {
		return "Mejora [id_mejora=" + id_mejora + ", fecha=" + fecha + ", motivo=" + motivo + ", actividades="
				+ actividades + ", estado=" + estado + ", cliente_id_cliente=" + cliente_id_cliente + "]";
	}
	
	
}
