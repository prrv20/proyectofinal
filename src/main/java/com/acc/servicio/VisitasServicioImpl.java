package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.modelo.Visita;
import com.acc.modelo.VisitaRepositorio;

@Service
public class VisitasServicioImpl implements VisitaServicio{

	@Autowired
	VisitaRepositorio vs;
	
	@Override
	public Visita findVisitaByid(int id) {
		// TODO Auto-generated method stub
		return vs.findOne(id);
	}

	@Override
	public List<Visita> listarVisita() {
		// TODO Auto-generated method stub
		return(List<Visita>) vs.findAll();
	}

	@Override
	public void agregarVisita(Visita v) {
		// TODO Auto-generated method stub
		vs.save(v);
	}

	@Override
	public void eliminarVisita(int id) {
		// TODO Auto-generated method stub
		vs.delete(id);
	}

	@Override
	public void editarVisita(Visita v) {
		// TODO Auto-generated method stub
		vs.save(v);
	}

	@Override
	public List<Visita> findVisitaBycliente_id_cliente(int id) {
		// TODO Auto-generated method stub
		return vs.findVisitaBycliente_id_cliente(id);
	}

}
