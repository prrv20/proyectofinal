package com.acc.modelo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface AccidenteRepositorio extends CrudRepository<Accidente, Integer> {
	@Query(value="Select * from Accidentes Where cliente_id_cliente = ?1", nativeQuery = true)
	List<Accidente> findAccidenteBycliente_id_cliente(int id);

}
