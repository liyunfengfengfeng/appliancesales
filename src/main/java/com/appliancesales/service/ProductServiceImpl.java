package com.appliancesales.service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appliancesales.dao.ProductDao;
import com.appliancesales.entity.DbOrder;
import com.appliancesales.entity.Product;
import com.appliancesales.util.Page;
import com.appliancesales.common.Assist;
@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
    private ProductDao productDao;
    @Override
    public long getProductRowCount(Assist assist){
        return productDao.getProductRowCount(assist);
    }
    @Override
    public List<Product> selectProduct(Assist assist){
        return productDao.selectProduct(assist);
    }
    @Override
    public Product selectProductById(Integer id){
        return productDao.selectProductById(id);
    }
    @Override
    public int insertProduct(Product value){
        return productDao.insertProduct(value);
    }
    @Override
    public int insertNonEmptyProduct(Product value){
        return productDao.insertNonEmptyProduct(value);
    }
    @Override
    public int deleteProductById(Integer id){
        return productDao.deleteProductById(id);
    }
    @Override
    public int deleteProduct(Assist assist){
        return productDao.deleteProduct(assist);
    }
    @Override
    public int updateProductById(Product enti){
        return productDao.updateProductById(enti);
    }
    @Override
    public int updateProduct(Product value, Assist assist){
        return productDao.updateProduct(value,assist);
    }
    @Override
    public int updateNonEmptyProductById(Product enti){
        return productDao.updateNonEmptyProductById(enti);
    }
    @Override
    public int updateNonEmptyProduct(Product value, Assist assist){
        return productDao.updateNonEmptyProduct(value,assist);
    }

    public ProductDao getProductDao() {
        return this.productDao;
    }

    public void setProductDao(ProductDao productDao) {
        this.productDao = productDao;
    }
    /**
     * 查询SPECIAL PRODUCTS商品
     */
	@Override
	public List<Product> selectSpecialProducts() {
		Product product = new Product();
		product.setType("SPECIAL PRODUCTS");
		return productDao.selectSpecialProducts(product);
	}
	/**
	 * 查询FEATURED PRODUCTS商品
	 */
	@Override
	public List<Product> selectFeaturedProducts() {
		Product product = new Product();
		product.setType("FEATURED PRODUCTS");
		return productDao.selectFeaturedProducts(product);
	}
	/**
	 * 查询出用户添加到购物车的所有商品
	 */
	@Override
	public List<Product> selectAllCarProducts(List<DbOrder> orders) {
		List<Product> products = new ArrayList<Product>();
		if(orders!=null&&orders.size()>0){
			System.out.println("orsers.size is " + orders.size());
			for(DbOrder order:orders){
				if(order!=null){
					if(order.getId()!=null&&!order.getId().equals("")){
						//由订单查商品
						Product product = productDao.selectProductByOrderId(order.getId());
						products.add(product);
					}
				}
			}
		}
		return products;
	}
	/**
	 * 查询购物车中商品的数量
	 */
	@Override
	public int selectProducteCount(Integer carid) {
		// TODO Auto-generated method stub
		return productDao.selectProducteCount(carid);
	}
	/**
	 * 查询购物车中所有的商品
	 */
	@Override
	public List<Product> selectProductByCarId(Integer id) {
		// TODO Auto-generated method stub
		List<Product> productes = productDao.selectProductByCarId(id);
		return productes;
	}
	/**
	 * 根据商品名称查询SPECIAL PRODUCTS商品
	 * @param product
	 * @return
	 */
	@Override
	public List<Product> selectSpecialProductsByProductName(Product product) {
		
		List<Product> productes = productDao.selectSpecialProductsByProductName(product);
		return productes;
	}
	/**
	 * 根据商品名称查询FEATURED PRODUCTS商品
	 * @param product
	 * @return
	 */
	@Override
	public List<Product> selectFeaturedProductsByProductName(Product product) {
		
		List<Product> productes = productDao.selectFeaturedProductsByProductName(product);
		return productes;
	}
	/**
	 * 查询购物车中商品的总金额
	 */
	@Override
	public int selectTotalMoney(Integer carid) {
		int total = productDao.selectTotalMoney(carid);
		return total;
	}
	/**
	 * 结账
	 */
	@Override
	public void checkOutForProduct(Integer carid) {
		//查询出该用户的所有商品
		List<Product> products = productDao.selectProductByCarId(carid);
		if(products!=null&&products.size()>0){
			for(Product product:products){
				product.setOrderid(0);
				productDao.updateNonEmptyProductById(product);
			}
		}
	}
	/**
	 * 查询所有商品
	 */
	@Override
	public List<Product> selectAllProduct() {
		// TODO Auto-generated method stub
		return productDao.selectAllProduct();
	}
	/**
	 * 分页查询需要的数据
	 * @param page
	 * @return
	 */
	@Override
	public List<Product> selectProductByPage(Page page) {
		
		return productDao.selectProductByPage(page);
	}
	

}