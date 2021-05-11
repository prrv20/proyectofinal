package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.modelo.Empleado;
import com.acc.modelo.EmpleadoRepositorio;
@Service
public class EmpleadoServicioIpml implements EmpleadoServicio{

	
	@Autowired
	EmpleadoRepositorio er;
	
	
	@Override
	public Empleado findEmpleadoByid(int id) {
		// TODO Auto-generated method stub
		return er.findOne(id);
	}

	@Override
	public List<Empleado> listarEmpleado() {
		// TODO Auto-generated method stub
		return (List<Empleado>) er.findAll();
	}

	@Override
	public void agregarEmpleado(Empleado e) {
		// TODO Auto-generated method stub
		er.save(e);
	}

	@Override
	public void eliminarEmpleado(int id) {
		// TODO Auto-generated method stub
		er.delete(id);
	}

	@Override
	public void editarEmpleado(Empleado e) {
		// TODO Auto-generated method stub
		er.save(e);
	}

}
