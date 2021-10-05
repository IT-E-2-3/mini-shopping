package com.team3.shopping.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.team3.shopping.dto.CategoryDto;
import com.team3.shopping.dto.Pager;
import com.team3.shopping.dto.ProductListDto;

@Mapper
public interface ProductDao {
	public List<CategoryDto> getcategoryList(String cateCode);
	public CategoryDto currentCategory(String cateCode);
	public CategoryDto parentCategory(String cateCode);
	public List<ProductListDto> getproductList(@Param("pager") Pager pager, @Param("cateCode") String catecode);
	public int getCountRows(String cateCode);
}
