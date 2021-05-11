package com.acc.controladores;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import  com.acc.modelo.Capacitacion;
import com.acc.modelo.Visita;
import  com.acc.servicio.CapacitacionServicio;
import com.acc.servicio.VisitaServicio;

@Controller
public class CapacitacionControlador {


	@Autowired
	CapacitacionServicio cas;
	
	@Autowired
	VisitaServicio vs;
	
	static Logger log = Logger.getLogger(CapacitacionControlador.class.getName());
	
    @RequestMapping("/ListarCapacitacion")    
    public String viewcap(Model m){
        List<Capacitacion> list=cas.listarCapacitacion();
        m.addAttribute("listarcapacitacion",list); 
        return "ListarCapacitacion";
    }
    
    @RequestMapping("/AgregarCapacitacion")    
    public String showform(Model m){
    	List<Visita> listavisitas= vs.listarVisita();
		m.addAttribute("listavisitas",listavisitas);
        m.addAttribute("command", new Capacitacion());
        log.info("Ingreso a formulario de creación de Capacitación");
        return "AgregarCapacitacion";
    } 

    @RequestMapping(value="/AgregaCapacitacion",method = RequestMethod.POST)    
    public String save(@ModelAttribute("cap") Capacitacion cap){    
    	cas.agregarCapacitacion(cap);
        log.warn("Capacitación creada: " + cap.toString());
        return "redirect:/ListarCapacitacion";
    }
    
    @RequestMapping(value="/EditarCapacitacion/{id}")    
    public String edit(@PathVariable int id, Model m){  
    	List<Visita> listavisitas= vs.listarVisita();
		m.addAttribute("listavisitas",listavisitas);
    	Capacitacion cap=cas.findCapacitacionByid(id);
        m.addAttribute("command",cap);
        log.info("Ingreso a edición de Capacitación");
        return "EditarCapacitacion";
    }

    @RequestMapping(value="/GuardarEditarCapacitacion",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("cap") Capacitacion cap){
    	cas.editarCapacitacion(cap);
        log.warn("Procesando edición de Capacitacion");
        return "redirect:/ListarCapacitacion";
    }

    @RequestMapping(value="/EliminarCapacitacion/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
    	cas.eliminarCapacitacion(id);;
        log.warn("Capacitacion eliminada");
        return "redirect:/ListarCapacitacion";
    }
	
	
}
