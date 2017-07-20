package com.appliancesales.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.appliancesales.entity.Product;
import com.appliancesales.entity.User;
import com.appliancesales.service.DbOrderService;
import com.appliancesales.service.ProductService;
import com.appliancesales.service.UserService;

/**
 * 
 * 用户登录
 */
@Controller
@RequestMapping(value="/login")
public class LoginController {
	@Autowired
	private UserService userService;
	@Autowired
	private ProductService productService;
	@Autowired
	private DbOrderService dbOrderService;
	/**
	 * 到用户登录页面
	 * @return
	 */
	@RequestMapping(value="/toLogin")
	public String toLogin(){
		
		return "login_or_register";
	}
	/**
	 * 用户登录
	 * @return
	 */
	@RequestMapping(value="/userLogin",method=RequestMethod.POST)
	public String userLogin(User user,Model model, HttpSession session){
		boolean flag = userService.login(user,model, session);
		//登录成功
		if(flag){
			//保存用户信息到会话中
			model.addAttribute("user", user);
			model.addAttribute("loginout", "退出");
			model.addAttribute("people", "<span class='glyphicon glyphicon-user'></span>");
			session.setAttribute("user", user);
			//查询SPECIAL PRODUCTS商品
			List<Product> special_products = productService.selectSpecialProducts();
			if(special_products!=null&&special_products.size()>0){
				model.addAttribute("special_products", special_products);
			}
			//查询FEATURED PRODUCTS商品
			List<Product> featured_products = productService.selectFeaturedProducts();
			if(featured_products!=null&&featured_products.size()>0){
				model.addAttribute("featured_products", featured_products);
			}
			//获取当前登录用户
			User login_user = userService.getCurUser(session);
			//通过用户id找到购物车
			User user1 = userService.findCarByUid(login_user.getId());
			//购物车中商品数量
			int productCount = productService.selectProducteCount(login_user.getCarid());
			model.addAttribute("productCount", productCount);
			return "index";
		}
		//登陆页面
		user.setName("");
		model.addAttribute("user", user);
		return "login_or_register";
	}
	/**
	 * 退出
	 */
	@RequestMapping(value="/signout",method=RequestMethod.GET)
	public String signout(HttpSession session){
		session.invalidate();
		return "login_or_register";
	}
}
