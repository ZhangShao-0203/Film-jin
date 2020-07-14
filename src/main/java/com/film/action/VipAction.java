package com.film.action;


import com.film.pojo.Vip;
import com.film.service.IVipService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class VipAction extends ActionSupport implements ModelDriven<Vip> {

    private IVipService vipService;
    Vip vip;

    @Override
    public Vip getModel() {
        return vip;
    }
}
