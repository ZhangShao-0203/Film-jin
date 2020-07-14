package com.film.action;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext ac=new ClassPathXmlApplicationContext("bean-base.xml");
        ActorAction productAction = (ActorAction) ac.getBean("actorAction");
        productAction.list();
        // AdminAction adminAction = (AdminAction) ac.getBean("AdminAction");
        // adminAction.list();
    }
}
