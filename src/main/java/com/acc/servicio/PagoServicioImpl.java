package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.modelo.Pago;
import com.acc.modelo.PagoRepositorio;

@Service
public class PagoServicioImpl implements PagoServicio{

	@Autowired
	PagoRepositorio pr;
	
	
	@Override
	public Pago findPagoByid(int id) {
		// TODO Auto-generated method stub
		return pr.findOne(id);
	}

	@Override
	public List<Pago> listarPago() {
		// TODO Auto-generated method stub
		return (List<Pago>) pr.findAll();
	}

	@Override
	public void agregarPago(Pago p) {
		// TODO Auto-generated method stub
		pr.save(p);
	}

	@Override
	public void eliminarPago(int id) {
		// TODO Auto-generated method stub
		pr.delete(id);
	}

	@Override
	public void editarPago(Pago p) {
		// TODO Auto-generated method stub
		pr.save(p);
	}

	@Override
	public List<Pago> findPagoBycliente_id_cliente(int id) {
		// TODO Auto-generated method stub
		return pr.findPagoBycliente_id_cliente(id);
	}

}
