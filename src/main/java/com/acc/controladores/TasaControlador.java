package com.acc.controladores;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;



import com.acc.modelo.Tasa;
import com.acc.servicio.TasaServicio;

@Controller
public class TasaControlador {

@Autowired
TasaServicio tasas; 

static Logger log = Logger.getLogger(AccidenteControlador.class.getName());


@RequestMapping("/ListadoTasa")    
public String viewacc(Model m){    
    List<Tasa> list=tasas.listaTasa();
    m.addAttribute("listatasa",list);  
    log.info("Listado de Tasa");
    return "Tasa";
}

}
