package com.appliancesales.service;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.appliancesales.common.Assist;
import com.appliancesales.entity.Shoppingcar;
import com.appliancesales.entity.User;
public interface UserService{
    long getUserRowCount(Assist assist);
    List<User> selectUser(Assist assist);
    User selectUserById(Integer id);
    int insertUser(User value);
    int insertNonEmptyUser(User value);
    int deleteUserById(Integer id);
    int deleteUser(Assist assist);
    int updateUserById(User enti);
    int updateUser(User value, Assist assist);
    int updateNonEmptyUserById(User enti);
    int updateNonEmptyUser(User value, Assist assist);
	/**
	 * 用户注册
	 * @param user 用户
	 * @return     注册数据
	 */
    int register(User user,Shoppingcar cart);
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
    boolean login(User user,Model model, HttpSession session);
	/**
	 * 检查用户是否登录
	 * @return
	 */
    boolean checkUserLogin(HttpSession session);
    /**
     * 通过用户id找到购物车
     * @param id
     * @return
     */
	User findCarByUid(Integer id);
	/**
	 * 获取当前登录用户
	 * @return
	 */
	User getCurUser(HttpSession session);

}