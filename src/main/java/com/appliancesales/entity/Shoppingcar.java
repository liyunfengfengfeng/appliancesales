package com.appliancesales.entity;

import java.io.Serializable;

public class Shoppingcar implements Serializable{
    private Integer id;
    public Shoppingcar() {
        super();
    }
    public Shoppingcar(Integer id) {
        super();
        this.id = id;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

}
