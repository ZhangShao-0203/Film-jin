package com.film.dao;

import com.film.pojo.Admin;

import java.util.List;

public interface IAdminDao {
    //添加用户
    int add(Admin admin);
    //查询用户
    Admin get(int id);
    //删除用户
    int delete(int id);
    //修改用户
    int update(Admin admin);
    //查看所有用户
    List<Admin> list();

    //登录
    Admin getAdmin(Admin admin);
}
