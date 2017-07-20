package com.appliancesales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * 用于测试
 */
@Controller
@RequestMapping("/test")
public class TestController {
	/**
	 * 到首页页面
	 * @return
	 */
	@RequestMapping("/index")
	public String goForIndex(Model model){
		return "index";
	}
	
	
	/**
	 * 到商品页面
	 * @return
	 */
	@RequestMapping("/product")
	public String goForProduct(Model model){
		model.addAttribute("error", "edddddddddddddddddrror");
		return "product";
	}
	
	
	/**
	 * 到联系我们页面
	 * @return
	 */
	@RequestMapping("/contact")
	public String goForContact(Model model){
		model.addAttribute("error", "edddddddddddddddddrror");
		return "contact";
	}
	
	
	/**
	 * 到购物车页面
	 * @return
	 */
	@RequestMapping("/cart")
	public String goForCart(Model model){
		return "cart";
	}
	
	
	/**
	 * 到登录/注册页面
	 * @return
	 */
	@RequestMapping("/login_or_register")
	public String goForAccount(Model model){
		return "login_or_register";
	}
	
	
	/**
	 * 到商品分类页面
	 * @return
	 */
	@RequestMapping("/category")
	public String goForCategory(Model model){
		return "category";
	}
	/**
	 * 到底部页面
	 */
	@RequestMapping("/top")
	public String goForTop(Model model){
		return "top";
	}
	/**
	 * 到头部页面
	 */
	@RequestMapping("/bottom")
	public String goForBottom(Model model){
		return "bottom";
	}
}
