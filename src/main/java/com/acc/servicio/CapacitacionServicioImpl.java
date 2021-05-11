package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.modelo.Capacitacion;
import com.acc.modelo.CapacitacionRepositorio;
@Service
public class CapacitacionServicioImpl implements CapacitacionServicio{

	@Autowired
	CapacitacionRepositorio cr;
	
	@Override
	public Capacitacion findCapacitacionByid(int id) {
		// TODO Auto-generated method stub
		return cr.findOne(id);
	}

	@Override
	public List<Capacitacion> listarCapacitacion() {
		// TODO Auto-generated method stub
		return (List<Capacitacion>) cr.findAll();
	}

	@Override
	public void agregarCapacitacion(Capacitacion c) {
		// TODO Auto-generated method stub
		cr.save(c);
	}

	@Override
	public void eliminarCapacitacion(int id) {
		// TODO Auto-generated method stub
		cr.delete(id);
	}

	@Override
	public void editarCapacitacion(Capacitacion c) {
		// TODO Auto-generated method stub
		cr.save(c);
	}

}
