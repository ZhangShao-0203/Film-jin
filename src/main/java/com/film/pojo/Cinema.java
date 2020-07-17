package com.film.pojo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Getter
@Setter
public class Cinema {
    @Override
    public String toString() {
        return "Cinema{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                '}';
    }

    private int cid;
    private String cname;
    private Set<Video> videos;

}
