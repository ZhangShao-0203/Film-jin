package com.film.action;

import com.film.pojo.Actor;
import com.film.pojo.Movie;
import com.film.service.IMovieService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import lombok.Data;
import lombok.SneakyThrows;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
@Data
public class MovieAction extends ActionSupport implements ModelDriven<Movie> {

    private IMovieService movieService;
    Movie movie=new Movie();
    List<Movie> movies=new ArrayList();
    private String jsonData = null;
    private String state = null;
    private File doc;
    private String docFileName;

    @Override
    public Movie getModel() {
        return movie;
    }
    public String list() {
        try {
            movies=movieService.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        JSONObject jsonObject;
        JSONArray jsonArray=new JSONArray();
        for (Movie as:movies){
            jsonObject=new JSONObject();
            jsonObject.put("mid",as.getMid());
            jsonObject.put("mnamec",as.getMnamec());
            jsonObject.put("mnamee",as.getMnamee());
            jsonObject.put("msort",as.getMsort());
            jsonObject.put("mleng",as.getMleng());
            jsonObject.put("uptime",as.getUptime());
            jsonObject.put("details",as.getDetails());
            jsonObject.put("photo",as.getPhoto());
            jsonArray.put(jsonObject);
        }
        System.out.println(jsonArray.toString());
        jsonData=jsonArray.toString();
        return "success";
    }
    public String delete() {
        try {
            int i = movieService.delete(movie.getMid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
    }
    public String edit() {
        try {
            movie=movieService.get(movie.getMid());
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(movie.toString());
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("mid",movie.getMid());
        jsonObject.put("mnamec",movie.getMnamec());
        jsonObject.put("mnamee",movie.getMnamee());
        jsonObject.put("msort",movie.getMsort());
        jsonObject.put("mleng",movie.getMleng());
        jsonObject.put("uptime",movie.getUptime());
        jsonObject.put("details",movie.getDetails());
        jsonObject.put("photo",movie.getPhoto());
        jsonData=jsonObject.toString();
        return "success";
    }
    @SneakyThrows
    public String update() {
        String newName=movie.getMnamee()+ UUID.randomUUID()+docFileName.substring(docFileName.lastIndexOf("."));
        HttpServletRequest request= ServletActionContext.getRequest();
        String sacePath=request.getServletContext().getRealPath("/")+"moviephoto/"+newName;
        File file=new File(sacePath);
        if(!file.getParentFile().exists()){
            file.getParentFile().mkdirs();
        }
        FileUtils.copyFile(doc,file);
        String readPath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/moviephoto/"+newName;
        movie.setPhoto(readPath);
        System.out.println("-----------------"+movie.toString());
        try {
            int i = movieService.update(movie);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "list";
    }
    public String add() throws IOException {
        String newName=movie.getMnamec()+ UUID.randomUUID()+docFileName.substring(docFileName.lastIndexOf("."));
        HttpServletRequest request=ServletActionContext.getRequest();
        String sacePath=request.getServletContext().getRealPath("/")+"moviephoto/"+newName;
        File file=new File(sacePath);
        if(!file.getParentFile().exists()){
            file.getParentFile().mkdirs();
        }
        FileUtils.copyFile(doc,file);
        String readPath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/moviephoto/"+newName;
        movie.setPhoto(readPath);
        System.out.println("-----------------"+movie.toString());
        int i=movieService.add(movie);
        return "list";
    }
}
