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
    public Admin login(Admin admin) {
        Session session = sessionFactory.getCurrentSession();
        //Admin admin1 = session.get("from Admin a where a.aid = ? and a.apass=? ");
        return null;
    }
}
