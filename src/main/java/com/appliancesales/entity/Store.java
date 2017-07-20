package com.appliancesales.entity;

import java.io.Serializable;

public class Store implements Serializable{
    private Integer id;
    private Integer salerid;
    public Store() {
        super();
    }
    public Store(Integer id,Integer salerid) {
        super();
        this.id = id;
        this.salerid = salerid;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSalerid() {
        return this.salerid;
    }

    public void setSalerid(Integer salerid) {
        this.salerid = salerid;
    }

}
