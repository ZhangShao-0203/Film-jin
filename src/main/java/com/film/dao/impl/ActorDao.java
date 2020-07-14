package com.film.dao.impl;

import com.film.dao.IActorDao;
import com.film.pojo.Actor;
import lombok.Data;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;
@Data
public class ActorDao implements IActorDao {
    private SessionFactory sessionFactory;
    @Override
    public int add(Actor actor) {
        Session session=sessionFactory.getCurrentSession();
        int i=(int)session.save(actor);
        return i;
    }

    @Override
    public Actor get(int id) {
        return null;
    }

    @Override
    public int delete(int id) {
        Session s=sessionFactory.getCurrentSession();
        Actor actor = s.get(Actor.class, id);
        System.out.println(actor.toString());
        s.delete(actor);
        return 1;
    }

    @Override
    public int update(Actor actor) {
        return 0;
    }

    @Override
    public List<Actor> list(){
        List<Actor> res=new ArrayList();
        Session s=sessionFactory.getCurrentSession();
        Query q = s.createQuery("from Actor");
        res=q.list();
        return res;

    }
}
