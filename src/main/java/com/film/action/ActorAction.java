package com.film.action;

import com.film.pojo.Actor;
import com.film.service.IActorService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Data;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;
@Data
public class ActorAction extends ActionSupport implements ModelDriven<Actor> {

    private IActorService actorService;
    Actor actor=new Actor();
    List<Actor> actors=new ArrayList();
    private String jsonData = null;
    private String state = null;

    @Override
    public Actor getModel() {
        return actor;
    }
    public String list() {
        try {
            actors=actorService.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject;
        JSONArray jsonArray=new JSONArray();
        for (Actor as:actors){
           jsonObject=new JSONObject();
           jsonObject.put("acid",as.getAcid());
           jsonObject.put("acname",as.getAcname());
           jsonObject.put("acphoto",as.getAcphoto());
           jsonObject.put("acsort",as.getAcsort());
           jsonArray.put(jsonObject);
        }
        jsonData=jsonArray.toString();
        return "success";
    }
    public String delete() {
        try {
            int i = actorService.delete(actor.getAcid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "list";
    }
    public String edit() {
        try {
            actor=actorService.get(actor.getAcid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "edit";
    }
    public String update() {
        try {
            int i = actorService.update(actor);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "list";
    }
}
