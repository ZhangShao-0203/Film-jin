package com.film.action;

import com.film.pojo.Admin;
import com.film.service.IAdminService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class AdminAction extends ActionSupport implements ModelDriven<Admin> {

    private IAdminService adminService;
    Admin admin=new Admin();
    List<Admin> admins=new ArrayList();
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
        try {
            admin=adminService.get(admin.getAid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "edit";
    }
    public String update() {
        try {
            int i = adminService.update(admin);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "list";
    }
}
