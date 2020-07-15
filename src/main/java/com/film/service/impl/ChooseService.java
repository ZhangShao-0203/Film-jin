package com.film.service.impl;

import com.film.pojo.Choose;
import com.film.service.IChooseService;
import lombok.Data;

import java.util.List;

@Data
public class ChooseService implements IChooseService {
    private IChooseService chooseService;
    @Override
    public int add(Choose choose) {
        return 0;
    }

    @Override
    public Choose get(int id) {
        return null;
    }

    @Override
    public int delete(int id) {
        return 0;
    }

    @Override
    public int update(Choose choose) {
        return 0;
    }

    @Override
    public List<Choose> list() {
        return null;
    }
}
