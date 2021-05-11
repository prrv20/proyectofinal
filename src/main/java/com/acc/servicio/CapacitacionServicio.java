package com.acc.servicio;

import java.util.List;

import com.acc.modelo.Capacitacion;

public interface CapacitacionServicio {
	
	Capacitacion findCapacitacionByid(int id);
	List<Capacitacion> listarCapacitacion();
	void agregarCapacitacion(Capacitacion c);
	void eliminarCapacitacion(int id);
	void editarCapacitacion(Capacitacion c);
	
	
}
