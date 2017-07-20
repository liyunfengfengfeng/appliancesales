package com.appliancesales.entity;

import java.io.Serializable;

public class User implements Serializable{
    private Integer id;
    private String name;
    private String password;
    private String confirmpassword;//确认密码
    private Integer account;
    private String gender;
    private Integer carid;
    private String email;
    private String phone;
    //一个用户对应一个购物车
    private Shoppingcar car;
    public User() {
        super();
    }
    public User(Integer id,String name,String password,Integer account,String gender,Integer carid,String email,String phone) {
        super();
        this.id = id;
        this.name = name;
        this.password = password;
        this.account = account;
        this.gender = gender;
        this.carid = carid;
        this.email = email;
        this.phone = phone;
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

    public String getGender() {
        return this.gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getCarid() {
        return this.carid;
    }

    public void setCarid(Integer carid) {
        this.carid = carid;
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
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public Shoppingcar getCar() {
		return car;
	}
	public void setCar(Shoppingcar car) {
		this.car = car;
	}

}
