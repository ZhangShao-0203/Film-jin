package com.film.service;

import com.film.pojo.Admin;

import java.util.List;

public interface IAdminService {
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

    Admin getAdmin(Admin admin);
}
