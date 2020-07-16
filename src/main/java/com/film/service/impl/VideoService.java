package com.film.service.impl;

import com.film.dao.IVideoDao;
import com.film.pojo.Cinema;
import com.film.pojo.Video;
import com.film.service.IVideoService;
import lombok.Data;

import java.util.List;

@Data
public class VideoService implements IVideoService {
    private IVideoDao videoDao;

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
        return videoDao.delete(id);
    }

    @Override
    public int update(Video video) {
        return 0;
    }

    @Override
    public List<Video> list() {
        return videoDao.list();
    }
}
