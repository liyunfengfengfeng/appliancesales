package com.appliancesales.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.appliancesales.entity.Messageboard;
import com.appliancesales.entity.Product;
import com.appliancesales.entity.User;
import com.appliancesales.service.DbOrderService;
import com.appliancesales.service.MessageboardService;
import com.appliancesales.service.ProductService;
import com.appliancesales.service.UserService;

@Controller
@RequestMapping(value = "/messageBoard")
public class MessageBoardController {
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private DbOrderService dbOrderService;
	@Autowired
	private MessageboardService messageboardService;
	@RequestMapping(value="/leaveMessage",method=RequestMethod.POST)
	public String leaveMessage(Model model, HttpSession session,Messageboard messageboard) {
		User user = userService.getCurUser(session);
		if(user==null){
			return "login_or_register";
		}
		messageboardService.insertMessageboard(messageboard);
		// 查询SPECIAL PRODUCTS商品
		List<Product> special_products = productService.selectSpecialProducts();
		if (special_products != null && special_products.size() > 0) {
			model.addAttribute("special_products", special_products);
		}
		// 查询FEATURED PRODUCTS商品
		List<Product> featured_products = productService.selectFeaturedProducts();
		if (featured_products != null && featured_products.size() > 0) {
			model.addAttribute("featured_products", featured_products);
		}
		// 获取当前登录用户
		User login_user = userService.getCurUser(session);
		if (login_user != null) {
			// 通过用户id找到购物车
			User user1 = userService.findCarByUid(login_user.getId());
			// 购物车中商品数量
			int productCount = productService.selectProducteCount(login_user.getCarid());
			model.addAttribute("productCount", productCount);

		}
		return "/index";
	}
}
