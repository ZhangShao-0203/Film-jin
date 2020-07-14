package com.film.pojo;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Getter
@Setter
public class Actor {
    @Override
    public String toString() {
        return "Actor{" +
                "acid=" + acid +
                ", acname='" + acname + '\'' +
                ", acphoto='" + acphoto + '\'' +
                ", acsort='" + acsort + '\'' +
                '}';
    }

    private int acid;
    private String acname;
    private String acphoto;
    private String acsort;
    Set<Movie> movies;
}
