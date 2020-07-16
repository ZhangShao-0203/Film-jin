package com.film.action;


import com.film.pojo.Vip;
import com.film.service.IVipService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Data;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipOutputStream;

@Data
public class VipAction extends ActionSupport implements ModelDriven<Vip> {

    private IVipService vipService;
    Vip vip = new Vip();
    List<Vip> vips = new ArrayList();
    String jsonData;

    @Override
    public Vip getModel() {
        return vip;
    }

    public String list(){
        vips = vipService.list();

        JSONObject jsonObject;
        JSONArray jsonArray = new JSONArray();

        for (Vip v: vips) {
            jsonObject= new JSONObject();
            jsonObject.put("vid",v.getVid());
            jsonObject.put("vname",v.getVname());
            jsonObject.put("vpass",v.getVpass());
            jsonObject.put("tel",v.getTel());
            jsonArray.put(jsonObject);
        }
        //System.out.println(jsonArray.toString());
        jsonData= jsonArray.toString();
        return "success";
    }

    public String delete(){
       // System.out.println(vip.getVid());
        int i = vipService.delete(vip.getVid());
        return "success";
    }

    public String add(){
        int i = vipService.add(vip);
        System.out.println(i);
        return "index";
    }

    public String edit(){
       // System.out.println(vip.getVid());
        vip= vipService.get(vip.getVid());

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("vid", vip.getVid());
        jsonObject.put("vname",vip.getVname());
        jsonObject.put("vpass",vip.getVpass());
        jsonObject.put("tel",vip.getTel());
        jsonData= jsonObject.toString();

        return "success";
    }

    public String update(){
        System.out.println(vip.getVid());
        int i = vipService.update(vip);
        return "index";
    }
}
