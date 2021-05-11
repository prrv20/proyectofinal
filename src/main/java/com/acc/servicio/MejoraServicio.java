package com.acc.servicio;

import java.util.List;

import com.acc.modelo.Mejora;
import com.acc.modelo.Mejora;
public interface MejoraServicio {
	
	Mejora findMejoraByid(int id);
	List<Mejora> listarMejora();
	void agregarMejora(Mejora e);
	void eliminarMejora(int id);
	void editarMejora(Mejora e);
	List<Mejora> findMejoraBycliente_id_cliente(int id);

}
