package com.film.action;

import com.film.pojo.Cinema;
import com.film.pojo.Video;
import com.film.service.IVideoService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Data;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

@Data
public class VideoAction extends ActionSupport implements ModelDriven<Video> {

    private IVideoService videoService;
    Video video = new Video();
    List<Video> videos = new ArrayList();
    String jsonData;

    @Override
    public Video getModel() {
        return video;
    }

    public String list(){

        try {
            videos = videoService.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject;
        JSONArray jsonArray = new JSONArray();

        for (Video v:videos) {
            jsonObject = new JSONObject();
            jsonObject.put("viid",v.getViid());
            jsonObject.put("viname",v.getViname());
            //jsonObject.put("cid",v.getCid());
            jsonArray.put(jsonObject);
        }
        //System.out.println(jsonArray.toString());
        jsonData = jsonArray.toString();
        return "success";
    }

    public String delete(){
        int i = videoService.delete(video.getViid());
        return "success";
    }

    public String add(){
        int i = videoService.add(video);

        return "success";
    }
    public String edit(){
        videoService.get(video.getViid());
        JSONObject jsonObject = new JSONObject();

        jsonObject.put("viid", video.getViid());
        jsonObject.put("viname",video.getViname());
        //jsonObject.put("cid",video.getCid());
        jsonData= jsonObject.toString();

        return "success";
    }
    public String update(){
        videoService.update(video);
        return "success";
    }

}
