package com.acc.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.acc.modelo.Cliente;
import com.acc.modelo.Empleado;
import com.acc.servicio.ClienteServicio;
import com.acc.servicio.EmpleadoServicio;

@RestController
public class RestControlador {

	@Autowired
	ClienteServicio cs;
	
	@RequestMapping(value = "/ListadoClientesRest", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Cliente> getClientes() {
		List<Cliente> listaclientes = cs.listarCliente();
		return listaclientes;
	}

	@RequestMapping(value = "/AgregarClienteRest", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addCliente(@RequestBody Cliente cliente) {
		cs.agregarCliente(cliente);
	}

	@RequestMapping(value = "/EditarClienteRest", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateCliente(@RequestBody Cliente cliente) {
		cs.editarCliente(cliente);
	}

	@RequestMapping(value = "/ListarClienteRest/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Cliente getClientePorId(@PathVariable int id) {
		return cs.findClienteByid(id);
	}

	@RequestMapping(value = "/EliminarClienteRest/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteCliente(@PathVariable("id") int id) {
		cs.eliminarCliente(id);
	}
	
	@Autowired 
	EmpleadoServicio emps;

	@RequestMapping(value = "/ListadoEmpleadoRest", method = RequestMethod.GET, headers = "Accept=application/json")
	public List<Empleado> getEmpleados() {
		List<Empleado> listarempleado = emps.listarEmpleado();
		return listarempleado;
	}
	
	@RequestMapping(value = "/AgregarEmpleadoRest", method = RequestMethod.POST, headers = "Accept=application/json")
	public void addEmpleados(@RequestBody Empleado emp) {
		emps.agregarEmpleado(emp);
	}

	@RequestMapping(value = "/EditarEmpleadoRest", method = RequestMethod.PUT, headers = "Accept=application/json")
	public void updateEmpleado(@RequestBody Empleado emp) {
		emps.editarEmpleado(emp);
	}

	@RequestMapping(value = "/ListarEmpleadoRest/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Empleado getEmpleadoPorId(@PathVariable int id) {
		return emps.findEmpleadoByid(id);
	}

	@RequestMapping(value = "/EliminarEmpleadoRest/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
	public void deleteEmpleado(@PathVariable("id") int id) {
		emps.eliminarEmpleado(id);
	}
}
