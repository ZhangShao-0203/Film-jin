package com.film.service;

import com.film.pojo.Cinema;

import java.util.List;

public interface ICinemaService {
    //添加用户
    int add(Cinema cinema);
    //查询用户
    Cinema get(int id);
    //删除用户
    int delete(int id);
    //修改用户
    int update(Cinema cinema);
    //查看所有用户
    List<Cinema> list();
}
