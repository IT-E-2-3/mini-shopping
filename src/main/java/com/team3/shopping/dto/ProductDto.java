package com.team3.shopping.dto;

import lombok.Data;

@Data
public class ProductDto {
	private String pid;
	private String pname;
	private String pdetail;
	private int pprice;
	private String pbrand;
	private String category_code;
}
