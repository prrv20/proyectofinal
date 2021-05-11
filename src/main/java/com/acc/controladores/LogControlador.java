package com.acc.controladores;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.acc.modelo.Bitacora;

@Controller
public class LogControlador {

    @RequestMapping("/revisarlog")    
    public String showform(Model m){
    	
        File archivo = null;
        FileReader fr = null;
        BufferedReader br = null;

        try {
           // Apertura del fichero y creacion de BufferedReader para poder
           // hacer una lectura comoda (disponer del metodo readLine()).
           archivo = new File ("C:\\Users\\jorge\\OneDrive\\Documentos\\log.out");
           fr = new FileReader (archivo);
           br = new BufferedReader(fr);

           // Lectura del fichero
           List<Bitacora> list = new ArrayList<Bitacora>();
           String linea;
           while((linea=br.readLine())!=null) {
              System.out.println(linea);
              String[] texto = linea.trim().split("\\|\\|");
              for (int i=0; i < texto.length; i++) {
            	  System.out.println(texto[i]);
              }
              
              /*int pos=-1;
              for (int i=0;i<linea.length();i++) {
            	  if (linea[i] == '|'
              }*/
              
              Bitacora msj = new Bitacora(texto[0].trim(),texto[1].trim(),texto[2].trim(),texto[3].trim());
              list.add(msj);
           }
           
           m.addAttribute("list",list);
        }
        catch(Exception e){
           e.printStackTrace();
        }finally{
           // En el finally cerramos el fichero, para asegurarnos
           // que se cierra tanto si todo va bien como si salta 
           // una excepcion.
           try{                    
              if( null != fr ){   
                 fr.close();     
              }                  
           }catch (Exception e2){ 
              e2.printStackTrace();
           }
        }
        
        return "viewlog";
    } 

}
