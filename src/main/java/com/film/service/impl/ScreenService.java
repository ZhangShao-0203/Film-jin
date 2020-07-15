package com.film.service.impl;

import com.film.dao.IScreenDao;
import com.film.pojo.Cinema;
import com.film.pojo.Screen;
import com.film.service.IScreenService;
import lombok.Data;

import java.util.List;

@Data
public class ScreenService implements IScreenService {
    private IScreenDao screenDao;
    @Override
    public int add(Screen screen) {
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
    public int update(Screen screen) {
        return 0;
    }

    @Override
    public List<Screen> list() {
        return null;
    }
}
