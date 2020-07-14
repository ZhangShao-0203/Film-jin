package com.film.action;

import com.film.pojo.Cinema;
import com.film.service.ICinemaService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CinemaAction extends ActionSupport implements ModelDriven<Cinema> {

    private ICinemaService cinemaService;
    Cinema cinema;

    @Override
    public Cinema getModel() {
        return cinema;
    }
}
