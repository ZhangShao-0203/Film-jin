package com.film.action;

import com.film.pojo.Admin;
import com.film.service.IAdminService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Data;
import org.apache.struts2.ServletActionContext;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Data
public class AdminAction extends ActionSupport implements ModelDriven<Admin> {

    private IAdminService adminService;
    Admin admin;
    List<Admin> admins=new ArrayList();
    String jsonData;

    @Override
    public Admin getModel() {
        return admin;
    }
    public String list() {
        try {
            admins=adminService.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "listjsp";
    }

    public String delete() {
        try {
            int i = adminService.delete(admin.getAid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "list";
    }
    public String edit() {
        HttpServletRequest request = ServletActionContext.getRequest();
        Admin admin1= (Admin) request.getSession().getAttribute("admin");
        System.out.println(admin1.getAid());

        admin=adminService.get(admin1.getAid());

        JSONObject jsonObject = new JSONObject();

        jsonObject.put("aid",admin.getAid());
        jsonObject.put("apass",admin.getApass());
        jsonData= jsonObject.toString();

        return "success";
    }
    public String update() {
        try {
            int i = adminService.update(admin);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "list";
    }

    public String login(){
        //System.out.println(admin.toString());
        Admin admin1 = adminService.getAdmin(admin);
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        session.setAttribute("admin",admin1);
        // System.out.println(admin1);
        if(admin1!=null){
            return "listjsp";
        }else{
            return "error";
        }
    }
}
