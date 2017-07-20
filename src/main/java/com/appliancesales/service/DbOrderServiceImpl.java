package com.appliancesales.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appliancesales.dao.DbOrderDao;
import com.appliancesales.entity.DbOrder;
import com.appliancesales.entity.Product;
import com.appliancesales.util.DataUtil;
import com.appliancesales.common.Assist;
/**
 * 
 * 订单业务层
 */
@Service
public class DbOrderServiceImpl implements DbOrderService{
	@Autowired
    private DbOrderDao dbOrderDao;
    @Override
    public long getDbOrderRowCount(Assist assist){
        return dbOrderDao.getDbOrderRowCount(assist);
    }
    @Override
    public List<DbOrder> selectDbOrder(Assist assist){
        return dbOrderDao.selectDbOrder(assist);
    }
    @Override
    public DbOrder selectDbOrderById(Integer id){
        return dbOrderDao.selectDbOrderById(id);
    }
    @Override
    public int insertDbOrder(DbOrder value){
        return dbOrderDao.insertDbOrder(value);
    }
    @Override
    public int insertNonEmptyDbOrder(DbOrder value){
        return dbOrderDao.insertNonEmptyDbOrder(value);
    }
    @Override
    public int deleteDbOrderById(Integer id){
        return dbOrderDao.deleteDbOrderById(id);
    }
    @Override
    public int deleteDbOrder(Assist assist){
        return dbOrderDao.deleteDbOrder(assist);
    }
    @Override
    public int updateDbOrderById(DbOrder enti){
        return dbOrderDao.updateDbOrderById(enti);
    }
    @Override
    public int updateDbOrder(DbOrder value, Assist assist){
        return dbOrderDao.updateDbOrder(value,assist);
    }
    @Override
    public int updateNonEmptyDbOrderById(DbOrder enti){
        return dbOrderDao.updateNonEmptyDbOrderById(enti);
    }
    @Override
    public int updateNonEmptyDbOrder(DbOrder value, Assist assist){
        return dbOrderDao.updateNonEmptyDbOrder(value,assist);
    }

    public DbOrderDao getDbOrderDao() {
        return this.dbOrderDao;
    }

    public void setDbOrderDao(DbOrderDao dbOrderDao) {
        this.dbOrderDao = dbOrderDao;
    }
    /**
     * 创建新订单
     */
	@Override
	public int createDbOrder(Integer carid,Product product) {
		//查询目前订单的总记录数
		int count = dbOrderDao.selectDbOrderCount();
		//添加订单
		DbOrder order = new DbOrder();
		order.setCarid(carid);
		int id = count + 1;
		order.setId(id);
		//设置下单时间
		String ordertime = DataUtil.getCurrentTime();
		order.setOrdertime(ordertime);
		order.setTotal(product.getFavorablePrice());
		//保存订单
		dbOrderDao.insertNonEmptyDbOrder(order);
		return id;
	}
	/**
	 * 购物车中商品的数量
	 */
	@Override
	public int selectProducteCount(Integer carid) {
		
		return dbOrderDao.selectProducteCount(carid);
	}
	/**
	 * 根据carid查询出当前用户的所有订单
	 */
	@Override
	public List<DbOrder> selectDbOrderByCarid(int carid) {
		// TODO Auto-generated method stub
		return dbOrderDao.selectDbOrderByCarid(carid);
	}

}