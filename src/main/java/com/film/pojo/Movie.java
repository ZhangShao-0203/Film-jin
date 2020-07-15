package com.film.pojo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Getter
@Setter
public class Movie {

    private int mid;
    private String mnamec;
    private String mnamee;
    private String msort;
    private String mleng;
    private String uptime;
    private String details;
    private String photo;
    Set<Actor> actors;

    @Override
    public String toString() {
        return "Movie{" +
                "mid=" + mid +
                ", mnamec='" + mnamec + '\'' +
                ", mnamee='" + mnamee + '\'' +
                ", msort='" + msort + '\'' +
                ", mleng='" + mleng + '\'' +
                ", uptime='" + uptime + '\'' +
                ", details='" + details + '\'' +
                ", photo='" + photo + '\'' +
                '}';
    }
}
