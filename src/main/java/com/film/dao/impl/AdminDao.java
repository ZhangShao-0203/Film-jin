package com.film.dao.impl;

import com.film.dao.IAdminDao;
import com.film.pojo.Actor;
import com.film.pojo.Admin;
import lombok.Data;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;
@Data
public class AdminDao implements IAdminDao {
    private SessionFactory sessionFactory;

    @Override
    public int add(Admin admin) {
        return 0;
    }

    @Override
    public Admin get(int id) {
        return null;
    }

    @Override
    public int delete(int id) {
        return 0;
    }

    @Override
    public int update(Admin admin) {
        return 0;
    }

    @Override
    public List<Admin> list() {
        return null;
    }

    @Override
    public Admin getAdmin(Admin admin) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Admin a where a.aid=?1 and a.apass=?2");
        query.setParameter(1,admin.getAid());
        query.setParameter(2,admin.getApass());
        Admin admin1 = (Admin) query.uniqueResult();
        return admin1;
    }
}
