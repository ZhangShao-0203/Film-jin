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
        System.out.println(actorService+"--");
        try {
            actors=actorService.list();
            System.out.println(actorService+"--");
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject;
        JSONArray jsonArray=new JSONArray();
        for (Actor as:actors){
            System.out.println(as.toString());
        }
        return "listjsp";
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
