package com.appliancesales.service;
import java.util.List;

import com.appliancesales.entity.DbOrder;
import com.appliancesales.entity.Product;
import com.appliancesales.util.Page;
import com.appliancesales.common.Assist;
public interface ProductService{
    long getProductRowCount(Assist assist);
    List<Product> selectProduct(Assist assist);
    Product selectProductById(Integer id);
    int insertProduct(Product value);
    int insertNonEmptyProduct(Product value);
    int deleteProductById(Integer id);
    int deleteProduct(Assist assist);
    int updateProductById(Product enti);
    int updateProduct(Product value, Assist assist);
    int updateNonEmptyProductById(Product enti);
    int updateNonEmptyProduct(Product value, Assist assist);
	/**
	 * 查询SPECIAL PRODUCTS商品
	 * @return
	 */
    List<Product> selectSpecialProducts();
    /**
     * 查询FEATURED PRODUCTS商品
     * @return
     */
	List<Product> selectFeaturedProducts();
	/**
	 * 查询出用户添加到购物车的所有商品
	 * @param orders
	 * @return
	 */
	List<Product> selectAllCarProducts(List<DbOrder> orders);
	/**
	 * 查询购物车中商品的数量
	 * @param carid
	 * @return
	 */
	int selectProducteCount(Integer carid);
	/**
	 * 查询购物车中所有的商品
	 * @param carid
	 * @return
	 */
	List<Product> selectProductByCarId(Integer carid);
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
	 * 结账
	 * @param carid
	 */
	void checkOutForProduct(Integer carid);
	/**
	 * 查询所有商品
	 * @return
	 */
	List<Product> selectAllProduct();
	/**
	 * 分页查询需要的数据
	 * @param page
	 * @return
	 */
	List<Product> selectProductByPage(Page page);
	
}