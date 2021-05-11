package com.acc.controladores;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.acc.modelo.Visita;
import com.acc.servicio.VisitaServicio;

@Controller
public class ActividadControlador {

	@Autowired
	VisitaServicio actdao;
	static Logger log = Logger.getLogger(ActividadControlador.class.getName());
	
	@RequestMapping(value="/VerActividades/{id}",method = RequestMethod.GET)        
      public String veract(@PathVariable int id, Model m){    
      List<Visita> list=actdao.findVisitaBycliente_id_cliente(id);
      m.addAttribute("list",list);  
      log.error("Listado de Actividades");
      return "VerActividades";
    }
}