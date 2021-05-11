package com.acc.modelo;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Immutable;


@Entity
@Immutable
@Table(name = "Tasa")
public class Tasa{

	@Id
	private int cliente_id_cliente = 0;
	private int cantacc = 0;
	private int cantidadtrabajadores = 0;
	private float tasa = 0;
	
	public Tasa(int cliente_id_cliente, int cantacc, int cantidadtrabajadores, float tasa) {
		this.cliente_id_cliente = cliente_id_cliente;
		this.cantacc = cantacc;
		this.cantidadtrabajadores = cantidadtrabajadores;
		this.tasa = tasa;
	}
	public Tasa() {
		
	}
	public int getCliente_id_cliente() {
		return cliente_id_cliente;
	}
	public void setCliente_id_cliente(int cliente_id_cliente) {
		this.cliente_id_cliente = cliente_id_cliente;
	}
	public int getCantacc() {
		return cantacc;
	}
	public void setCantacc(int cantacc) {
		this.cantacc = cantacc;
	}
	public int getCantidadtrabajadores() {
		return cantidadtrabajadores;
	}
	public void setCantidadtrabajadores(int cantidadtrabajadores) {
		this.cantidadtrabajadores = cantidadtrabajadores;
	}
	public float getTasa() {
		return tasa;
	}
	public void setTasa(float tasa) {
		this.tasa = tasa;
	}
	@Override
	public String toString() {
		return "Tasa [cliente_id_cliente=" + cliente_id_cliente + ", cantacc=" + cantacc + ", cantidadtrabajadores="
				+ cantidadtrabajadores + ", tasa=" + tasa + "]";
	}
	
	

	
	

}
	
	

	