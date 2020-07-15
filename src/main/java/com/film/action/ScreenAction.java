package com.film.action;

import com.film.pojo.Screen;
import com.film.service.IScreenService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Data;

@Data
public class ScreenAction extends ActionSupport implements ModelDriven<Screen> {

    private IScreenService screenService;
    Screen screen;

    @Override
    public Screen getModel() {
        return screen;
    }
}
