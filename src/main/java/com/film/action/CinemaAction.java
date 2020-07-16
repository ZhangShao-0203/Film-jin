package com.film.action;

import com.film.pojo.Cinema;
import com.film.pojo.Video;
import com.film.service.ICinemaService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Data;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

@Data
public class CinemaAction extends ActionSupport implements ModelDriven<Cinema> {

    private ICinemaService cinemaService;
    Cinema cinema = new Cinema();
    List<Cinema> cinemas = new ArrayList();
    String jsonData;

    @Override
    public Cinema getModel() {
        return cinema;
    }

    public String list(){
        //System.out.println("a");
        try {
            cinemas= cinemaService.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject;
        JSONArray jsonArray = new JSONArray();

        for (Cinema c:cinemas) {
            jsonObject = new JSONObject();
            jsonObject.put("cid",c.getCid());
            jsonObject.put("cname",c.getCname());
            jsonArray.put(jsonObject);
        }
        //System.out.println(jsonArray.toString());
        jsonData = jsonArray.toString();
        return "success";
    }

    public String add(){
        int i = cinemaService.add(cinema);
        return "index";
    }

    public String edit(){
        cinema = cinemaService.get(cinema.getCid());

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("",cinema.getCid());
        jsonObject.put("",cinema.getCname());
        jsonData = jsonObject.toString();
        return "success";
    }

    public String update(){
        cinemaService.update(cinema);
        return "index";
    }

    public String delete(){
        cinemaService.delete(cinema.getCid());
        return "success";
    }

}
