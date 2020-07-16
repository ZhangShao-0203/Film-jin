package com.film.dao.impl;

import com.film.dao.IVipDao;
import com.film.pojo.Cinema;
import com.film.pojo.Vip;
import lombok.Data;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
public class VipDao implements IVipDao {
    private SessionFactory sessionFactory;

    @Override
    public int add(Vip vip) {
        Session session = sessionFactory.getCurrentSession();
        int i = (int)session.save(vip);
        return i;
    }

    @Override
    public Vip get(int id) {
        Session session = sessionFactory.getCurrentSession();
        Vip vip = session.get(Vip.class, id);
        return vip;
    }

    @Override
    public int delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        Vip vip = session.get(Vip.class, id);
        //System.out.println(vip.toString());
        session.delete(vip);
        return 1;
    }

    @Override
    public int update(Vip vip) {
        Session session = sessionFactory.getCurrentSession();
        session.update(vip);
        return 2;
    }

    @Override
    public List<Vip> list() {
        Session session = sessionFactory.getCurrentSession();
        List<Vip> res = new ArrayList();
        Query q = session.createQuery("from Vip");
        res = q.list();
        return res;
    }
}
