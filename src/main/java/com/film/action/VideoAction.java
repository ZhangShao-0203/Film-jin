package com.film.action;

import com.film.pojo.Video;
import com.film.service.IVideoService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class VideoAction extends ActionSupport implements ModelDriven<Video> {

    private IVideoService videoService;
    Video video;

    @Override
    public Video getModel() {
        return video;
    }
}
