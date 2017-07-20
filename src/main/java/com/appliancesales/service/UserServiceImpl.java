package com.appliancesales.service;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.appliancesales.common.Assist;
import com.appliancesales.dao.ShoppingcarDao;
import com.appliancesales.dao.UserDao;
import com.appliancesales.entity.Shoppingcar;
import com.appliancesales.entity.User;
import com.appliancesales.util.DataUtil;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
    private UserDao userDao;
	@Autowired
    private ShoppingcarDao shoppingcarDao;
    @Override
    public long getUserRowCount(Assist assist){
        return userDao.getUserRowCount(assist);
    }
    @Override
    public List<User> selectUser(Assist assist){
        return userDao.selectUser(assist);
    }
    @Override
    public User selectUserById(Integer id){
        return userDao.selectUserById(id);
    }
    @Override
    public int insertUser(User value){
        return userDao.insertUser(value);
    }
    @Override
    public int insertNonEmptyUser(User value){
        return userDao.insertNonEmptyUser(value);
    }
    @Override
    public int deleteUserById(Integer id){
        return userDao.deleteUserById(id);
    }
    @Override
    public int deleteUser(Assist assist){
        return userDao.deleteUser(assist);
    }
    @Override
    public int updateUserById(User enti){
        return userDao.updateUserById(enti);
    }
    @Override
    public int updateUser(User value, Assist assist){
        return userDao.updateUser(value,assist);
    }
    @Override
    public int updateNonEmptyUserById(User enti){
        return userDao.updateNonEmptyUserById(enti);
    }
    @Override
    public int updateNonEmptyUser(User value, Assist assist){
        return userDao.updateNonEmptyUser(value,assist);
    }

    public UserDao getUserDao() {
        return this.userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
    /**
     * 用户注册
     */
	@Override
	public int register(User user,Shoppingcar car) {
		int num = 0;
		car = new Shoppingcar();
		if(user!=null&&car!=null){
			//查询当前注册用户的购物车id
			int carid = shoppingcarDao.selectCarIdOfCurUser()+1;
			car.setId(carid);
			//购物车注册
			shoppingcarDao.insertNonEmptyShoppingcar(car);
			user.setCarid(carid);
			String gender = user.getGender();
			if(gender.equals("male")){
				user.setGender("男");
			}else{
				user.setGender("女");
			}
			//加密密码
			user.setPassword(DataUtil.md5(user.getPassword().trim()));
			//用户注册
			num = userDao.insertNonEmptyUser(user);
		}
		return num;
	}
	/**
	 * 用户登录
	 */
	@Override
	public boolean login(User user,Model model, HttpSession session) {
		//加密密码
		user.setPassword(DataUtil.md5(user.getPassword().trim()));
		List<User> user1 = userDao.login(user);
		System.out.println("user1.size()   :" + user1.size());
		//用户登录成功
		if(user1!=null&&user1.size()==1){
			
			return true;
		}
		return false;
	}
	/**
	 * 检查用户是否登录
	 */
	@Override
	public boolean checkUserLogin(HttpSession session) {
		User user = (User) session.getAttribute("user");
		if(user!=null){
			return true;
		}
		return false;
	}
	/**
	 * 通过用户id找到购物车
	 */
	@Override
	public User findCarByUid(Integer id) {
		// TODO Auto-generated method stub
		return userDao.findCarByUid(id);
	}
	/**
	 * 获取当前登录用户
	 */
	@Override
	public User getCurUser(HttpSession session) {
		User user = (User) session.getAttribute("user");
		if(user!=null){
			User currentUser = userDao.getCurUser(user);
			return currentUser;
		}
		return null;
	}
	
	 

}