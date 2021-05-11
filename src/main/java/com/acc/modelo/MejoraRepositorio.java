package com.acc.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.acc.modelo.Mejora;
public interface MejoraRepositorio extends CrudRepository<Mejora, Integer>{
	
	@Query(value="Select * from Mejoras Where cliente_id_cliente = ?1", nativeQuery = true)
	List<Mejora> findMejoraBycliente_id_cliente(int id);

}
