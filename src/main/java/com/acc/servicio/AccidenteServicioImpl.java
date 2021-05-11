package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.modelo.AccidenteRepositorio;
import com.acc.modelo.Accidente;

@Service
public class AccidenteServicioImpl implements AccidenteServicio {

	@Autowired
	AccidenteRepositorio ar;

	@Override
	public Accidente findAccidenteByid(int id) {
		// TODO Auto-generated method stub
		return ar.findOne(id);
	}

	@Override
	public List<Accidente> listarAccidente() {
		// TODO Auto-generated method stub
		return (List<Accidente>) ar.findAll();
	}

	@Override
	public void agregarAccidente(Accidente a) {
		// TODO Auto-generated method stub
		 ar.save(a);
	}

	@Override
	public void eliminarAccidente(int id) {
		// TODO Auto-generated method stub
		ar.delete(id);
	}

	@Override
	public void editarAccidente(Accidente a) {
		// TODO Auto-generated method stub
		ar.save(a);
	}	
	@Override
	public void agregarAccidenteUsuario(Accidente a) {
		// TODO Auto-generated method stub
		 ar.save(a);
	}
	
	@Override
	public List<Accidente> findAccidenteBycliente_id_cliente(int id) {
		// TODO Auto-generated method stub
		return (List<Accidente>) ar.findAccidenteBycliente_id_cliente(id);
	}
}
