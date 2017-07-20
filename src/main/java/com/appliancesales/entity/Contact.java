package com.appliancesales.entity;

import java.io.Serializable;

public class Contact implements Serializable{
    private Integer id;
    private String name;
    private String email;
    private String phone;
    private String message;
    public Contact() {
        super();
    }
    public Contact(Integer id,String name,String email,String phone,String message) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.message = message;
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

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
