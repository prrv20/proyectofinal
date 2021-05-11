package com.acc.servicio;

import java.util.List;
import com.acc.modelo.Mejora;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.acc.modelo.MejoraRepositorio;
@Service
public class MejoraServicioImpl implements MejoraServicio{

	@Autowired
	MejoraRepositorio mr;
	
	
	@Override
	public Mejora findMejoraByid(int id) {
		// TODO Auto-generated method stub
		return mr.findOne(id);
	}

	@Override
	public List<Mejora> listarMejora() {
		// TODO Auto-generated method stub
		return (List<Mejora>) mr.findAll();
	}

	@Override
	public void agregarMejora(Mejora m) {
		// TODO Auto-generated method stub
		mr.save(m);
	}

	@Override
	public void eliminarMejora(int id) {
		// TODO Auto-generated method stub
		mr.delete(id);
	}

	@Override
	public void editarMejora(Mejora m) {
		// TODO Auto-generated method stub
		mr.save(m);
	}

	@Override
	public List<Mejora> findMejoraBycliente_id_cliente(int id) {
		// TODO Auto-generated method stub
		return (List<Mejora>) mr.findMejoraBycliente_id_cliente(id);
	}

}
