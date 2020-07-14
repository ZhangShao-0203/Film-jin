package com.film.action;

import com.film.pojo.Choose;
import com.film.service.IChooseService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ChooseAction extends ActionSupport implements ModelDriven<Choose> {

    private IChooseService chooseService;
    Choose choose;

    @Override
    public Choose getModel() {
        return choose;
    }
}
