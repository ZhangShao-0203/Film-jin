package com.film.action;

import com.film.pojo.Movie;
import com.film.service.IMovieService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MovieAction extends ActionSupport implements ModelDriven<Movie> {

    private IMovieService movieService;
    Movie movie;

    @Override
    public Movie getModel() {
        return movie;
    }
}
