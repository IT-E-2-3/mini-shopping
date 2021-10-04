package com.team3.shopping.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.team3.shopping.dto.CategoryDto;
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
	public String getList(Model model, @RequestParam("c")String cateCode){
		logger.info("실행");
		List<CategoryDto> subcategory = productService.getcategoryList(cateCode);
		CategoryDto current = productService.currentCategory(cateCode);
		CategoryDto parent = productService.parentCategory(cateCode);
		logger.info(cateCode);
		model.addAttribute("subcategory", subcategory);
		model.addAttribute("current", current);
		model.addAttribute("parent", parent);
		return "product/productList";
	}
}
