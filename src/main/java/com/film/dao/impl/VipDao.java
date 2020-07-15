package com.film.dao.impl;

import com.film.dao.IVipDao;
import com.film.pojo.Cinema;
import com.film.pojo.Vip;
import lombok.Data;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

@Data
public class VipDao implements IVipDao {
    private SessionFactory sessionFactory;

    @Override
    public int add(Vip vip) {
        return 0;
    }

    @Override
    public Cinema get(int id) {
        return null;
    }

    @Override
    public int delete(int id) {
        Session session = sessionFactory.getCurrentSession();
        Vip vip = session.get(Vip.class, id);
        System.out.println(vip.toString());
        session.delete(vip);
        return 1;
    }

    @Override
    public int update(Vip vip) {
        return 0;
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
