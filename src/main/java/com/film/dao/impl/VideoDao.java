package com.film.dao.impl;

import com.film.dao.IVideoDao;
import com.film.pojo.Cinema;
import com.film.pojo.Video;
import lombok.Data;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
public class VideoDao implements IVideoDao {

    private SessionFactory sessionFactory;

    @Override
    public int add(Video video) {
        Session session = sessionFactory.getCurrentSession();
        int i = (int)session.save(video);
        return i;
    }

    @Override
    public Video get(int id) {
        Session session = sessionFactory.getCurrentSession();
        Video video = session.get(Video.class, id);
        return video;
    }

    @Override
    public int delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        Video video = session.get(Video.class, id);
        session.delete(video);
        return 1;
    }

    @Override
    public int update(Video video) {
        Session session = sessionFactory.getCurrentSession();
        session.update(video);
        return 2;
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
