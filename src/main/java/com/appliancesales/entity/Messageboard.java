package com.appliancesales.entity;

import java.io.Serializable;

public class Messageboard implements Serializable{
    private Integer id;
    private String name;
    private String userMessage;
    public Messageboard() {
        super();
    }
    public Messageboard(Integer id,String name,String userMessage) {
        super();
        this.id = id;
        this.name = name;
        this.userMessage = userMessage;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserMessage() {
        return this.userMessage;
    }

    public void setUserMessage(String userMessage) {
        this.userMessage = userMessage;
    }

}
