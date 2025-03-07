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

import com.distribuida.dao.CategoriaDAO;
import com.distribuida.entities.Categoria;

@Controller
@RequestMapping("/categorias")
public class CategoriaController {

    @Autowired
    private CategoriaDAO categoriaDAO;

    // Método para listar todas las categorías
    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<Categoria> categorias = categoriaDAO.findAll();
        model.addAttribute("categorias", categorias);
        return "categorias-listar";
    }

    // Método para manejar agregar, actualizar o eliminar
    @GetMapping("/findOne")
    public String findOne(@RequestParam(name = "idCategoria", required = false) Integer idCategoria,
                          @RequestParam(name = "opcion") int opcion, 
                          Model model) {
        
        // Si opcion == 1 (Agregar), crea una nueva categoría vacía
        if (opcion == 1) {
            model.addAttribute("categoria", new Categoria()); // Objeto vacío para el formulario
            return "categorias-add"; // Redirige a la vista de agregar
        }
        
        // Si opcion == 2 (Actualizar) o 3 (Eliminar), busca la categoría existente
        if (idCategoria != null) {
            Categoria categoria = categoriaDAO.findOne(idCategoria);  
            model.addAttribute("categoria", categoria);
            
            if (opcion == 2) return "categorias-add"; // Redirige a la vista de editar
            else if (opcion == 3) return "categorias-del"; // Redirige a la vista de eliminar
        }
        
        // Si no se cumple ninguna condición, redirige a la lista de categorías
        return "redirect:/categorias/findAll";
    }

    // Método para agregar o actualizar una categoría
    @PostMapping("/add")
    public String add(@RequestParam(name = "idCategoria", required = false) Integer idCategoria,
                      @RequestParam("categoria") String categoria,
                      @RequestParam("descripcion") String descripcion) {
        
        if (idCategoria == null) {
            // Crear una nueva categoría
            Categoria nuevaCategoria = new Categoria(0, categoria, descripcion);
            categoriaDAO.add(nuevaCategoria);  
        } else {
            // Actualizar una categoría existente
            Categoria categoriaExistente = new Categoria(idCategoria, categoria, descripcion);
            categoriaDAO.up(categoriaExistente); 
        }
        
        // Redirigir a la lista de categorías
        return "redirect:/categorias/findAll";
    }

    // Método para eliminar una categoría
    @GetMapping("/del")
    public String del(@RequestParam("idCategoria") Integer idCategoria) {
        categoriaDAO.del(idCategoria);  
        return "redirect:/categorias/findAll";
    }
}