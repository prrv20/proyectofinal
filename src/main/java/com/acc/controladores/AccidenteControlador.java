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

import com.acc.modelo.Accidente;
import com.acc.modelo.Cliente;
import com.acc.servicio.AccidenteServicio;
import com.acc.servicio.ClienteServicio;

@Controller
public class AccidenteControlador {

	@Autowired
	AccidenteServicio accdao;
	@Autowired
	ClienteServicio cliedao;

	
	static Logger log = Logger.getLogger(AccidenteControlador.class.getName());
	
	  @RequestMapping("/FormularioAccidente")    
	    public String showform(Model m){
		   List<Cliente> list2=cliedao.listarCliente();
	        m.addAttribute("listaclientes",list2);  
	        log.info("Listado de clientes");
	        m.addAttribute("command", new Accidente());
	        log.info("Ingreso a formulario de creación de accidentes");
	        return "FormularioAccidente";
	    } 
	  
	   @RequestMapping("/FormularioAccidenteUsuario")    
	    public String showformU(Model m){
	        m.addAttribute("command", new Accidente());
	        log.info("Ingreso a formulario de creación de accidentes");
	        return "FormularioAccidenteUsuario";
	    } 
	   
	 @RequestMapping(value="/ProcesarAccidente",method = RequestMethod.POST)    
	    public String save(@ModelAttribute("a") Accidente a){    
	        accdao.agregarAccidente(a);
	        log.info("Accidente agregado: " + a.toString());
	        return "redirect:/MostrarAccidente";
	    }
	 @RequestMapping(value="/ProcesarAccidenteU",method = RequestMethod.POST)    
	    public String saveu(@ModelAttribute("a") Accidente a){    
	        accdao.agregarAccidenteUsuario(a);
	        log.info("Accidente agregado: " + a.toString());
	        return "redirect:/index.jsp";
	    }
	
	  @RequestMapping("/MostrarAccidente")    
	    public String viewacc(Model m){    
	        List<Accidente> list=accdao.listarAccidente();
	        m.addAttribute("listadoaccidente",list);  
	        log.info("Listado de Accidentes");
	        return "MostrarAccidente";
	    }
	    
	  @RequestMapping(value="/EditarAccidente/{id}")    
	    public String edit(@PathVariable int id, Model m){    
	        Accidente a=accdao.findAccidenteByid(id);
	        m.addAttribute("command",a);
	        log.info("Ingreso a edición de accidente");
	        return "EditarAccidente";
	    }
	  
	  @RequestMapping(value="/GuardarEditarAccidente",method = RequestMethod.POST)    
	    public String editsave(@ModelAttribute("a") Accidente a){
	    	accdao.editarAccidente(a);
	        log.warn("Procesando edición de accidente");
	        return "redirect:/MostrarAccidente";
	    }
	  @RequestMapping(value="/EliminarAccidente/{id}",method = RequestMethod.GET)    
	    public String delete(@PathVariable int id){    
	    	accdao.eliminarAccidente(id);
	        log.warn("Accidente eliminado");
	        return "redirect:/MostrarAccidente";
	    }
}
