package com.appliancesales.service;
import java.util.List;
import com.appliancesales.entity.Store;
import com.appliancesales.common.Assist;
public interface StoreService{
    long getStoreRowCount(Assist assist);
    List<Store> selectStore(Assist assist);
    Store selectStoreById(Integer id);
    int insertStore(Store value);
    int insertNonEmptyStore(Store value);
    int deleteStoreById(Integer id);
    int deleteStore(Assist assist);
    int updateStoreById(Store enti);
    int updateStore(Store value, Assist assist);
    int updateNonEmptyStoreById(Store enti);
    int updateNonEmptyStore(Store value, Assist assist);
    /**
     * 根据商品id找到店面id
     * @param pid
     * @return
     */
	Integer selectStoreId(Integer pid);
}