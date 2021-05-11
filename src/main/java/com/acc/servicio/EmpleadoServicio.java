package com.acc.servicio;

import java.util.List;

import com.acc.modelo.Empleado;

public interface EmpleadoServicio {
	
	Empleado findEmpleadoByid(int id);
	List<Empleado> listarEmpleado();
	void agregarEmpleado(Empleado e);
	void eliminarEmpleado(int id);
	void editarEmpleado(Empleado e);

}
