package com.acc.servicio;

import java.util.List;

import com.acc.modelo.Visita;

public interface VisitaServicio {
	
	Visita findVisitaByid(int id);
	List<Visita> listarVisita();
	void agregarVisita(Visita v);
	void eliminarVisita(int id);
	void editarVisita(Visita v);
	List<Visita> findVisitaBycliente_id_cliente(int id);

}
