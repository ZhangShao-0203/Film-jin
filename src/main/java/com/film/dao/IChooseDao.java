package com.film.dao;

import com.film.pojo.Choose;

import java.awt.*;
import java.util.List;

public interface IChooseDao {
    //添加用户
    int add(Choose choose);
    //查询用户
    Choose get(int id);
    //删除用户
    int delete(int id);
    //修改用户
    int update(Choose choose);
    //查看所有用户
    List<Choose> list();
}
