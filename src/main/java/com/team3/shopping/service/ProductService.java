package com.team3.shopping.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.team3.shopping.dao.ProductDao;
import com.team3.shopping.dto.CategoryDto;

@Service
public class ProductService {
	
	@Resource
	ProductDao productdao;
	
	public List<CategoryDto> getcategoryList(String cateCode) {
		return productdao.getcategoryList(cateCode);
	}
	public CategoryDto currentCategory(String cateCode){
		return productdao.currentCategory(cateCode);
	}
	public CategoryDto parentCategory(String cateCode) {
		return productdao.parentCategory(cateCode);
	}
}
