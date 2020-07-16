package com.film.dao.impl;

import com.film.dao.ICinemaDao;
import com.film.pojo.Cinema;
import com.film.pojo.Video;
import lombok.Data;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
public class CinemaDao implements ICinemaDao {
    private SessionFactory sessionFactory;

    @Override
    public int add(Cinema cinema) {
        Session session = sessionFactory.getCurrentSession();
        int i = (int)session.save(cinema);
        return i;
    }

    @Override
    public Cinema get(int id) {
        Session session = sessionFactory.getCurrentSession();
        Cinema cinema = session.get(Cinema.class, id);
        return cinema;
    }

    @Override
    public int delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        Cinema cinema = session.get(Cinema.class, id);
        session.delete(cinema);
        return 1;
    }

    @Override
    public int update(Cinema cinema) {
        Session session = sessionFactory.getCurrentSession();
        session.update(cinema);
        return 2;
    }

    @Override
    public List<Cinema> list() {
        Session session = sessionFactory.getCurrentSession();
        List<Cinema> res = new ArrayList();
        Query q = session.createQuery("from Cinema");
        res= q.list();
        return res;
    }
}
