package com.team3.shopping.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.team3.shopping.dto.CategoryDto;
import com.team3.shopping.dto.ProductDto;

@Mapper
public interface ProductDao {
	public List<CategoryDto> getcategoryList(String cateCode);
	public CategoryDto currentCategory(String cateCode);
	public CategoryDto parentCategory(String cateCode);
	public List<ProductDto> getproductList(int catecode);

}
