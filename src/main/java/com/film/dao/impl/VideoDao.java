package com.film.dao.impl;

import com.film.dao.IVideoDao;
import com.film.pojo.Cinema;
import com.film.pojo.Video;

import java.util.List;

public class VideoDao implements IVideoDao {
    @Override
    public int add(Video video) {
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
    public int update(Video video) {
        return 0;
    }

    @Override
    public List<Video> list() {
        return null;
    }
}
