package com.appliancesales.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.appliancesales.common.Assist;
import com.appliancesales.entity.Product;
import com.appliancesales.service.ProductService;
import com.appliancesales.util.Page;

@Controller
@RequestMapping(value="/category")
public class CategoryController {
	@Autowired
	private ProductService productService;
	@RequestMapping(value="/queryAllCategory")
	public String queryAllCategory(Model model){
		
		List<Product> products = productService.selectAllProduct();
		System.out.println("一共有" + products.size() +"件商品");
		if(products!=null&&products.size()>0){
			model.addAttribute("products", products);
		}
		return "category";
	}
	/**
	 * 查询所有商品分页显示
	 */
	@RequestMapping(value="/queryAllProduct")
	public String queryAllProduct(Model model,@RequestParam(value = "pno", required = true) Integer pno){
		List<Product> products = productService.selectAllProduct();
		Page page = new Page();
		int totalRecord = products.size();
		int pageSize = 1;
		//设置当前页
		page.setPageNo(pno);
		//每页容量
		page.setPageSize(1);
		//总页数
		int totalPageNum = (totalRecord  +  pageSize  - 1) / pageSize;  
		page.setTotalPage(totalPageNum);
		//总记录数
		page.setTotalRecord(totalRecord);
		model.addAttribute("page", page);
		//分页需要的起始与终止位置
		int start = (pno-1)* pageSize;
		int end = pageSize;
		page.setStart(start);
		page.setEnd(end);
		//依据分页查询出条件
		List<Product> productsPage = productService.selectProductByPage(page);
		System.out.println("一共有" + products.size() +"件商品");
		System.out.println("page.getStart() :" + page.getStart());
		System.out.println("page.getEnd() :" + page.getEnd());
		if(products!=null&&products.size()>0){
			for(Product product:productsPage){
				System.out.println(product.getName());
			}
			model.addAttribute("productsPage", productsPage);
		}
		
		
		return "allProduct";
	}
}
