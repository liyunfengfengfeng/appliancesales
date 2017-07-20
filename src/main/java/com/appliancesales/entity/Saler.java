package com.appliancesales.entity;

import java.io.Serializable;

public class Saler implements Serializable{
    private Integer id;
    private String name;
    private String password;
    private Integer account;
    public Saler() {
        super();
    }
    public Saler(Integer id,String name,String password,Integer account) {
        super();
        this.id = id;
        this.name = name;
        this.password = password;
        this.account = account;
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

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getAccount() {
        return this.account;
    }

    public void setAccount(Integer account) {
        this.account = account;
    }

}
