package com.appliancesales.entity;

import java.io.Serializable;

public class DbOrder implements Serializable{
    private Integer id;
    private int total;
    private Integer carid;
    private String ordertime;
    public DbOrder() {
        super();
    }
    public DbOrder(Integer id,int total,Integer carid,String ordertime) {
        super();
        this.id = id;
        this.total = total;
        this.carid = carid;
        this.ordertime = ordertime;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getTotal() {
        return this.total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Integer getCarid() {
        return this.carid;
    }

    public void setCarid(Integer carid) {
        this.carid = carid;
    }
	public String getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}

   

}
