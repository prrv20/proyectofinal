package com.acc.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;



@Entity
@Table(name="Empleado")
public class Empleado {

	@Id
	@SequenceGenerator(name = "EmpIdGenerator", sequenceName = "EMPLEADO_SEQ" , initialValue = 1, allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "EmpIdGenerator")
	@Column(name="id_empleado")
	private int id_empleado;
	private String nombre;
	private String especialidad;
	
	
	public Empleado() {
		// TODO Auto-generated constructor stub
	}
	
	public Empleado(String nombre, String especialidad) {
		this.nombre = nombre;
		this.especialidad = especialidad;
	}

	public int getId_empleado() {
		return id_empleado;
	}

	public void setId_empleado(int id_empleado) {
		this.id_empleado = id_empleado;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}

	@Override
	public String toString() {
		return "Empleado [id_empleado=" + id_empleado + ", nombre=" + nombre + ", especialidad="
				+ especialidad + "]";
	}
	
}
