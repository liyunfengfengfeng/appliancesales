package com.appliancesales.service;
import java.util.List;
import com.appliancesales.entity.Shoppingcar;
import com.appliancesales.common.Assist;
public interface ShoppingcarService{
    long getShoppingcarRowCount(Assist assist);
    List<Shoppingcar> selectShoppingcar(Assist assist);
    Shoppingcar selectShoppingcarById(Integer id);
    int insertShoppingcar(Shoppingcar value);
    int insertNonEmptyShoppingcar(Shoppingcar value);
    int deleteShoppingcarById(Integer id);
    int deleteShoppingcar(Assist assist);
    int updateShoppingcarById(Shoppingcar enti);
    int updateShoppingcar(Shoppingcar value, Assist assist);
    int updateNonEmptyShoppingcarById(Shoppingcar enti);
    int updateNonEmptyShoppingcar(Shoppingcar value, Assist assist);
}