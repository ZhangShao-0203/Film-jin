package com.film.action;

import com.film.pojo.Ordert;
import com.film.service.IOrderService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrdertAction extends ActionSupport implements ModelDriven<Ordert> {

    private IOrderService orderService;
    Ordert ordert;

    @Override
    public Ordert getModel() {
        return ordert;
    }
}
