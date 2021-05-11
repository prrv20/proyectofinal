package com.acc.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface ChequeoRepositorio extends CrudRepository<Chequeo, Integer> {
	
	@Query(value="Select * from chequeo Where visitas_id_visita = ?1", nativeQuery = true)
	List<Chequeo> findByvisitas_id_visita (int id);
}
