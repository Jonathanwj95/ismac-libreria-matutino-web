package com.distribuida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.AutorDAO;
import com.distribuida.entities.Autor;

@Controller
@RequestMapping("/autores")
public class AutorController {

    @Autowired
    private AutorDAO autorDAO;

    
    @GetMapping("/findAll")
    public String findAll(Model model) {
      
        List<Autor> autores = autorDAO.findAll();
        model.addAttribute("autores", autores);
       
        return "autores-listar";
    }

   
    @GetMapping("/findOne")
    public String findOne(@RequestParam(value = "idAutor", required = false) Integer idAutor,
                          @RequestParam("opcion") Integer opcion, 
                          Model model) {
        
        if (idAutor != null) {
            Autor autor = autorDAO.findOne(idAutor); 
            model.addAttribute("autor", autor);
        }

        if (opcion == 1) return "autores-add"; // Para agregar un nuevo autor
        else return "autores-del"; // Para eliminar un autor
    }

   
    @PostMapping("/add")
    public String add(@RequestParam("idAutor") @Nullable Integer idAutor,
                      @RequestParam("nombre") @Nullable String nombre,
                      @RequestParam("apellido") @Nullable String apellido,
                      @RequestParam("pais") @Nullable String pais,
                      @RequestParam("direccion") @Nullable String direccion,
                      @RequestParam("telefono") @Nullable String telefono,
                      @RequestParam("correo") @Nullable String correo,
                      Model model) {
        
       
        if (idAutor == null) {
            Autor autor = new Autor(0, nombre, apellido, pais, direccion, telefono, correo);
            autorDAO.add(autor); 
        } else {
           
            Autor autor = new Autor(idAutor, nombre, apellido, pais, direccion, telefono, correo);
            autorDAO.up(autor);  
        }
        
       
        return "redirect:/autores/findAll";
    }

   
    @GetMapping("/del")
    public String del(@RequestParam("idAutor") @Nullable Integer idAutor) {
      
        autorDAO.del(idAutor);  
       
        return "redirect:/autores/findAll";
    }
}

