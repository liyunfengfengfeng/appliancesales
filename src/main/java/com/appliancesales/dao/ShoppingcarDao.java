package com.appliancesales.dao;
import com.appliancesales.entity.Shoppingcar;
import java.util.List;
import com.appliancesales.common.Assist;
import org.apache.ibatis.annotations.Param;
public interface ShoppingcarDao{
    long getShoppingcarRowCount(Assist assist);
    List<Shoppingcar> selectShoppingcar(Assist assist);
    Shoppingcar selectShoppingcarById(Integer id);
    int insertShoppingcar(Shoppingcar value);
    int insertNonEmptyShoppingcar(Shoppingcar value);
    int deleteShoppingcarById(Integer id);
    int deleteShoppingcar(Assist assist);
    int updateShoppingcarById(Shoppingcar enti);
    int updateShoppingcar(@Param("enti") Shoppingcar value, @Param("assist") Assist assist);
    int updateNonEmptyShoppingcarById(Shoppingcar enti);
    int updateNonEmptyShoppingcar(@Param("enti") Shoppingcar value, @Param("assist") Assist assist);
	/**
	 * 查询当前用户的购物车id
	 * @return
	 */
    int selectCarIdOfCurUser();
}