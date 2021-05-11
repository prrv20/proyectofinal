package com.acc.servicio;

import java.util.List;

import com.acc.modelo.Chequeo;

public interface CheckListServicio {

	Chequeo findChequeoByid(int id);
	List<Chequeo> listarChequeo();
	List<Chequeo> listarChequeos(int id);
	void agregarChequeo(Chequeo c);
	void eliminarChequeo(int id);
	void editarChequeo(Chequeo c);
	
}
