package com.film.dao.impl;

import com.film.dao.IVideoDao;
import com.film.pojo.Cinema;
import com.film.pojo.Video;
import lombok.Data;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

@Data
public class VideoDao implements IVideoDao {

    private SessionFactory sessionFactory;

    @Override
    public int add(Video video) {
        return 0;
    }

    @Override
    public Cinema get(int id) {
        return null;
    }

    @Override
    public int delete(int id) {
        return 0;
    }

    @Override
    public int update(Video video) {
        return 0;
    }

    @Override
    public List<Video> list() {

        Session session = sessionFactory.getCurrentSession();
        List<Video> res = new ArrayList();
        Query q = session.createQuery("from Video");
        res= q.list();
        return res;
    }
}
