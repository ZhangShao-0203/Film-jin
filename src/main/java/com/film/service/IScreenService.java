package com.film.service;

import com.film.pojo.Cinema;
import com.film.pojo.Screen;

import java.util.List;

public interface IScreenService {
    //添加用户
    int add(Screen screen);
    //查询用户
    Cinema get(int id);
    //删除用户
    int delete(int id);
    //修改用户
    int update(Screen screen);
    //查看所有用户
    List<Screen> list();
}
