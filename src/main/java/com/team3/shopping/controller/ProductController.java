package com.team3.shopping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team3.shopping.dto.CategoryDto;
import com.team3.shopping.dto.Pager;
import com.team3.shopping.dto.ProductListDto;
import com.team3.shopping.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Resource
	ProductService productService;
	
	@RequestMapping("/")
	public String home(){
		logger.info("실행");
		return "product/productList";
	}
	
	@GetMapping("/list")
	public String getList(@RequestParam(defaultValue="1") int pageNo, Model model, @RequestParam("c")String cateCode){
		logger.info("실행");
		List<CategoryDto> subcategory = productService.getcategoryList(cateCode);
		CategoryDto current = productService.currentCategory(cateCode);
		CategoryDto parent = productService.parentCategory(cateCode);
//		List<ProductListDto> plist = productService.getproductList(cateCode);
		logger.info(cateCode);
		
		model.addAttribute("subcategory", subcategory);
		model.addAttribute("current", current);
		model.addAttribute("parent", parent);
		
		int totalRows = productService.getCountRows(cateCode);
		Pager pager = new Pager(9, 5, totalRows, pageNo);
		model.addAttribute("pager", pager);
		
		List<ProductListDto> plist = productService.getproductList(pager, cateCode);
		model.addAttribute("plist", plist);
		return "product/productList";
	}
	
	@GetMapping("/detail")
	public String getDetailView() {
		return "product/productDetail";
	}
}
