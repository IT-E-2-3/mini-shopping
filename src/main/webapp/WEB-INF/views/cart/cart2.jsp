<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<link rel="icon" type="image/jpg"
	href="${pageContext.request.contextPath}/resources/images/icons/hansome.jpg" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" />
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/linearicons-v1.0.0/icon-font.min.css" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css" />


href="${pageContext.request.contextPath}/resources/css/app.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/util.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css?version=51" />

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart.css" />


</head>
<body>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">

</head>
<body>

	<form name="orderform" id="orderform" method="post" class="orderform"
		action="/order/order">

		<input type="hidden" name="cmd" value="order">
		<div class="basketdiv" id="basket">
			<div class="row head">
				<div class="subdiv">
					<div class="check">선택</div>
					<div class="img">이미지</div>
					<div class="pname">상품명</div>
				</div>
				<div class="subdiv">
					<div class="basketprice">가격</div>
					<div class="num">수량</div>
					<div class="sum">합계</div>
				</div>
				<div class="subdiv">

					<div class="basketcmd">삭제</div>
				</div>
				<div class="split"></div>
			</div>
			<c:forEach items="${OrderRowList}" var="OrderRow" varStatus="vs">

				<div class="row data">
					<div class="subdiv">
						<div class="check">
							<input type="checkbox" class="orders${vs.count}" name="buy"
								value="${vs.count}" onclick="javascript:basket.checkItem();">&nbsp;
						</div>
						<div class="img">
							<input hidden="hidden" value="${OrderRow.product_detail_url1}"
								class="orders${vs.count}"> <img
								src="${OrderRow.product_detail_url1}" width="60">
						</div>
						<div class="pname">
							<div class="col-sm-6 m-l-20 m-t-15">
								<a href="#" class="basket_tlt" style="color: black"> <input
									hidden="hidden" value="${OrderRow.pbrand}"
									class="orders${vs.count}">
									<p class="tlt">${OrderRow.pbrand}</p> <input hidden="hidden"
									value="${OrderRow.pname}" class="orders${vs.count}">
									<p class="sb_tlt">${OrderRow.pname}</p>
								</a>
								<p class="color_op mt-2" style="color: gray">
									<input hidden="hidden" value="${OrderRow.color_code}"
										class="orders${vs.count}"> <input hidden="hidden"
										value="${OrderRow.size_code}" class="orders${vs.count}">
									color : ${OrderRow.color_code}<span class="and_line">/</span>
									size : ${OrderRow.size_code}
								</p>
							</div>
						</div>
					</div>
					<div class="subdiv">
						<div class="basketprice">

							<input type="hidden" name="p_price" id="p_price${vs.count}"
								class="p_price orders${vs.count}" value="${OrderRow.pprice}">${OrderRow.pprice}원
						</div>
						<div class="num">
							<div class="updown m-b-15 b-t-5">

								<span onclick="javascript:basket.changePNum(${vs.count});"><i
									style="color: black;" class="far fa-plus-square up"></i></span>
									
									
									 <input
									style="display: inline; text-align: center;" type="text"
									name="p_num${vs.count}" id="p_num${vs.count}" size="2"
									maxlength="4" class="p_num m-l-5 m-r-5 orders${vs.count}"
									value="${OrderRow.oamount}"
									onkeyup="javascript:basket.changePNum(${vs.count});"> 
									
									
									<span
									onclick="javascript:basket.changePNum(${vs.count});"><i
									style="color: black;" class="far fa-minus-square down"></i></span>
							</div>
						</div>
						<div class="sum">${OrderRow.oamount*OrderRow.pprice}원</div>
					</div>
					<div class="subdiv">
						<div class="basketcmd">
							<a href="javascript:void(0)" class="abutton"
								onclick="javascript:basket.delItem();">삭제</a>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>


		<div class="right-align basketrowcmd">
			<a href="javascript:void(0)" class="abutton"
				onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
		</div>

		<div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 0
			개</div>
		<div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액:0
			원</div>

		<div id="goorder" class="">
			<div class="clear"></div>
			<div class="buttongroup center-align cmd">
				<a href="javascript:void(0)" class="btn btn-dark"
					onclick="javascript:basket.send();">선택한 상품 주문</a>
			</div>
		</div>
	</form>

	<!-- 확인버튼을 누르면 form 중에 select 된 녀석의 class 와 같은 이름이 있는 녀석을 모조리 얻어오기 얻어온 뒤에 객체로 뿌리기 -->

</body>
</html>



<script>
    let basket = {
    totalCount: 0, 
    totalPrice: 0,
    //체크한 장바구니 상품 비우기
    
    send: function(){
    	//json 배열 생성
    	//기본 리프래시 비활성화
    	 event.preventDefault();
    	var jsonArray = new Array();
    	
		document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
		//json 객체
		var jsonObj	= new Object();
		
        console.log(item);
        var className = item.getAttribute("class");
        console.log(className);
        let elementsall = document.querySelectorAll('.'+className);

        console.log(elementsall);

   		//product_detail_url1
        order1 = elementsall[1].value;
        jsonObj.product_detail_url1 = order1;
        //pbrand
        order2 = elementsall[2].value;
        console.log(order2);
        jsonObj.pbrand = order2;
        //pname
        order3 = elementsall[3].value;
        jsonObj.pname = order3;
        //color_code
        order4 = elementsall[4].value;
        jsonObj.color_code = order4;
        //size_code
        order5 = elementsall[5].value;
        jsonObj.size_code = order5;
        //pprice
        order6 = elementsall[6].value;
        console.log(order6);
        jsonObj.pprice = order6;
        //oamount
        order7 = elementsall[7].value;
        console.log(order7);
        jsonObj.oamount = order7;
        
        jsonObj = JSON.stringify(jsonObj);
    	//String 형태로 파싱한 객체를 다시 json으로 변환
    	jsonArray.push(JSON.parse(jsonObj));
        
        });
		console.log("확인");
		console.log(jsonArray);
		
		
		  $.ajax({
              url:"jsonTest",
              method:"post", 
              contentType:'application/json; charset=UTF-8',
              dataType:'json',
              data:JSON.stringify(jsonArray)
           }).done((data) => {
              console.log("result")
           })
		 	window.location.href="/order/";
           
           
		 //ajax 호출
      /*   $.ajax({
            url         :   "/checkTest/save",
            dataType    :   "json",
            contentType :   "application/x-www-form-urlencoded; charset=UTF-8",
            type        :   "post",
            data        :   objParams,
            success     :   function(retVal){

                if(retVal.code == "OK") {
                    alert(retVal.message);
                } else {
                    alert(retVal.message);
                }
                 
            },
            error       :   function(request, status, error){
                console.log("AJAX_ERROR");
            }
        }); */
        
  
		
/* 			
	  	$.ajax({
		     method: 'post',
		     url: 'order/orders',
		     data: JSON.stringify(jsonArray),
		     dataType: 'JSON',
		     contentType: "application/json",
		   }).done((data) =>{
			   console.log.("data"); 
			  console.log.(data); 
		   });
		  */
		
		 
		
    },
        
    delCheckedItem: function(){
        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
            item.parentElement.parentElement.parentElement.remove();
        });
       
    	
        this.reCalc();
        this.updateUI();
    },
   
    //재계산
    reCalc: function(){
        this.totalCount = 0;
        this.totalPrice = 0;
        document.querySelectorAll(".p_num").forEach(function (item) {
            if(item.parentElement.parentElement.parentElement.previousElementSibling.firstElementChild.firstElementChild.checked == true){
                var count = parseInt(item.getAttribute('value'));
                this.totalCount += count;
                var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
                this.totalPrice += count * price;
            }
        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
    },
    
   
    //화면 업데이트
    updateUI: function () {
        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
    },
    //개별 수량 변경
    changePNum: function (pos) {
        var item = document.querySelector('input[name=p_num'+pos+']');
        var p_num = parseInt(item.getAttribute('value'));
        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
        
        if (parseInt(newval) < 1 || parseInt(newval) > 99) { return false; }

        item.setAttribute('value', newval);
        item.value = newval;

        var price = item.parentElement.parentElement.previousElementSibling.firstElementChild.getAttribute('value');
        item.parentElement.parentElement.nextElementSibling.textContent = (newval * price).formatNumber()+"원";

     	//계산 갱신
        this.reCalc();
        this.updateUI();
    },
    checkItem: function () {
        this.reCalc();
        this.updateUI();
    },
    delItem: function () {
    
        event.target.parentElement.parentElement.parentElement.remove();
        this.reCalc();
        this.updateUI();
    }
}


// 숫자 3자리 콤마찍기
Number.prototype.formatNumber = function(){
    if(this==0) return 0;
    let regex = /(^[+-]?\d+)(\d{3})/;
    let nstr = (this + '');
    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
    return nstr;
};

    </script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>

