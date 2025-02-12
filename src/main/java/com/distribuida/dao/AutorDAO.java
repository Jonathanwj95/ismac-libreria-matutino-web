package com.distribuida.dao;

import java.util.List;
import com.distribuida.entities.Autor;

public interface AutorDAO {

    public List<Autor> findAll();  // Obtener todos los autores

    public Autor findOne(int id);  // Obtener un autor por su ID

    public void add(Autor autor);  // Agregar un nuevo autor

    public void up(Autor autor);   // Actualizar un autor existente

    public void del(int id);  // Eliminar un autor por su ID
}
