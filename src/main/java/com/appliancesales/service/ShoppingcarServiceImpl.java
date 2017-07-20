package com.appliancesales.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appliancesales.dao.ShoppingcarDao;
import com.appliancesales.entity.Shoppingcar;
import com.appliancesales.common.Assist;
@Service
public class ShoppingcarServiceImpl implements ShoppingcarService{
	@Autowired
    private ShoppingcarDao shoppingcarDao;
    @Override
    public long getShoppingcarRowCount(Assist assist){
        return shoppingcarDao.getShoppingcarRowCount(assist);
    }
    @Override
    public List<Shoppingcar> selectShoppingcar(Assist assist){
        return shoppingcarDao.selectShoppingcar(assist);
    }
    @Override
    public Shoppingcar selectShoppingcarById(Integer id){
        return shoppingcarDao.selectShoppingcarById(id);
    }
    @Override
    public int insertShoppingcar(Shoppingcar value){
        return shoppingcarDao.insertShoppingcar(value);
    }
    @Override
    public int insertNonEmptyShoppingcar(Shoppingcar value){
        return shoppingcarDao.insertNonEmptyShoppingcar(value);
    }
    @Override
    public int deleteShoppingcarById(Integer id){
        return shoppingcarDao.deleteShoppingcarById(id);
    }
    @Override
    public int deleteShoppingcar(Assist assist){
        return shoppingcarDao.deleteShoppingcar(assist);
    }
    @Override
    public int updateShoppingcarById(Shoppingcar enti){
        return shoppingcarDao.updateShoppingcarById(enti);
    }
    @Override
    public int updateShoppingcar(Shoppingcar value, Assist assist){
        return shoppingcarDao.updateShoppingcar(value,assist);
    }
    @Override
    public int updateNonEmptyShoppingcarById(Shoppingcar enti){
        return shoppingcarDao.updateNonEmptyShoppingcarById(enti);
    }
    @Override
    public int updateNonEmptyShoppingcar(Shoppingcar value, Assist assist){
        return shoppingcarDao.updateNonEmptyShoppingcar(value,assist);
    }

    public ShoppingcarDao getShoppingcarDao() {
        return this.shoppingcarDao;
    }

    public void setShoppingcarDao(ShoppingcarDao shoppingcarDao) {
        this.shoppingcarDao = shoppingcarDao;
    }

}