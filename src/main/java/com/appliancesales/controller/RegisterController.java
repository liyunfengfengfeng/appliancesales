package com.appliancesales.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.appliancesales.entity.Shoppingcar;
import com.appliancesales.entity.User;
import com.appliancesales.service.UserService;

import net.sf.json.JSONArray;

/**
 * 
 *  用户注册
 */
@Controller
@RequestMapping(value = "/register")
public class RegisterController {
	@Autowired
	private UserService userService;
	/**
	 * 到注册页面
	 * @return
	 */
	@RequestMapping(value="/toRegister")
	public String toRegister(){
		return "login_or_register";
	}
	/**
	 * 用户注册
	 * @return
	 */
	
	@RequestMapping(value="/userRegister")
	public String register(User user,Shoppingcar cart,Model model){
		//用户注册
		int num = userService.register(user,cart);
		String info = "";
		if(num==1){
			info = "register successfully";
		}
		user = new User();
		user.setName("");
		model.addAttribute("user", user);
		return "login_or_register";
	}
}
