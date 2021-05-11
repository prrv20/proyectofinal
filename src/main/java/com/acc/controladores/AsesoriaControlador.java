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

import com.acc.modelo.Asesoria;
import com.acc.modelo.Visita;
import com.acc.servicio.AsesoriaServicio;
import com.acc.servicio.VisitaServicio;

@Controller
public class AsesoriaControlador {
	@Autowired
	AsesoriaServicio as;
	@Autowired
	VisitaServicio vs;

	static Logger log = Logger.getLogger(AsesoriaControlador.class.getName());

	@RequestMapping("/AgregarAsesoria")    
    public String showform(Model m){
		List<Visita> listavisitas= vs.listarVisita();
		m.addAttribute("listavisitas",listavisitas);
        m.addAttribute("command", new Asesoria());
        log.info("Ingreso a formulario de creación de Asesorias");
        return "AgregarAsesoria";
    } 

    @RequestMapping(value="/Guardarasesoria",method = RequestMethod.POST)    
    public String save(@ModelAttribute("asesoria") Asesoria asesoria){
    	as.agregarAccidente(asesoria);
        log.info("Asesoria creada: " + asesoria.toString());
        return "redirect:/AgregarAsesoria";
    }
    
    @RequestMapping("/ListadoAsesoria")    
    public String verasesoria(Model m){    
        List<Asesoria> list=as.listarAsesoria();
        m.addAttribute("list",list);  
        log.error("Listado de Asesorias");
        return "ListadoAsesoria";
    }
    @RequestMapping(value="/EditarAsesoria/{id}")
	public String edit(@PathVariable int id, Model m) {
    	Asesoria ase = as.findAsesoriaByid(id);
    	List<Visita> listavisitas= vs.listarVisita();
		m.addAttribute("listavisitas",listavisitas);
    	m.addAttribute("command",ase);
		log.info("Ingreso a edición de Asesorias");
		return "EditarAsesoria";
	}
	
	@RequestMapping(value = "/GuardarEditarAsesoria",method = RequestMethod.POST)
	public String editsave(@ModelAttribute("ase") Asesoria ase) {
		as.editarAsesoria(ase);
		
		return "redirect:/ListadoAsesoria";
	}
	
	@RequestMapping(value="/EliminarAsesoria/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		as.eliminarAsesoria(id);
		log.warn("Asesoria Eliminada");
		return "redirect:/ListadoAsesoria";
	}
}
