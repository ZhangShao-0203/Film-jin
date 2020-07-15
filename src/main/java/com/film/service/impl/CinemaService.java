package com.film.service.impl;

import com.film.dao.ICinemaDao;
import com.film.pojo.Cinema;
import com.film.service.ICinemaService;
import lombok.Data;

import java.util.List;

@Data
public class CinemaService implements ICinemaService {
    private ICinemaDao iCinemaDao;
    @Override
    public int add(Cinema cinema) {
        return 0;
    }

    @Override
    public Cinema get(int id) {
        return null;
    }

    @Override
    public int delete(int id) {
        return 0;
    }

    @Override
    public int update(Cinema cinema) {
        return 0;
    }

    @Override
    public List<Cinema> list() {
        return null;
    }
}
