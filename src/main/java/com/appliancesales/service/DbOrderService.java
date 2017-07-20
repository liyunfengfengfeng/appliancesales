package com.appliancesales.service;
import java.util.List;
import com.appliancesales.entity.DbOrder;
import com.appliancesales.entity.Product;
import com.appliancesales.common.Assist;
public interface DbOrderService{
    long getDbOrderRowCount(Assist assist);
    List<DbOrder> selectDbOrder(Assist assist);
    DbOrder selectDbOrderById(Integer id);
    int insertDbOrder(DbOrder value);
    int insertNonEmptyDbOrder(DbOrder value);
    int deleteDbOrderById(Integer id);
    int deleteDbOrder(Assist assist);
    int updateDbOrderById(DbOrder enti);
    int updateDbOrder(DbOrder value, Assist assist);
    int updateNonEmptyDbOrderById(DbOrder enti);
    int updateNonEmptyDbOrder(DbOrder value, Assist assist);
	/**
	 * 创建新订单
	 * @return
	 */
    int createDbOrder(Integer carid,Product product);
    /**
     * 购物车中商品的数量
     * @param id
     * @return
     */
	int selectProducteCount(Integer carid);
	/**
	 * 根据carid查询出当前用户的所有订单
	 * @param carid
	 * @return
	 */
	List<DbOrder> selectDbOrderByCarid(int carid);
}