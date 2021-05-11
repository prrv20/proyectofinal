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

import com.acc.modelo.Cliente;
import com.acc.servicio.ClienteServicio;
import com.acc.servicio.MejoraServicio;
import com.acc.modelo.Mejora;
@Controller
public class MejoraControlador {
	@Autowired
	MejoraServicio mejdao;
	
	@Autowired
	ClienteServicio clies;
	
	static Logger log = Logger.getLogger(MejoraControlador.class.getName());
	
    @RequestMapping("/ListadoMejoras")    
    public String vermejoras(Model m){
        List<Mejora> list=mejdao.listarMejora();
        m.addAttribute("listamejora",list);  
        return "VerMejoras";
    }
    
    @RequestMapping("/FormularioMejora")    
    public String showform(Model m){
    	List<Cliente> list2=clies.listarCliente();
   	    m.addAttribute("listaclientes",list2); 
        m.addAttribute("command", new Mejora());
        log.info("Ingreso a formulario de creación de Mejora");
        return "FormularioMejora";
    } 

    @RequestMapping(value="/AgregarMejora",method = RequestMethod.POST)    
    public String save(@ModelAttribute("mej") Mejora mej){    
    	mejdao.agregarMejora(mej);
        log.warn("Mejora creada: " + mej.toString());
        return "redirect:/ListadoMejoras";
    }
    
    @RequestMapping(value="/EditarMejora/{id}")    
    public String edit(@PathVariable int id, Model m){    
    	Mejora mej=mejdao.findMejoraByid(id);
    	  List<Cliente> list2=clies.listarCliente();
	        m.addAttribute("listaclientes",list2);  
        m.addAttribute("command",mej);
        log.info("Ingreso a edición de Empleado");
        return "EditarMejora";
    }
    
    @RequestMapping(value="/GuardarEditarMejora",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("mej") Mejora mej){
    	mejdao.editarMejora(mej);
        log.warn("Procesando edición de Mejora");
        return "redirect:/ListadoMejoras";
    }
    
    
    @RequestMapping(value="/EliminarMejora/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
    	mejdao.eliminarMejora(id);
        log.warn("Mejora eliminado");
        return "redirect:/ListadoMejoras";
    }
}
