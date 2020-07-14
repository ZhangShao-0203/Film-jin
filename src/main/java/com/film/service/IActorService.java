package com.film.service;

import com.film.pojo.Actor;

import java.util.List;

public interface IActorService {
    //添加用户
    int add(Actor actor);
    //查询用户
    Actor get(int id);
    //删除用户
    int delete(int id);
    //修改用户
    int update(Actor actor);
    //查看所有用户
    List<Actor> list();
}
