package com.acc.servicio;

import java.util.List;

import com.acc.modelo.Accidente;

public interface AccidenteServicio {
	
	Accidente findAccidenteByid(int id);
	List<Accidente> listarAccidente();
	void agregarAccidente(Accidente a);
	void eliminarAccidente(int id);
	void editarAccidente(Accidente a);
	void agregarAccidenteUsuario(Accidente a);
	List<Accidente> findAccidenteBycliente_id_cliente(int id);
}
