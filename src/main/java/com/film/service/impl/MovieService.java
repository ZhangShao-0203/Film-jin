package com.film.service.impl;

import com.film.dao.IActorDao;
import com.film.dao.IMovieDao;
import com.film.pojo.Movie;
import com.film.service.IMovieService;

import java.util.List;

public class MovieService implements IMovieService {
    IMovieDao MovieDao;
    @Override
    public int add(Movie movie) {
        return MovieDao.add(movie);
    }

    @Override
    public Movie get(int id) {
        return MovieDao.get(id);
    }

    @Override
    public int delete(int id) {
        return MovieDao.delete(id);
    }

    @Override
    public int update(Movie movie) {
        return MovieDao.update(movie);
    }

    @Override
    public List<Movie> list() {
        return MovieDao.list();
    }
}
