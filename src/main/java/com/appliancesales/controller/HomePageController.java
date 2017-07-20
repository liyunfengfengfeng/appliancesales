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
 * 首页
 */
@Controller
@RequestMapping(value="/homepage")
public class HomePageController {
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private DbOrderService dbOrderService;
	/**
	 * 到首页
	 */
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String homePage(Model model,HttpSession session){
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
		if(login_user!=null){
			//通过用户id找到购物车
			User user1 = userService.findCarByUid(login_user.getId());
			//购物车中商品数量
			int productCount = productService.selectProducteCount(login_user.getCarid());
			model.addAttribute("productCount", productCount);
		}
		model.addAttribute("loginout", "退出");
		model.addAttribute("people", "<span class='glyphicon glyphicon-user'></span>");
		return "index";
	}
	/**
	 * 通过查询某些条件回到首页商品
	 */
	@RequestMapping(value = "/queryProductByCondition", method = RequestMethod.POST)
	public String queryProductByCondition(String name, Model model, HttpSession session) {
		Product product1 = new Product();
		product1.setName(name);
		product1.setType("SPECIAL PRODUCTS");
		// 根据商品名称查询SPECIAL PRODUCTS商品
		List<Product> special_products = productService.selectSpecialProductsByProductName(product1);
		System.out.print("special_products size is :" + special_products.size());
		if (special_products != null && special_products.size() > 0) {
			model.addAttribute("special_products", special_products);
		}
		// 根据商品名称查询FEATURED PRODUCTS商品
		Product product2 = new Product();
		product2.setName(name);
		product2.setType("FEATURED PRODUCTS");
		List<Product> featured_products = productService.selectFeaturedProductsByProductName(product2);
		System.out.print("featured_products size is :" + featured_products.size());
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
		model.addAttribute("loginout", "退出");
		model.addAttribute("people", "<span class='glyphicon glyphicon-user'></span>");
		return "index";
	}
}
