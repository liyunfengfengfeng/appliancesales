package com.appliancesales.entity;

import java.io.Serializable;

public class Manager implements Serializable{
    private Integer id;
    private String name;
    private String password;
    private String account;
    public Manager() {
        super();
    }
    public Manager(Integer id,String name,String password,String account) {
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

    public String getAccount() {
        return this.account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

}
