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

import com.acc.modelo.Chequeo;
import com.acc.modelo.Visita;
import com.acc.servicio.CheckListServicio;
import com.acc.servicio.VisitaServicio;

@Controller
public class CheckListControlador {
	
	@Autowired
	CheckListServicio cs;
	
	@Autowired
	VisitaServicio vs;
	
	static Logger log = Logger.getLogger(CheckListControlador.class.getName());

	@RequestMapping("/CrearCheck")
	public String showform(Model m) {
		List<Visita> listavisitas= vs.listarVisita();
		m.addAttribute("listavisitas",listavisitas);
		m.addAttribute("command", new Chequeo());
		log.info("Ingreso a formulario de agregar Chequeo");
		return "CrearCheck";
	}
	
	@RequestMapping(value="/AgregarCheck",method = RequestMethod.POST)    
    public String save(@ModelAttribute("chk") Chequeo chk){    
    	cs.agregarChequeo(chk);
        log.warn("Chequeo creado: " + chk.toString());
        return "redirect:/ListadoChequeos";
    }
	
	@RequestMapping("/ListadoChequeos")    
    public String viewchk(Model m){    
        List<Chequeo> list=cs.listarChequeo();
        m.addAttribute("listachk",list);
        log.info("Listado de Chequeos");
        return "ListadoCheck";
    }
	
	@RequestMapping("/ListadoChequeos/{id}")    
    public String verpago(@PathVariable int id, Model m){    
        List<Chequeo> list=cs.listarChequeos(id);
        m.addAttribute("listachk",list);  
        log.error("Listado de Chequeos");
        return "ListadoCheck";
	}
	
	@RequestMapping(value="/EditarCheck/{id}")    
    public String edit(@PathVariable int id, Model m){    
        Chequeo chk=cs.findChequeoByid(id);
        List<Visita> listavisitas= vs.listarVisita();
		m.addAttribute("listavisitas",listavisitas);
        m.addAttribute("command",chk);
        log.info("Ingreso a edición de chequeos.");
        return "EditarCheck";
    }
	
	@RequestMapping(value="/GuardarEditarCheck",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("chk") Chequeo chk){
    	cs.editarChequeo(chk);
        log.warn("Procesando edición de chequeos");
        return "redirect:/ListadoChequeos";
    }
	
	@RequestMapping(value="/EliminarCheck/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
    	cs.eliminarChequeo(id);
        log.warn("Chequeo eliminado");
        return "redirect:/ListadoChequeos";
    }
}
