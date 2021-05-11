package com.acc.servicio;
 
import java.util.List;    

import com.acc.modelo.Cliente;    

public interface ClienteServicio {
	
	Cliente findClienteByid(int id);
	List<Cliente> listarCliente();
	void agregarCliente(Cliente c);
	void eliminarCliente(int id);
	void editarCliente(Cliente c);
}
