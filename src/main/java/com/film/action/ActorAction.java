package com.film.action;

import com.film.pojo.Actor;
import com.film.service.IActorService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Data;
import org.apache.struts2.ServletActionContext;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Data
public class ActorAction extends ActionSupport implements ModelDriven<Actor> {

    private IActorService actorService;
    Actor actor=new Actor();
    List<Actor> actors=new ArrayList();
    private String jsonData = null;
    private String state = null;
    private File doc;
    private String docFileName;

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
        System.out.println(jsonArray.toString());
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
    public String add(){
        String newName=actor.getAcname()+ UUID.randomUUID()+docFileName.substring(docFileName.lastIndexOf("."));
        HttpServletRequest request=ServletActionContext.getRequest();

    }
}
