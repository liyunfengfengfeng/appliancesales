package com.appliancesales.entity;

import java.io.Serializable;

public class Product implements Serializable{
    private Integer id;
    private String name;
    private int originalPrice;
    private Integer orderid;
    private Integer storeid;
    private int favorablePrice;
    private String type;
    private String icon;
    public Product() {
        super();
    }
    public Product(Integer id,String name,int originalPrice,Integer orderid,Integer storeid,int favorablePrice,String type,String icon) {
        super();
        this.id = id;
        this.name = name;
        this.originalPrice = originalPrice;
        this.orderid = orderid;
        this.storeid = storeid;
        this.favorablePrice = favorablePrice;
        this.type = type;
        this.icon = icon;
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

    public int getOriginalPrice() {
        return this.originalPrice;
    }

    public void setOriginalPrice(int originalPrice) {
        this.originalPrice = originalPrice;
    }

    public Integer getOrderid() {
        return this.orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getStoreid() {
        return this.storeid;
    }

    public void setStoreid(Integer storeid) {
        this.storeid = storeid;
    }

    public int getFavorablePrice() {
        return this.favorablePrice;
    }

    public void setFavorablePrice(int favorablePrice) {
        this.favorablePrice = favorablePrice;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

}
