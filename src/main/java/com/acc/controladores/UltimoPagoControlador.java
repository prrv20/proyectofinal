package com.acc.controladores;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.acc.modelo.Pago;
import com.acc.servicio.PagoServicio;

@Controller
public class UltimoPagoControlador {
	
	@Autowired
	PagoServicio us;
	
	static Logger log = Logger.getLogger(UltimoPagoControlador.class.getName());
	
	@RequestMapping(value="/UltimoPago/{id}",method = RequestMethod.GET)
	public String verulpago(@PathVariable int id, Model m){
		List<Pago> list = us.findPagoBycliente_id_cliente(id);
		
		//Buscar Ultima ubicación en el array
		int ulist=list.size()-1;
		
		//Guardar dato mes año desde el ultimo dato de la lista.
		String ulpago = list.get(ulist).getMesanio().toString();
		
//		for(int i=0;i<list.size();i++) {
//			ulist=i;
//		}
		
		//Obtengo Datos de la fecha de hoy y los parseo a STRING
		Calendar c = new GregorianCalendar();
		String mes = Integer.toString(c.get(Calendar.MONTH)+1);
		String annio = Integer.toString(c.get(Calendar.YEAR));
		
		int mesString = Integer.parseInt(mes);
		String mesok = "";
		if(mesString<10) {
			mesok= "0" + mesString;
		}else {
			mesok= mes;
		}
//		ulpago.getMesanio();
		
		String fpago= "01-"+ulpago;	
		String fpago2= ulpago;
		
		String fhoy= "01-"+mesok+"-"+annio;
		
		//Formateo Fechas a Date para su comparación
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

		LocalDate fecha1 = LocalDate.parse(fhoy, formatter);
		LocalDate fecha2 = LocalDate.parse(fpago, formatter);
		
		String mensaje = "";
		
		//Comparo Fechas
		if(fecha1.equals(fecha2)) {
			mensaje="Cliente se encuentra al día en sus pagos";
		}else if(fecha1.isAfter(fecha2)){
			mensaje="El cliente se encuentra atrasado en sus pagos";
		}else if(fecha1.isBefore(fecha2)) {
			mensaje="El Cliente tiene Cancelado hasta el mes de: "+ fpago2;
		}		
		
		m.addAttribute("mensaje", mensaje);
		m.addAttribute("ultimopago",list.get(ulist));  
        log.info("Ver Ultimo Pago");
        return "ultimopago";
	}

}
