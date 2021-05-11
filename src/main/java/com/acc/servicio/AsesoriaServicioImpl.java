package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.modelo.Asesoria;
import com.acc.modelo.AsesoriaRepositorio;
@Service
public class AsesoriaServicioImpl implements AsesoriaServicio{

	@Autowired
	AsesoriaRepositorio ar;
	
	@Override
	public Asesoria findAsesoriaByid(int id) {
		// TODO Auto-generated method stub
		return ar.findOne(id);
	}

	@Override
	public List<Asesoria> listarAsesoria() {
		// TODO Auto-generated method stub
		return (List<Asesoria>) ar.findAll();
	}

	@Override
	public void agregarAccidente(Asesoria a) {
		// TODO Auto-generated method stub
		ar.save(a);
	}

	@Override
	public void eliminarAsesoria(int id) {
		// TODO Auto-generated method stub
		ar.delete(id);
	}

	@Override
	public void editarAsesoria(Asesoria a) {
		// TODO Auto-generated method stub
		ar.save(a);
	}

}
