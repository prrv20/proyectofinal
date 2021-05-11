package com.acc.servicio;

import java.util.List;

import com.acc.modelo.Pago;

public interface PagoServicio {

	Pago findPagoByid(int id);
	List<Pago> listarPago();
	void agregarPago(Pago p);
	void eliminarPago(int id);
	void editarPago(Pago p);
	List<Pago> findPagoBycliente_id_cliente(int id);
}
