package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.modelo.Cliente;
import com.acc.modelo.ClienteRepositorio;

@Service
public class ClienteServicioImpl implements ClienteServicio {

	@Autowired
	ClienteRepositorio cr;
	
	@Override
	public Cliente findClienteByid(int id) {
		return cr.findOne(id);
	}

	@Override
	public List<Cliente> listarCliente() {
		return (List<Cliente>) cr.findAll();
	}

	@Override
	public void agregarCliente(Cliente c) {
		cr.save(c);
	}

	@Override
	public void eliminarCliente(int id) {
		cr.delete(id);
	}

	@Override
	public void editarCliente(Cliente c) {
		cr.save(c);
	}

}
