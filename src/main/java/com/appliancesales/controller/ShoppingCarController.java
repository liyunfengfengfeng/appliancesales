package com.appliancesales.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.appliancesales.entity.DbOrder;
import com.appliancesales.entity.Product;
import com.appliancesales.entity.Shoppingcar;
import com.appliancesales.entity.User;
import com.appliancesales.service.DbOrderService;
import com.appliancesales.service.ProductService;
import com.appliancesales.service.ShoppingcarService;
import com.appliancesales.service.UserService;

/**
 * 
 * 购物车
 */
@Controller
@RequestMapping(value = "/shoppingcar")
public class ShoppingCarController {
	@Autowired
	private UserService userService;
	@Autowired
	private ProductService productService;
	@Autowired
	private DbOrderService dbOrderService;
	@Autowired
	private ShoppingcarService shoppingcarService;

	/**
	 * 到购物车页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toCar", method = RequestMethod.GET)
	public String toCar(HttpSession session, Model model) {
		// 检查用户是否已登陆
		boolean flag = userService.checkUserLogin(session);
		if (!flag) {
			return "login_or_register";
		}

		User login_user = userService.getCurUser(session);
		// 检查该用户购物车中是否有商品
		int productCount1 = productService.selectProducteCount(login_user.getCarid());
		if (productCount1 == 0) {
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
			model.addAttribute("productCount", 0);
			model.addAttribute("loginout", "退出");
			model.addAttribute("people", "<span class='glyphicon glyphicon-user'></span>");
			return "index";
		}
		List<Product> products = productService.selectProductByCarId(login_user.getCarid());
		model.addAttribute("products", products);
		// 通过用户id找到购物车
		User user = userService.findCarByUid(login_user.getId());
		// 购物车中商品数量
		int productCount = productService.selectProducteCount(user.getCarid());
		model.addAttribute("productCount", productCount);
		// 查询购物车中商品的总金额
		int total = productService.selectTotalMoney(user.getCarid());
		model.addAttribute("total", total);
		model.addAttribute("user", user);
		model.addAttribute("loginout", "退出");
		model.addAttribute("people", "<span class='glyphicon glyphicon-user'></span>");
		return "car";
	}

	/**
	 * 把商品添加到购物车
	 */
	@RequestMapping(value = "/addProductToCar", method = RequestMethod.GET)
	public String addProductToCar(@RequestParam(value = "id", required = true) Integer id, HttpSession session,
			Model model) {
		// 检查用户是否已登陆
		boolean flag = userService.checkUserLogin(session);
		// 未登录
		if (!flag) {
			return "login_or_register";
		}
		// 获取商品信息
		Product product = productService.selectProductById(id);
		User user = userService.getCurUser(session);
		if (user != null) {
			product.setOrderid(user.getCarid());
			productService.updateNonEmptyProductById(product);
			// 购物车中商品数量
			int productCount = productService.selectProducteCount(user.getCarid());
			model.addAttribute("productCount", productCount);
		}

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

		return "index";
	}
}
