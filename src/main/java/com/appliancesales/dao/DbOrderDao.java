package com.appliancesales.dao;
import com.appliancesales.entity.DbOrder;
import java.util.List;
import com.appliancesales.common.Assist;
import org.apache.ibatis.annotations.Param;
public interface DbOrderDao{
    long getDbOrderRowCount(Assist assist);
    List<DbOrder> selectDbOrder(Assist assist);
    DbOrder selectDbOrderById(Integer id);
    int insertDbOrder(DbOrder value);
    int insertNonEmptyDbOrder(DbOrder value);
    int deleteDbOrderById(Integer id);
    int deleteDbOrder(Assist assist);
    int updateDbOrderById(DbOrder enti);
    int updateDbOrder(@Param("enti") DbOrder value, @Param("assist") Assist assist);
    int updateNonEmptyDbOrderById(DbOrder enti);
    int updateNonEmptyDbOrder(@Param("enti") DbOrder value, @Param("assist") Assist assist);
	/**
	 * 查询目前订单的总记录数
	 * @return
	 */
    int selectDbOrderCount();
    /**
     * 购物车中商品的数量
     * @param id
     * @return
     */
	int selectProducteCount(Integer id);
	/**
	 * 根据carid查询出当前用户的所有订单
	 * @param carid
	 * @return
	 */
	List<DbOrder> selectDbOrderByCarid(int carid);
}