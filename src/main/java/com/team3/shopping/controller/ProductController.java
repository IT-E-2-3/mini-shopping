package com.team3.shopping.controller;

import java.util.ArrayList;
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
		List<List<ProductListDto>> colorlist = new ArrayList<>();
		
		for(ProductListDto p: plist) {
			String pid = p.getPid();
			List<ProductListDto> colorlist_temp = productService.getColorList(pid);
			colorlist.add(colorlist_temp);
		}
//		for(List<ProductListDto> colors : colorlist) {
//			System.out.println("###########" +colors);
//		}
		
		model.addAttribute("plist", plist);
		model.addAttribute("colorlist", colorlist);
		return "product/productList";
	}
	
	@GetMapping("/detail")
	public String getDetailView(@RequestParam("pid") String pid, @RequestParam("co") String color, Model model) {
		logger.info("실행");
		ProductListDto product = productService.getproductDetail(pid, color);
		List<ProductListDto> sizelist = productService.getSizeList(pid, color);
		List<ProductListDto> colorlist = productService.getColorList(pid);
		model.addAttribute("product", product);
		model.addAttribute("sizelist", sizelist);
		model.addAttribute("colorlist", colorlist);
		
		ProductListDto matching_cloth = productService.getMatchingCloth(pid, color);
		model.addAttribute("matching_cloth", matching_cloth);
//		System.out.println("#########매칭 컬러코드 : " + matching_cloth.getColor_code());
		return "product/productDetail";
	}
}
