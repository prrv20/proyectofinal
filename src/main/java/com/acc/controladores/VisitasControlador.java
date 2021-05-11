package com.acc.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.apache.log4j.Logger;

import com.acc.modelo.Cliente;
import com.acc.modelo.Empleado;
import com.acc.modelo.Visita;
import com.acc.servicio.ClienteServicio;
import com.acc.servicio.EmpleadoServicio;
import com.acc.servicio.VisitaServicio;   

@Controller
public class VisitasControlador {

	@Autowired
	ClienteServicio cliedao;
	
	@Autowired
	VisitaServicio vis;
	
	@Autowired
	EmpleadoServicio emps;

	static Logger log = Logger.getLogger(VisitasControlador.class.getName());

    @RequestMapping("/CrearVisita")    
    public String showform(Model m){
    	List<Cliente> list2=cliedao.listarCliente();
        m.addAttribute("listaclientes",list2);  
        List<Empleado> list3=emps.listarEmpleado();
        m.addAttribute("listaempleados",list3);  
        m.addAttribute("command", new Visita());
        log.info("Ingreso a formulario de creación de visitas");
        return "CrearVisita";
    } 

    @RequestMapping(value="/AgregarVisita",method = RequestMethod.POST)    
    public String save(@ModelAttribute("vie") Visita vie){    
    	vis.agregarVisita(vie);
        log.warn("Visita creado: " + vie.toString());
        return "redirect:/ListadoVisitas";
    }
    
    @RequestMapping("/ListadoVisitas")    
    public String viewcli(Model m){    
        List<Visita> list=vis.listarVisita();
        m.addAttribute("listarvisitas",list);  
        log.info("Listado de visitas");
        return "ListadoVisitas";
    }
    
    @RequestMapping(value="/EditarVisita/{id}")    
    public String edit(@PathVariable int id, Model m){    
        Visita vie=vis.findVisitaByid(id);
        List<Cliente> list2=cliedao.listarCliente();
        m.addAttribute("listaclientes",list2);  
        List<Empleado> list3=emps.listarEmpleado();
        m.addAttribute("listaempleados",list3);
        m.addAttribute("command",vie);
        log.info("Ingreso a edición de visitas");
        return "EditarVisitas";
    }

    @RequestMapping(value="/GuardarEditarVisita",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("cli") Visita vie){
    	vis.editarVisita(vie);
        log.warn("Procesando edición de visita");
        return "redirect:/ListadoVisitas";
    }

    @RequestMapping(value="/EliminarVisita/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
    	vis.eliminarVisita(id);
        log.warn("Visita eliminada");
        return "redirect:/ListadoVisitas";
    }

}
