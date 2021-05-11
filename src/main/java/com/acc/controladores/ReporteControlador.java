package com.acc.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acc.modelo.Accidente;
import com.acc.modelo.Mejora;
import com.acc.modelo.Pago;
import com.acc.modelo.Visita;
import com.acc.servicio.AccidenteServicio;
import com.acc.servicio.ClienteServicio;
import com.acc.servicio.MejoraServicio;
import com.acc.servicio.PagoServicio;
import com.acc.servicio.VisitaServicio;

@Controller
public class ReporteControlador {
	
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
	MejoraServicio mejdao;
	
	@RequestMapping("/ListadoReporteCliente/{id}")    
    public String verreporte(@PathVariable int id, Model m){    
        List<Pago> list2=daopao.findPagoBycliente_id_cliente(id);
        m.addAttribute("list2",list2);  
        List<Visita> listavisitas=vs.findVisitaBycliente_id_cliente(id);
        m.addAttribute("listavisitas",listavisitas); 
        List<Visita> listaact=actdao.findVisitaBycliente_id_cliente(id);
        m.addAttribute("listaact",listaact);
		List<Accidente> list=accdao.findAccidenteBycliente_id_cliente(id);
		m.addAttribute("listadoaccidente2",list);
		List<Mejora> listmej=mejdao.findMejoraBycliente_id_cliente(id);
        m.addAttribute("listmej",listmej);  
		return "ReporteCliente";
    }
}
