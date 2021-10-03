package com.team3.shopping.dto;


import java.util.List;

import lombok.Data;

@Data
public class OrderDto {

	private String oid;
	private String mid;
	private String odate;
	private String ozip_code;
	private String oaddress;
	private String odetail_address;
	private String orecipent;
	private String orecipent_tel;
	private String ototal_price;
	private String ochannel="the handsome";
	private String ocard_name;
	private String ocard_installmentrate;
	private String ocard_installmentrate_period;
	private String oaccountholder;
	private String odeposit_deadline;
	
	private String ordertel;
	private String oaddtionaltel;
	private String orequest;
	private String orecipent_email;
	
	private List<OrderItemDto> orderItems;
	private String mainItem;
	private Integer productKindNum;
}

/*
		private String OID;
	private String MID;
	private String ODATE;
	private Integer OZIP_CODE;
	private String OADDRESS;
	private String ORECIPIENT;
	private String ORECIPIENT_TEL;
	private Integer OTOTAL_PRICE;
	private String OCHANNEL;
	private String OCARD_NAME;
	private Integer OCARD_INSTALLMENTRATE;
	private Integer OCARD_INSTALLMENT_PERIOD;
	private String OACCOUNTHOLDER;
	private String ODEPOSIT_DEADLINE;
	
*/