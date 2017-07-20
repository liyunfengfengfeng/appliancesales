package com.appliancesales.dao;
import com.appliancesales.common.Assist;
import com.appliancesales.entity.Shoppingcar;
import com.appliancesales.entity.User;
import java.util.List;
import org.apache.ibatis.annotations.Param;
public interface UserDao{
    long getUserRowCount(Assist assist);
    List<User> selectUser(Assist assist);
    User selectUserById(Integer id);
    int insertUser(User value);
    int insertNonEmptyUser(User value);
    int deleteUserById(Integer id);
    int deleteUser(Assist assist);
    int updateUserById(User enti);
    int updateUser(@Param("enti") User value, @Param("assist") Assist assist);
    int updateNonEmptyUserById(User enti);
    int updateNonEmptyUser(@Param("enti") User value, @Param("assist") Assist assist);
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
    List<User> login(User user);
    /**
     * 通过用户id找到购物车
     * @param id
     * @return
     */
	User findCarByUid(Integer id);
	/**
	 * 获取当前登陆用户
	 * @param user
	 * @return
	 */
	User getCurUser(User user);

}