package com.appliancesales.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appliancesales.dao.StoreDao;
import com.appliancesales.entity.Store;
import com.appliancesales.common.Assist;
@Service
public class StoreServiceImpl implements StoreService{
	@Autowired
    private StoreDao storeDao;
    @Override
    public long getStoreRowCount(Assist assist){
        return storeDao.getStoreRowCount(assist);
    }
    @Override
    public List<Store> selectStore(Assist assist){
        return storeDao.selectStore(assist);
    }
    @Override
    public Store selectStoreById(Integer id){
        return storeDao.selectStoreById(id);
    }
    @Override
    public int insertStore(Store value){
        return storeDao.insertStore(value);
    }
    @Override
    public int insertNonEmptyStore(Store value){
        return storeDao.insertNonEmptyStore(value);
    }
    @Override
    public int deleteStoreById(Integer id){
        return storeDao.deleteStoreById(id);
    }
    @Override
    public int deleteStore(Assist assist){
        return storeDao.deleteStore(assist);
    }
    @Override
    public int updateStoreById(Store enti){
        return storeDao.updateStoreById(enti);
    }
    @Override
    public int updateStore(Store value, Assist assist){
        return storeDao.updateStore(value,assist);
    }
    @Override
    public int updateNonEmptyStoreById(Store enti){
        return storeDao.updateNonEmptyStoreById(enti);
    }
    @Override
    public int updateNonEmptyStore(Store value, Assist assist){
        return storeDao.updateNonEmptyStore(value,assist);
    }

    public StoreDao getStoreDao() {
        return this.storeDao;
    }

    public void setStoreDao(StoreDao storeDao) {
        this.storeDao = storeDao;
    }
    /**
     * 根据商品id找到店面id
     */
	@Override
	public Integer selectStoreId(Integer pid) {
		// TODO Auto-generated method stub
		return storeDao.selectStoreId(pid);
	}

}