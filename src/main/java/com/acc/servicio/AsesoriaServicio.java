package com.acc.servicio;

import java.util.List;

import com.acc.modelo.Asesoria;

public interface AsesoriaServicio {
	
	Asesoria findAsesoriaByid(int id);
	List<Asesoria> listarAsesoria();
	void agregarAccidente(Asesoria a);
	void eliminarAsesoria(int id);
	void editarAsesoria(Asesoria a);

}
