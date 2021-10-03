package com.team3.shopping.dto;

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
}

/*
	private String oid;
	timeStamp�� ����?
	
   private String mid;
  	mid�� login ������ ������
  	
   private String odate;
   timeStamp�� ���� �ϸ鼭 ���� ������
   
   private String ozip_code;
   private String oaddress;
   private String odetail_address;
   private String orecipent;
   private String orecipent_tel;
   form �Է�
   
    private String ochannel;
   ����
   
   private String ototal_price;
  cart�� pid ���� ������ ���ͼ���ġ��

   
   private String ocard_name;
   private String ocard_installmentrate;
   private String ocard_installmentrate_period;
   radio ��ư���� ����
   
   private String oaccountholder;
   private String odeposit_deadline;
 	radio ��ư���� ����
 
 
 */