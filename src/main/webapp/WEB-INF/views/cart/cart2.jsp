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
<!--===============================================================================================-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" />
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/bootstrap-4.6.0-dist/js/bootstrap.bundle.min.js"></script>

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/fonts/linearicons-v1.0.0/icon-font.min.css" />
<!--===============================================================================================-->

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css" />
<!--===============================================================================================-->

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/app.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/util.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css?version=51" />


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/MagnificPopup/magnific-popup.css" />


</head>
<body>
	<nav id="header-fixed"
		class="navbar navbar-expand-sm navbar-light bg-white border-bottom ">
		<div class="collapse navbar-collapse" id="navbarColor"
			style="display: flex; justify-content: space-around">
			<div class="left-logo">
				<a class="navbar-brand ml-2 font-weight-bold" href="/"><img
					src="${pageContext.request.contextPath}/resources/images/top-header-handsome-logo.png" /></a>
			</div>
			<div class="middle">
				<ul id="navbar" class="navbar-nav"
					style="display: flex; margin-left: 15px">
					<li class="nav-item"><a class="nav-link" href="#"
						data-action="키즈">키즈</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						data-action="라이프스타일">라이프스타일</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						data-action="남성">남성</a></li>
					<li class="nav-item"><a class="nav-link" href="#"
						data-action="여성">여성</a></li>
				</ul>
			</div>

			<div class="right">
				<ul class="navbar-nav">
					<sec:authorize access="isAnonymous()">
						<li class="nav-item"><a class="nav-link" href="/loginform">로그인</a>
						</li>
					</sec:authorize>

					<sec:authorize access="isAuthenticated()">

						<%-- 사이트간 요청 위조 방지가 비활성화되어 있을 경우 --%>
						<%-- 
							<a href="${pageContext.request.contextPath}/logout" 
							   class="btn btn-success btn-sm">로그아웃</a> 
							--%>

						<%-- 사이트간 요청 위조 방지가 활성화되어 있을 경우 --%>



						<li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a>
						</li>
					</sec:authorize>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/cart/">쇼핑백(숫자)</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/order/orderList">주문조회</a></li>
					<li class="nav-item"><a class="nav-link"
						href="order_detail.html">마이쿠폰</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- 키즈 category -->
	<div id="키즈" class="sub-back">
		<li class="category-list">전체보기</li>
		<ul class="category-list"
			style="display: flex; flex-direction: column">
			<div class="largecategory">의류</div>
			<li>하의</li>
			<li>상의</li>
		</ul>

		<ul class="category-list">
			<div class="largecategory">잡화</div>
			<li>기타 소품</li>
		</ul>
	</div>

	<!-- 라이프스타일 -->
	<div id="라이프스타일" class="sub-back">
		<li class="category-list">전체보기</li>
		<ul class="category-list"
			style="display: flex; flex-direction: column">
			<div class="largecategory">배스</div>
			<li>기타 소품</li>
		</ul>

		<ul class="category-list">
			<div class="largecategory">홈</div>
			<li>패브릭</li>
			<li>프래그런스</li>
			<li>기타 소품</li>
		</ul>
	</div>
	<div id="남성" class="sub-back men">
		<li class="category-list">전체보기</li>
		<ul class="category-list"
			style="display: flex; flex-direction: column">
			<div class="largecategory">아우터</div>
			<li>가디건/베스트</li>
			<li>코트</li>
			<li>다운/패딩</li>
			<li>재킷</li>
			<li>점퍼</li>
			<li>트렌치코트</li>
		</ul>

		<ul class="category-list">
			<div class="largecategory">팬츠</div>
			<li>데님</li>
			<li>루즈/테이퍼드</li>
			<li>쇼츠</li>
			<li>스트레이트</li>
			<li>조거/트랙</li>
		</ul>

		<ul class="category-list"
			style="display: flex; flex-direction: column">
			<div class="largecategory">SPECIAL SHOP*</div>
			<li>CLUB MONACO : 폴로 한잔의 여유</li>
			<li>CLUB MONACO : COATS FOR MEN</li>
			<li>SYSTEM HOMME : (NEW) SWEATS</li>
			<li>SYSTEM HOMME : PARIS PT</li>
			<li>SYSTEM HOMME : SYSTEM X 275C</li>
			<li>SYSTEM HOMME : TYPE 2</li>
			<li>THEHANDSOME 5TH : # WITH US</li>
			<li>TIME HOMME : ONLINE EXCLUSIVE</li>
			<li>TIME HOMME THE GENTLE</li>
		</ul>

		<ul class="category-list">
			<div class="largecategory">수트</div>
			<li>드레스셔츠</li>
			<li>수트재킷</li>
			<li>수트팬츠</li>
		</ul>
		<ul class="category-list">
			<div class="largecategory">탑</div>
			<li>니트</li>
			<li>셔츠</li>
			<li>티셔츠</li>
		</ul>
	</div>
	<div id="여성" class="sub-back women">
		<li class="category-list">전체보기</li>
		<ul class="category-list"
			style="display: flex; flex-direction: column">
			<div class="largecategory">드레스</div>
			<li>롱/맥시 드레스</li>
			<li>미디 드레스</li>
			<li>미니 드레스</li>
		</ul>

		<ul class="category-list">
			<div class="largecategory">패션잡화</div>
			<li>가방</li>
			<li>기타 소품</li>
			<li>스카프/머플러</li>
		</ul>

		<ul class="category-list"
			style="display: flex; flex-direction: column">
			<div class="largecategory">
				<a href="product/list?c=0403">아우터</a>
			</div>
			<li>가디건/베스트</li>
			<li>코트</li>
			<li>다운/패딩</li>
			<li>재킷</li>
			<li>점퍼</li>
			<li>트렌치 코트</li>
		</ul>

		<ul class="category-list">
			<div class="largecategory">팬츠</div>
			<li>캐주얼</li>
			<li>데님</li>
			<li>포멀</li>
			<li>쇼츠</li>
		</ul>
		<ul class="category-list"
			style="display: flex; flex-direction: column">
			<div class="largecategory">스커트</div>
			<li>플레어 스커트</li>
			<li>롱/맥시 스커트</li>
			<li>미니 스커트</li>
			<li>펜슬 스커트</li>
		</ul>

		<ul class="category-list">
			<div class="largecategory">SPECIAL SHOP*</div>
			<li>잠시 생략....</li>
		</ul>

		<ul class="category-list">
			<div class="largecategory">탑</div>
			<li>블라우스</li>
			<li>니트</li>
			<li>셔츠</li>
			<li>티셔츠</li>
		</ul>
	</div>

	<div class="page-title"></div>
	<script>
	
      class menu {
        constructor(elem) {
          this._elem = elem;
          this._currenthover = null;
          elem.onmouseover = this.onMouse.bind(this); // (*)
        }
        onMouse(event) {
          console.log(event.target);
          let action = event.target.dataset.action;
          console.log(action);
          if (action == "여성") {
            if (this._currenthover != null) {
              this._currenthover.style.display = "none";
            }
            this._currenthover = 여성;
            여성.style.display = "flex";

            여성.onmouseleave = function () {
              여성.style.display = "none";
            };
          } else if (action == "남성") {
            if (this._currenthover != null) {
              this._currenthover.style.display = "none";
            }
            this._currenthover = 남성;
            남성.style.display = "flex";

            남성.onmouseleave = function () {
              남성.style.display = "none";
            };
          } else if (action == "키즈") {
            if (this._currenthover != null) {
              this._currenthover.style.display = "none";
            }
            this._currenthover = 키즈;
            키즈.style.display = "flex";

            키즈.onmouseleave = function () {
              키즈.style.display = "none";
            };
          } else if (action == "라이프스타일") {
            if (this._currenthover != null) {
              this._currenthover.style.display = "none";
            }
            this._currenthover = 라이프스타일;
            라이프스타일.style.display = "flex";

            라이프스타일.onmouseleave = function () {
              라이프스타일.style.display = "none";
            };
          }
        }
      }
      new menu(navbar);
    </script>



	<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<style>
.basketdiv {
	width: 100%;
	border-top: 1px solid #e0e0e0;
	float: left;
	font-size: 0.9375em;
	margin-bottom: 20px;
}

.basketdiv .row.head {
	border-bottom: 2px solid #888;
	box-sizing: border-box;
	background-color: #f4f4f4;
	font-weight: 500;
}

.basketdiv .data {
	border-bottom: 1px dashed #888;
	box-sizing: border-box;
	cursor: pointer;
	float: left;
	width: 100%;
}

.basketdiv .data .empty {
	text-align: center;
	padding: 12px 0;
}

.basketdiv .row.head .subdiv {
	background-color: #f4f4f4;
}

.basketdiv .row>.subdiv {
	display: block;
	float: left;
}

.basketdiv .row>.subdiv:nth-child(1) {
	width: 50%;
}

.basketdiv .row>.subdiv:nth-child(2) {
	width: 40%;
}

.basketdiv .row>.subdiv:nth-child(3) {
	width: 10%;
}

.basketdiv2 .row>.subdiv:nth-child(1) {
	width: 60%;
}

.basketdiv2 .row>.subdiv:nth-child(2) {
	width: 40%;
}

.basketdiv .row>div>div {
	display: block;
	float: left;
	text-align: center;
	margin: 0;
	padding: 12px 0;
}

.basketdiv .row.data>div>div {
	height: 60px;
	line-height: 60px;
}

.basketdiv .data .num .updown {
	color: #0075ff;
	font-size: 2em;
	letter-spacing: -5px;
}

.basketdiv .check {
	width: 10%;
}

.basketdiv .check input[type=checkbox] {
	transform: scale(1.5);
}

.basketdiv .img {
	width: 20%;
}

.basketdiv .pname {
	width: 70%;
}

.basketdiv2 .pname {
	width: 80%;
}

.basketdiv .basketprice {
	width: 33%;
}

.basketdiv .num {
	width: 33%;
	min-width: 105px;
}

.basketdiv .sum {
	width: 34%;
	max-width: 80px;
	color: #0000aa;
}

.basketdiv .point {
	width: 50%;
}

.basketdiv2 .basketprice {
	width: 25%;
}

.basketdiv2 .num {
	width: 25%;
}

.basketdiv2 .sum {
	width: 25%;
	color: #0000aa;
}

.basketdiv2 .point {
	width: 25%;
}

.basketdiv .basketcmd {
	width: 100%;
}

.basketdiv .data .pname {
	text-align: left !important;
	line-height: 1.2 !important;
}

.basketdiv .data .price, .basketdiv .data .sum, .basketdiv .data .point
	{
	text-align: right;
}

.baseform>tbody>tr>td:first-child {
	width: 100px;
}

.buttongroup {
	padding: 11px 0;
	margin: 50px 0;
}

.narrowbuttongroup {
	margin: 15px 0;
}

.buttongroup.center {
	text-align: center;
}

.buttongroup input[type=text], .buttongroup input[type=password] {
	height: 30px;
}

.buttongroup button, .buttongroup a {
	margin-right: 5px;
}

.buttongroup button:last-child, .buttongroup a:last-child {
	margin-right: 0;
}

.abutton, .abutton:link, .abutton:visited, .abutton:active, input[type=button]
	{
	background-color: #383838;
	border: 1px solid #888888;
	color: #ffffff;
	cursor: pointer;
	letter-spacing: -1px;
	padding: 3px 5px;
	margin: 2px 3px;
	width: auto;
	word-break: keep-all;
	border-radius: 5px;
	text-decoration: none;
	font-size: 0.9375em;
}

.abutton-alt {
	background-color: #d3e2c6;
}

.red {
	color: #b00;
}

.blue {
	color: #0075ff;
}

.basketrowcmd, .sumcount, .summoney {
	text-align: right;
	margin-bottom: 10px;
}

.sumcount, .summoney {
	font-size: 1.25em;
	font-weight: bold;
}

.buttongroup {
	text-align: center;
}

.buttongroup a {
	text-decoration: none;
}

.cmd a, .cmd span {
	padding: 12px 30px;
	box-sizing: border-box;
	margin-top: 10px;
	font-size: 1.2em;
	color: #000;
	background-color: #f4f4f4;
	border: 1px solid #e0e0e0;
	text-align: center;
}

.cmd.small a, .cmd.small span {
	padding: 6px 20px;
	font-size: 0.8125em;
}

.orderform .p_num {
	text-align: right;
	width: 40px;
	font-size: 1em;
}
</style>

<script>



    let basket = {
    totalCount: 0, 
    totalPrice: 0,
    //체크한 장바구니 상품 비우기
    
    send: function(){
    	//json 배열
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

        //전송 처리 결과가 성공이면    
        this.reCalc();
        this.updateUI();
    },
    checkItem: function () {
        this.reCalc();
        this.updateUI();
    },
    delItem: function () {
    	//location.href="notice/List.jsp";

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
								value="${vs.count}" 
								onclick="javascript:basket.checkItem();">&nbsp;
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
									style="color: black;" class="far fa-plus-square up"></i></span> <input
									style="display: inline; text-align: center;" type="text"
									name="p_num${vs.count}" id="p_num${vs.count}" size="2"
									maxlength="4" class="p_num m-l-5 m-r-5 orders${vs.count}"
									value="${OrderRow.oamount}"
									onkeyup="javascript:basket.changePNum(${vs.count});"> <span
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

		<div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 0 개</div>
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


<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/popper.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js"></script>
<script>
      $(".js-select2").each(function () {
        $(this).select2({
          minimumResultsForSearch: 20,
          dropdownParent: $(this).next(".dropDownSelect2"),
        });
      });
    </script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/moment.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/slick/slick.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/slick-custom.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/parallax100/parallax100.js"></script>
<script>
      $(".parallax100").parallax100();
    </script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
      $(".gallery-lb").each(function () {
        // the containers for all your galleries
        $(this).magnificPopup({
          delegate: "a", // the selector for gallery product
          type: "image",
          gallery: {
            enabled: true,
          },
          mainClass: "mfp-fade",
        });
      });
    </script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/sweetalert/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script>
      $(".js-addcart-detail").each(function () {
        var nameProduct = $(this)
          .parent()
          .parent()
          .parent()
          .parent()
          .find(".js-name-detail")
          .html();
        $(this).on("click", function () {
          // swal(nameProduct, "장바구니에 담았습니다.", "success");
          swal({
            title: nameProduct,
            text: "장바구니에 담았습니다.",
            icon: "success",
            buttons: {
              cancle: {
                text: "계속 쇼핑하기",
                value: false,
                className: "swal_confirm",
              },
              confirm: {
                text: "쇼핑백으로 가기",
                value: true,
              },
            },
          }).then((result) => {
            if (result) window.location.href = "shoping-cart.html";
          });
        });
      });
    </script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
      $(".js-pscroll").each(function () {
        $(this).css("position", "relative");
        $(this).css("overflow", "hidden");
        var ps = new PerfectScrollbar(this, {
          wheelSpeed: 1,
          scrollingThreshold: 1000,
          wheelPropagation: false,
        });

        $(window).on("resize", function () {
          ps.update();
        });
      });
    </script>

<script type="text/javascript">
    //시작하자마자 업데이트
   
    $(document).ready(function(){
    	document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
    }); 
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
   $(".parallax100").parallax100();
    </script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<script>
      $(".gallery-lb").each(function () {
        // the containers for all your galleries
        $(this).magnificPopup({
          delegate: "a", // the selector for gallery product
          type: "image",
          gallery: {
            enabled: true,
          },
          mainClass: "mfp-fade",
        });
      });
    </script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/sweetalert/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
<script>
      $(".js-addcart-detail").each(function () {
        var nameProduct = $(this)
          .parent()
          .parent()
          .parent()
          .parent()
          .find(".js-name-detail")
          .html();
        $(this).on("click", function () {
          // swal(nameProduct, "장바구니에 담았습니다.", "success");
          swal({
            title: nameProduct,
            text: "장바구니에 담았습니다.",
            icon: "success",
            buttons: {
              cancle: {
                text: "계속 쇼핑하기",
                value: false,
                className: "swal_confirm",
              },
              confirm: {
                text: "쇼핑백으로 가기",
                value: true,
              },
            },
          }).then((result) => {
            if (result) window.location.href = "shoping-cart.html";
          });
        });
      });
    </script>
<!--===============================================================================================-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
      $(".js-pscroll").each(function () {
        $(this).css("position", "relative");
        $(this).css("overflow", "hidden");
        var ps = new PerfectScrollbar(this, {
          wheelSpeed: 1,
          scrollingThreshold: 1000,
          wheelPropagation: false,
        });

        $(window).on("resize", function () {
          ps.update();
        });
      });
    </script>

<script type="text/javascript">
    //시작하자마자 업데이트
   
    $(document).ready(function(){
    	document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount.formatNumber() + '개';
        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice.formatNumber() + '원';
    }); 
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
