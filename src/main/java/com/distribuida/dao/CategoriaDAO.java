package com.distribuida.dao;

import java.util.List;
import com.distribuida.entities.Categoria;

public interface CategoriaDAO {

    public List<Categoria> findAll();  // Obtener todas las categorías

    public Categoria findOne(int id);  // Obtener una categoría por su ID

    public void add(Categoria categoria);  // Agregar una nueva categoría

    public void up(Categoria categoria);   // Actualizar una categoría existente

    public void del(int id);  // Eliminar una categoría por su ID
}
