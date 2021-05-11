package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acc.modelo.Tasa;
import com.acc.modelo.TasaRepositorio;

@Service
public class TasaServicioImpl implements TasaServicio{

	@Autowired
	TasaRepositorio tasa;
	
	@Override
	public List<Tasa> listaTasa() {
		return (List<Tasa>) tasa.findAll(); 
		
	}

	
	
    
	}
	