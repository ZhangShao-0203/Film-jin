package com.film.service;

import com.film.pojo.Cinema;
import com.film.pojo.Ordert;

import java.util.List;

public interface IOrderService {
    //添加用户
    int add(Ordert ordert);
    //查询用户
    Cinema get(int id);
    //删除用户
    int delete(int id);
    //修改用户
    int update(Ordert ordert);
    //查看所有用户
    List<Ordert> list();
}
