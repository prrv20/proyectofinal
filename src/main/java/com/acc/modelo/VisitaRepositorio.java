package com.acc.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface VisitaRepositorio extends CrudRepository<Visita, Integer>{
	
	@Query(value="Select * from Visitas Where cliente_id_cliente = ?1", nativeQuery = true)
	List<Visita> findVisitaBycliente_id_cliente(int id);

}
