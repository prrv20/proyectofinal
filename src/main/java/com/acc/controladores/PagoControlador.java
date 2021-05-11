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
import com.acc.modelo.Empleado;
import com.acc.modelo.Pago;
import com.acc.servicio.ClienteServicio;
import com.acc.servicio.PagoServicio;

@Controller
public class PagoControlador {

    @Autowired
    PagoServicio daopao;
    @Autowired
	ClienteServicio cliedao;
    
    static Logger log = Logger.getLogger(PagoControlador.class.getName());

    @RequestMapping("/AgregarPago")    
    public String showform(Model m){
    	List<Cliente> list2=cliedao.listarCliente();
        m.addAttribute("listaclientes",list2);  
        log.info("Listado de clientes");
        m.addAttribute("command", new Pago());
        log.info("Ingreso a formulario de creación de pagos");
        return "AgregarPago";
    } 

    @RequestMapping(value="/savepago",method = RequestMethod.POST)    
    public String save(@ModelAttribute("pago") Pago pago){
        daopao.agregarPago(pago);
        log.info("Pago creado: " + pago.toString());
        return "redirect:/ListadoPago";
    }
    
    @RequestMapping("/ListadoPago")    
    public String verpago(Model m){    
        List<Pago> list=daopao.listarPago();
        m.addAttribute("list",list);  
        log.error("Listado de Pagos");
        return "ListadoPago";
    }
    
    @RequestMapping(value="/EditarPago/{id}")    
    public String edit(@PathVariable int id, Model m){    
    	Pago pag=daopao.findPagoByid(id);
    	List<Cliente> list2=cliedao.listarCliente();
        m.addAttribute("listaclientes",list2);  
        log.info("Listado de clientes");
    	m.addAttribute("command",pag);
        log.info("Ingreso editar pago");
        return "EditarPago";
    }

    @RequestMapping(value="/GuardarEditarPago",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("emp") Pago pag){
    	daopao.editarPago(pag);
        log.warn("Procesando edición de pagos");
        return "redirect:/ListadoPago";
    }
    
    @RequestMapping("/ListadoPagoCliente/{id}")    
    public String verpago(@PathVariable int id, Model m){    
        List<Pago> list=daopao.findPagoBycliente_id_cliente(id);
        m.addAttribute("list",list);  
        log.error("Listado de Pagos");
        return "ListadoPago";
    }
    
    @RequestMapping(value="/EliminarPago/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
    	daopao.eliminarPago(id);
        log.warn("pago eliminado");
        return "redirect:/ListadoPago";
    }

    
}
