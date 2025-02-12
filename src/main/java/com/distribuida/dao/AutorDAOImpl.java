package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Autor;

@Repository
public class AutorDAOImpl implements AutorDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Autor> findAll() {
        // Se obtiene la sesión de Hibernate y se hace la consulta HQL
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Autor", Autor.class).getResultList();
    }

    @Override
    @Transactional
    public Autor findOne(int id) {
        // Recuperar un autor específico por su ID
        Session session = sessionFactory.getCurrentSession();
        return session.get(Autor.class, id);
    }

    @Override
    @Transactional
    public void add(Autor autor) {
        // Guardar o actualizar un autor
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(autor);
    }

    @Override
    @Transactional
    public void up(Autor autor) {
        // Actualizar un autor existente
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(autor);
    }

    @Override
    @Transactional
    public void del(int id) {
        // Eliminar un autor por su ID
        Session session = sessionFactory.getCurrentSession();
        session.delete(findOne(id));
    }
}
