package com.film.service.impl;

import com.film.dao.IAdminDao;
import com.film.pojo.Admin;
import com.film.service.IAdminService;
import lombok.Data;

import java.util.List;
@Data
public class AdminService implements IAdminService {
   private IAdminDao adminDao;
    @Override
    public int add(Admin admin) {
        return adminDao.add(admin);
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
        return adminDao.list();
    }

    @Override
    public Admin getAdmin(Admin admin) {
        return adminDao.getAdmin(admin);
    }
}
