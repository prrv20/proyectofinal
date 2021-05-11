package com.acc.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.BeanPropertyRowMapper;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.acc.modelo.Chequeo;
import com.acc.modelo.ChequeoRepositorio;

@Service
public class CheckListServicioImpl implements CheckListServicio{
	
	@Autowired
	ChequeoRepositorio cr;

	@Override
	public Chequeo findChequeoByid(int id) {
		return cr.findOne(id);
//		return null;
	}

	@Override
	public List<Chequeo> listarChequeo() {
		// TODO Auto-generated method stub
		return (List<Chequeo>) cr.findAll();
	}
	
	@Override
	public List<Chequeo> listarChequeos(int id) {
		// TODO Auto-generated method stub
		return (List<Chequeo>) cr.findByvisitas_id_visita(id);
	}

	@Override
	public void agregarChequeo(Chequeo c) {
		// TODO Auto-generated method stub
		cr.save(c);
	}

	@Override
	public void eliminarChequeo(int id) {
		// TODO Auto-generated method stub
		cr.delete(id);
	}

	@Override
	public void editarChequeo(Chequeo c) {
		// TODO Auto-generated method stub
		cr.save(c);
	}	
	
//	public int save(Chequeo c){    
//	    String sql="insert into Chequeo (detalle,estado,visitas_id_visita) values('"+c.getDetalle()+"',"+c.getEstado()+",'"+c.getVisitas_id_visita()+"')";
//	    return template.update(sql);
//	}
//	
//	public int update(Chequeo c){    
//	    String sql="update Chequeo set detalle='"+c.getDetalle()+"', estado="+c.getEstado()+",visitas_id_visita='"+c.getVisitas_id_visita()+"' where id_chequeo="+c.getId_chequeo()+"";
//	    return template.update(sql);    
//	}
//	
//	public int delete(int id){    
//	    String sql="delete from Chequeo where id_chequeo="+id+"";
//	    return template.update(sql);
//	} 
//	
//	public Chequeo getChekById(int id){    
//	    String sql="select * from Chequeo where visitas_id_visita=?";
//	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Chequeo>(Chequeo.class));    
//	}
//	
//	public List<Chequeo> getChequeos(){    
//	    return template.query("select * from Chequeo",new RowMapper<Chequeo>(){    
//	        public Chequeo mapRow(ResultSet rs, int row) throws SQLException {    
//	        	Chequeo c=new Chequeo();    
//	            c.setId_chequeo(rs.getInt(1));    
//	            c.setDetalle(rs.getString(2));    
//	            c.setEstado(rs.getString(3));
//	            c.setVisitas_id_visita(rs.getInt(4));
//	            return c;
//	        }    
//	    });    
//	}  
//	
//	public List<Chequeo> getChequeo(int id_visita){    
//	    return template.query("select id_chequeo,detalle,estado,visitas_id_visita from Chequeo where visitas_id_visita='"+id_visita+"'",new RowMapper<Chequeo>(){    
//	        public Chequeo mapRow(ResultSet rs, int row) throws SQLException {    
//	        	Chequeo c=new Chequeo();    
//	            c.setId_chequeo(rs.getInt(1));    
//	            c.setDetalle(rs.getString(2));    
//	            c.setEstado(rs.getString(3));
//	            c.setVisitas_id_visita(rs.getInt(4));
//	            return c;
//	        }    
//	    });    
//	}
	
}
