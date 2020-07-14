package com.film.service.impl;

import com.film.dao.IActorDao;
import com.film.dao.IAdminDao;
import com.film.pojo.Actor;
import com.film.service.IActorService;
import lombok.Data;

import java.util.List;
@Data
public class ActorService implements IActorService {
    IActorDao ActorDao;
    @Override
    public int add(Actor actor) {
        return ActorDao.add(actor);
    }

    @Override
    public Actor get(int id) {
        return null;
    }

    @Override
    public int delete(int id) {
        return 0;
    }

    @Override
    public int update(Actor actor) {
        return 0;
    }

    @Override
    public List<Actor> list() {
        return ActorDao.list();
    }
}
