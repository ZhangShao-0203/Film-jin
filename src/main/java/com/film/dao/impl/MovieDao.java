package com.film.dao.impl;

import com.film.dao.IMovieDao;
import com.film.pojo.Actor;
import com.film.pojo.Movie;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class MovieDao implements IMovieDao {
    private SessionFactory sessionFactory;
    @Override
    public int add(Movie movie) {
        Session session=sessionFactory.getCurrentSession();
        int i=(int)session.save(movie);
        return i;
    }

    @Override
    public Movie get(int id) {
        Session s = sessionFactory.getCurrentSession();
        Movie movie=s.get(Movie.class,id);
        return movie;
    }

    @Override
    public int delete(int id) {
        Session s=sessionFactory.getCurrentSession();
        Movie movie = s.get(Movie.class, id);
        s.delete(movie);
        return 1;
    }

    @Override
    public int update(Movie movie) {
        Session s = sessionFactory.getCurrentSession();
        s.update(movie);
        return 2;
    }

    @Override
    public List<Movie> list() {
        List<Movie> res=new ArrayList();
        Session s=sessionFactory.getCurrentSession();
        Query q = s.createQuery("from Movie");
        res=q.list();
        return res;
    }
}
