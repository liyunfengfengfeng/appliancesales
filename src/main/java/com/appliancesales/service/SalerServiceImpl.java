package com.appliancesales.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appliancesales.dao.SalerDao;
import com.appliancesales.entity.Saler;
import com.appliancesales.common.Assist;
@Service
public class SalerServiceImpl implements SalerService{
	@Autowired
    private SalerDao salerDao;
    @Override
    public long getSalerRowCount(Assist assist){
        return salerDao.getSalerRowCount(assist);
    }
    @Override
    public List<Saler> selectSaler(Assist assist){
        return salerDao.selectSaler(assist);
    }
    @Override
    public Saler selectSalerById(Integer id){
        return salerDao.selectSalerById(id);
    }
    @Override
    public int insertSaler(Saler value){
        return salerDao.insertSaler(value);
    }
    @Override
    public int insertNonEmptySaler(Saler value){
        return salerDao.insertNonEmptySaler(value);
    }
    @Override
    public int deleteSalerById(Integer id){
        return salerDao.deleteSalerById(id);
    }
    @Override
    public int deleteSaler(Assist assist){
        return salerDao.deleteSaler(assist);
    }
    @Override
    public int updateSalerById(Saler enti){
        return salerDao.updateSalerById(enti);
    }
    @Override
    public int updateSaler(Saler value, Assist assist){
        return salerDao.updateSaler(value,assist);
    }
    @Override
    public int updateNonEmptySalerById(Saler enti){
        return salerDao.updateNonEmptySalerById(enti);
    }
    @Override
    public int updateNonEmptySaler(Saler value, Assist assist){
        return salerDao.updateNonEmptySaler(value,assist);
    }

    public SalerDao getSalerDao() {
        return this.salerDao;
    }

    public void setSalerDao(SalerDao salerDao) {
        this.salerDao = salerDao;
    }

}