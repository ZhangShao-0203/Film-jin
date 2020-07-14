package com.film.dao;

import com.film.pojo.Cinema;
import com.film.pojo.Movie;

import java.util.List;

public interface IMovieDao {
    //添加用户
    int add(Movie movie);
    //查询用户
    Movie get(int id);
    //删除用户
    int delete(int id);
    //修改用户
    int update(Movie movie);
    //查看所有用户
    List<Movie> list();
}
