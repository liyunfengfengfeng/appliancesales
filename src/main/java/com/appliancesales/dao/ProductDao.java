package com.appliancesales.dao;
import com.appliancesales.entity.Product;
import com.appliancesales.util.Page;

import java.util.HashMap;
import java.util.List;
import com.appliancesales.common.Assist;
import org.apache.ibatis.annotations.Param;
public interface ProductDao{
    long getProductRowCount(Assist assist);
    List<Product> selectProduct(Assist assist);
    Product selectProductById(Integer id);
    int insertProduct(Product value);
    int insertNonEmptyProduct(Product value);
    int deleteProductById(Integer id);
    int deleteProduct(Assist assist);
    int updateProductById(Product enti);
    int updateProduct(@Param("enti") Product value, @Param("assist") Assist assist);
    int updateNonEmptyProductById(Product enti);
    int updateNonEmptyProduct(@Param("enti") Product value, @Param("assist") Assist assist);
	/**
	 * 查询SPECIAL PRODUCTS商品
	 * @return
	 */
    List<Product> selectSpecialProducts(Product product);
	/**
	 * 查询FEATURED PRODUCTS商品
	 * @return
	 */
    List<Product> selectFeaturedProducts(Product product);
    /**
     * 根据订单id查询购物车的商品
     * @param id
     * @return
     */
	Product selectProductByOrderId(Integer id);
	/**
	 * 查询购物车中商品的数量
	 * @param carid
	 * @return
	 */
	int selectProducteCount(Integer carid);
	/**
	 * 查询购物车中所有的商品
	 * @param id
	 * @return
	 */
	List<Product> selectProductByCarId(Integer id);
	/**
	 * 根据商品名称查询SPECIAL PRODUCTS商品
	 * @param product
	 * @return
	 */
	List<Product> selectSpecialProductsByProductName(Product product);
	/**
	 * 根据商品名称查询FEATURED PRODUCTS商品
	 * @param product
	 * @return
	 */
	List<Product> selectFeaturedProductsByProductName(Product product);
	/**
	 * 查询购物车中商品的总金额
	 * @param carid
	 * @return
	 */
	int selectTotalMoney(Integer carid);
	/**
	 * 查询所有商品
	 * @return
	 */
	List<Product> selectAllProduct();
	/**
	 * 查询分页需要的数据
	 * @param page
	 * @return
	 */
	List<Product> selectProductByPage(Page page);
}