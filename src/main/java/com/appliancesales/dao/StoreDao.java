package com.appliancesales.dao;
import com.appliancesales.entity.Store;
import java.util.List;
import com.appliancesales.common.Assist;
import org.apache.ibatis.annotations.Param;
public interface StoreDao{
    long getStoreRowCount(Assist assist);
    List<Store> selectStore(Assist assist);
    Store selectStoreById(Integer id);
    int insertStore(Store value);
    int insertNonEmptyStore(Store value);
    int deleteStoreById(Integer id);
    int deleteStore(Assist assist);
    int updateStoreById(Store enti);
    int updateStore(@Param("enti") Store value, @Param("assist") Assist assist);
    int updateNonEmptyStoreById(Store enti);
    int updateNonEmptyStore(@Param("enti") Store value, @Param("assist") Assist assist);
	/**
	 * 根据商品id找到店面id
	 * @param pid
	 * @return
	 */
    Integer selectStoreId(Integer pid);
}