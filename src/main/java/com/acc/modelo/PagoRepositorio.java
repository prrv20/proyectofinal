package com.acc.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface PagoRepositorio extends CrudRepository<Pago, Integer>{
	
	@Query(value="Select * from Pagos Where cliente_id_cliente = ?1", nativeQuery = true)
	List<Pago> findPagoBycliente_id_cliente(int id);

}
