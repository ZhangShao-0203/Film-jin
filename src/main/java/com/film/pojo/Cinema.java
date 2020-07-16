package com.film.pojo;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Getter
@Setter
public class Cinema {
    private int cid;
    private String cname;
    private Set<Video> videos;

}
