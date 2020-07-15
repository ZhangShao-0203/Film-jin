package com.film.service.impl;

import com.film.dao.IVipDao;
import com.film.pojo.Cinema;
import com.film.pojo.Vip;
import com.film.service.IVipService;
import lombok.Data;

import java.util.List;

@Data
public class VipService implements IVipService {

    private IVipDao vipDao;

    @Override
    public int add(Vip vip) {
        return vipDao.add(vip);
    }

    @Override
    public Vip get(int id) {
        return vipDao.get(id);
    }

    @Override
    public int delete(int id) {
        return vipDao.delete(id);
    }

    @Override
    public int update(Vip vip) {
        return vipDao.update(vip);
    }

    @Override
    public List<Vip> list() {
        return vipDao.list();
    }
}
