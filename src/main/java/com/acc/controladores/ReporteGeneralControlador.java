package com.acc.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acc.modelo.Accidente;
import com.acc.modelo.Asesoria;
import com.acc.modelo.Cliente;
import com.acc.modelo.Mejora;
import com.acc.modelo.Pago;
import com.acc.modelo.Tasa;
import com.acc.modelo.Visita;
import com.acc.servicio.AccidenteServicio;
import com.acc.servicio.AsesoriaServicio;
import com.acc.servicio.ClienteServicio;
import com.acc.servicio.MejoraServicio;
import com.acc.servicio.PagoServicio;
import com.acc.servicio.TasaServicio;
import com.acc.servicio.VisitaServicio;

@Controller
public class ReporteGeneralControlador {
	@Autowired
	ClienteServicio cliedao;
	@Autowired
	PagoServicio daopao;
	@Autowired
	VisitaServicio vs;
	@Autowired
	VisitaServicio actdao;
	@Autowired
	AccidenteServicio accdao;
	@Autowired
	AsesoriaServicio as;
	@Autowired
	MejoraServicio mejdao;
	@Autowired
	TasaServicio tasas;
	
	
	@RequestMapping("/ReporteGeneral")
	public String verreportegeneral(Model m) {
		List<Cliente> list=cliedao.listarCliente();
        m.addAttribute("listaclientes",list); 
        List<Pago> list2=daopao.listarPago();
        m.addAttribute("listapago",list2); 
        List<Asesoria> list3=as.listarAsesoria();
        m.addAttribute("listasesoria",list3); 
        List<Visita> list4= vs.listarVisita();
		m.addAttribute("listavisitas",list4);
		List<Mejora> list5=mejdao.listarMejora();
        m.addAttribute("listamejora",list5);
        List<Accidente> list6=accdao.listarAccidente();
        m.addAttribute("listadoaccidente",list6);
		
		 
		return "ReporteGeneral";
	}
}
