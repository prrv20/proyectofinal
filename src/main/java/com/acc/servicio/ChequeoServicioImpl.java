package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.modelo.Chequeo;
import com.acc.modelo.ChequeoRepositorio;
@Service
public class ChequeoServicioImpl implements ChequeoServicio{

	@Autowired
	ChequeoRepositorio cr;
	
	
	@Override
	public Chequeo findChequeoByid(int id) {
		// TODO Auto-generated method stub
		return cr.findOne(id);
	}

	@Override
	public List<Chequeo> listarChequeo() {
		// TODO Auto-generated method stub
		return (List<Chequeo>) cr.findAll();
	}

	@Override
	public void agregarChequeo(Chequeo c) {
		// TODO Auto-generated method stub
		cr.save(c);
	}

	@Override
	public void eliminarChequeo(int id) {
		// TODO Auto-generated method stub
		cr.delete(id);
	}

	@Override
	public void editarChequeo(Chequeo c) {
		// TODO Auto-generated method stub
		cr.save(c);
	}

}
