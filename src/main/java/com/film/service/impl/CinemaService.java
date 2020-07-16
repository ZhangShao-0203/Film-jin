package com.film.service.impl;

import com.film.dao.ICinemaDao;
import com.film.pojo.Cinema;
import com.film.service.ICinemaService;
import lombok.Data;

import java.util.List;

@Data
public class CinemaService implements ICinemaService {
    private ICinemaDao cinemaDao;
    @Override
    public int add(Cinema cinema) {
        return cinemaDao.add(cinema);
    }

    @Override
    public Cinema get(int id) {
        return cinemaDao.get(id);
    }

    @Override
    public int delete(int id) {
        return cinemaDao.delete(id);
    }

    @Override
    public int update(Cinema cinema) {
        return cinemaDao.update(cinema);
    }

    @Override
    public List<Cinema> list() {
        return cinemaDao.list();
    }
}
