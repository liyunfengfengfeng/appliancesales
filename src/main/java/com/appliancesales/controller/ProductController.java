package com.appliancesales.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.appliancesales.common.Assist;
import com.appliancesales.entity.Product;
import com.appliancesales.entity.Saler;
import com.appliancesales.entity.Store;
import com.appliancesales.entity.User;
import com.appliancesales.service.DbOrderService;
import com.appliancesales.service.ProductService;
import com.appliancesales.service.SalerService;
import com.appliancesales.service.StoreService;
import com.appliancesales.service.UserService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private DbOrderService dbOrderService;
	@Autowired
	private StoreService storeService;
	@Autowired
	private SalerService salerService;

	/**
	 * 用户结账
	 * 
	 * @return
	 */
	@RequestMapping(value = "/checkOut", method = RequestMethod.GET)
	public String checkOut(@RequestParam(value = "total", required = true) Integer total, HttpSession session,
			Model model) {
		User user = userService.getCurUser(session);
		if (user != null) {
			int carid = user.getCarid();

			List<Product> products = productService.selectProductByCarId(carid);
			if (products != null && products.size() > 0) {
				for(Product product:products){
					//System.out.println("店面id是" + product.getStoreid() + "商品价格是： " + product.getFavorablePrice());
					Store store = storeService.selectStoreById(product.getStoreid());
					//System.out.println("卖家的id是   ：" + store.getSalerid());
					Saler saler = salerService.selectSalerById(store.getSalerid());
					saler.setAccount(saler.getAccount()+product.getFavorablePrice());
					salerService.updateNonEmptySalerById(saler);
					product.setOrderid(0);
					productService.updateNonEmptyProductById(product);
				}
				
			}
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
		// 获取当前登录用户
		User login_user = userService.getCurUser(session);
		// 通过用户id找到购物车
		User user1 = userService.findCarByUid(login_user.getId());
		// 购物车中商品数量
		int productCount = productService.selectProducteCount(login_user.getCarid());
		model.addAttribute("productCount", productCount);
		model.addAttribute("loginout", "退出");
		model.addAttribute("people", "<span class='glyphicon glyphicon-user'></span>");
		return "/index";
	}
	/**
	 * 查看商品详细信息
	 */
	@RequestMapping("/queryProductDetail")
	public String queryProductDetail(@RequestParam(value = "id", required = true) Integer id,Model model,HttpSession session){
		Product product = productService.selectProductById(id);
		//获取当前登录用户
		User login_user = userService.getCurUser(session);
		if (login_user != null) {
			// 通过用户id找到购物车
			User user1 = userService.findCarByUid(login_user.getId());
			// 购物车中商品数量
			int productCount = productService.selectProducteCount(login_user.getCarid());

			model.addAttribute("productCount", productCount);
		}
		model.addAttribute("product", product);
		model.addAttribute("loginout", "退出");
		model.addAttribute("people", "<span class='glyphicon glyphicon-user'></span>");
		return "product";
	}
	/**
	 * 删除购物车中的商品
	 */
	@RequestMapping(value="/removeProduct",method=RequestMethod.GET)
	public String removeProduct(Model model,@RequestParam(value = "id", required = true) Integer id,HttpSession session){
		Product product = productService.selectProductById(id);
		product.setOrderid(0);
		productService.updateNonEmptyProductById(product);
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
		//获取当前登录用户
		User login_user = userService.getCurUser(session);
		//通过用户id找到购物车
		User user1 = userService.findCarByUid(login_user.getId());
		//购物车中商品数量
		int productCount = productService.selectProducteCount(login_user.getCarid());
		model.addAttribute("productCount", productCount);
		return "index";
	}
}
