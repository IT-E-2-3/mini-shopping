<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Shoping Cart</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.png"/>
<!--===============================================================================================-->

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css"/>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/bootstrap.min.css">
  <script src="${pageContext.request.contextPath}/resources/lib/jquery-1.12.2.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/lib/bootstrap.min.js"></script>

</head>
<body class="animsition">
	
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->


			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="#" class="logo">
						<img src="images/icons/logo-01.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li>
								<a href="index.html">Home</a>
								<ul class="sub-menu">
									<li><a href="index.html">Homepage 1</a></li>
									<li><a href="home-02.html">Homepage 2</a></li>
									<li><a href="home-03.html">Homepage 3</a></li>
								</ul>
							</li>

							<li>
								<a href="product.html">Shop</a>
							</li>

							<li class="label1" data-label1="hot">
								<a href="shoping-cart.html">Features</a>
							</li>

							<li>
								<a href="blog.html">Blog</a>
							</li>

							<li>
								<a href="about.html">About</a>
							</li>

							<li>
								<a href="contact.html">Contact</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-product cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>

						<div class="icon-header-product cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

						<a href="#" class="icon-header-product cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti" data-notify="0">
							<i class="zmdi zmdi-favorite-outline"></i>
						</a>
					</div>
				</nav>
			</div>	
		</div>

		

	<!-- 공백 -->
	
	<h2 class="m-t-25 m-b-25 text-center" >주문 완료 </h2>
	<div class="m-t-25 m-b-25 text-center" style="border-top:0.3px solid #a5a3a3"></div>
	<h4 class="m-t-25 m-b-25 text-center "> 주문이 완료되었습니다.</h4>
	<h6 class="m-t-25 m-b-25 text-center "> 주문번호 : 07281231T39769858D (주문일시 : 2021.12.25) </h6>


	<div class="m-r-300 m-l-300">
		<table class="table-shopping-cart m-b-77" style="width: 100%" >
			<thead class="table_head  h-25">
				<tr>
				
					<th class="col-sm-6 text-center text-black" >상품 정보</th>
				
					<th class="col-sm-1 text-left text-black">판매가</th>
					<th class="col-sm-2 text-center text-black">수량</th>
					
				</tr>
			</thead>
			<tbody>
				<tr class="table-secondary">
					

					<!-- 상품 정보 th -->
					<th class="col-sm-6" >
						<!-- 상품 정보  row-->
						<div class="row">
							
						<div class="col-sm-4">
							<!-- 상품 사진 -->
							<div class="stext-110 cl2 m-l-25 m-t-10 m-b-10">
								<img src="http://newmedia.thehandsome.com/IL/2B/FW/IL2B9WJC412W_DG_S01.jpg" alt="" style="width:98px;">
							</div>

						</div>
						
							<!-- 상품 설명 -->
						<div class="col-sm-6 m-l-20 m-t-15">
								<a href="#" class="basket_tlt" style="color:black" onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');"> 
									<p class="tlt">LÄTT</p> 
									<p class="sb_tlt">울 셋업 재킷</p>
								</a>
								<p class="color_op mt-2" style="color:gray">
									color : DARK GREY<span class="and_line">/</span>
									size : 82
								</p>
							
						</div>
						
					</div>
					<!-- 상품 정보 끝 -->
					</th>
					<th class="col-sm-1 text-left" >
						<div class="m-t-7 m-r-30 m-l--0 ">
							₩745,000
						</div>
					</th>
					<th class="col-sm-2 text-center">
						<div class="m-t-7 ">
							1
						</div>
					</th>
					
				</tr>
				<tr class="table-secondary">

					

					<!-- 상품 정보 th -->
					<th class="col-sm-6" >
						<!-- 상품 정보  row-->
						<div class="row">
							
						<div class="col-sm-4">
							<!-- 상품 사진 -->
							<div class="stext-110 cl2 m-l-25 m-t-10 m-b-10">
								<img src="http://newmedia.thehandsome.com/MM/2B/FW/MM2B9TTO060HOH_BL_S01.jpg" style="width:98px;" alt="">
							</div>

						</div>
						
							<!-- 상품 설명 -->
						<div class="col-sm-6 m-l-20 m-t-15">
							<a href="#" class="basket_tlt" style="color:black" onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');"> 
								<p class="tlt">CLUB MONACO</p> 
								<p class="sb_tlt">포켓 티셔츠</p>
							</a>
							<p class="color_op mt-2" style="color:gray">
								color : BLUE <span class="and_line">/</span>
								size : M
							</p>
							
						</div>
						
					</div>
					<!-- 상품 정보 끝 -->
					</th>
					<th class="col-sm-1 text-left" >
						<div class="m-t-7 m-r-30 m-l--0 ">
							₩68,000
						</div>
					</th>
					<th class="col-sm-2 text-center">
						<div class="m-t-7 ">
							1
						</div>
					</th>
					
				</tr>
					<tr class="table-secondary">

					

					<!-- 상품 정보 th -->
					<th class="col-sm-6" >
						<!-- 상품 정보  row-->
						<div class="row">
							
						<div class="col-sm-4">
							<!-- 상품 사진 -->
							<div class="stext-110 cl2 m-l-25 m-t-10 m-b-10">
								<img src="images/dark.jpg" alt="상품 대체 이미지" width="100">
							</div>

						</div>
						
							<!-- 상품 설명 -->
						<div class="col-sm-6 m-l-20 m-t-15">
							
						
								<a href="#" class="basket_tlt" style="color:black" onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');"> 
									<p class="tlt">LÄTT</p> 
									<p class="sb_tlt">울 셋업 재킷</p>
								</a>
								<p class="color_op mt-2" style="color:gray">
									color : DARK GREY<span class="and_line">/</span>
									size : 82
								</p>
							
						</div>
						
					</div>
					<!-- 상품 정보 끝 -->
					</th>
					<th class="col-sm-1 text-left" >
						<div class="m-t-7 m-r-30 m-l--0 ">
							111,500
						</div>
					</th>
					<th class="col-sm-2 text-center">
						<div class="m-t-7 ">
							1
						</div>
					</th>
					
				</tr>
				
			
				
		
			</tbody>
		</table>
	</div>

	<div class="m-r-300 m-l-300">
	<div class="p-all-25" >
	
	<div class="row">
    <div class="col-sm-8">
        <!-- 여기에 테이블 삽입 -->
    </div>
		<div class="col-sm-4">
			<h2 class="text-left text-black m-b-35">
				주문 내역
			</h2>	
			<div class="">
				<div class="">
					
					<div class="flex-w flex-t p-b-13 justify-content-between">
						<b style="color:black;"> 상품금액</b>
						<div><span id="totalNormalAmt">813,000</span>원</div>
					</div>
					<div class="flex-w flex-t bor12 p-b-13 justify-content-between">
						<dt class="ee_tit">배송비</dt>
						<dd class="ee_price"><span id="totalDeliAmt">0</span>원</dd>
					</div>

				<div class="flex-w flex-t p-b-40 p-t-13 justify-content-between" style="font-size: 20px;">
					<dt class="ee_tit ee_strong">결제금액</dt>
					<dd class="ee_price ee_strong"><span id="totalOrdAmt">813,000</span>원</dd>
				</div>
				
				
			</div>
		</div>
	</div>
</div>


	</div>
</div>


	<div class="m-r-300 m-l-300">
		<h3>결제 수단 선택</h3>
<table class="table m-b-77" style="width: 100%" >
<thead class=" h-25 " >
	<tr>
		<th class="col-sm-2 text-center text-black" ></th>
		<th class="col-sm-10 text-left text-black"></th>
	</tr>
</thead>
<tbody>
	
	<tr class="table-secondary">
	<!-- 행 -->
		</th>
		<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
			<div class="">
				가상계좌
			</div>
		</th>
		<!-- 행 -->
		<th class="col-sm-8 text-left text-black">
			KB국민은행
		</th>
	</tr>

	<tr class="table-secondary">
		<!-- 행 -->
			</th>
			<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
				<div class="">
					입금 예정기한
				</div>
			</th>
			<!-- 행 -->
			<th class="col-sm-8 text-left text-black">
					2021.12.25 까지 입금
			</th>
		</tr>




</tbody>
</table>
	</div>


	<div class="m-r-300 m-l-300">
		<h3>주문자 정보</h3>
<table class="table m-b-77" style="width: 100%" >
<thead class=" h-25 " >
	<tr>
		<th class="col-sm-2 text-center text-black" ></th>
		<th class="col-sm-10 text-left text-black"></th>
	</tr>
</thead>
<tbody>
	
	<tr class="table-secondary">
	<!-- 행 -->
		</th>
		<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
			<div class="">
				주문자
			</div>
		</th>
		<!-- 행 -->
		<th class="col-sm-8 text-left text-black">
			홍길동
		</th>
	</tr>

	<tr class="table-secondary">
		<!-- 행 -->
			</th>
			<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
				<div class="">
					휴대폰
				</div>
			</th>
			<!-- 행 -->
			<th class="col-sm-8 text-left text-black">
				010-1234-5678
			</th>
		</tr>

		<tr class="table-secondary">
			<!-- 행 -->
				</th>
				<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
					<div class="">
						E-mail
					</div>
				</th>
				<!-- 행 -->
				<th class="col-sm-8 text-left text-black">
					ILoveTeam3@naver.com
				</th>
			</tr>





</tbody>
</table>
	</div>


	<div class="m-r-300 m-l-300">
		<h3>배송지 정보</h3>
<table class="table m-b-77" style="width: 100%" >
<thead class=" h-25 " >
	<tr>
		<th class="col-sm-2 text-center text-black" ></th>
		<th class="col-sm-10 text-left text-black"></th>
	</tr>
</thead>
<tbody>
	
	<tr class="table-secondary">
	<!-- 행 -->
		</th>
		<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
			<div class="">
				배송지 주소
			</div>
		</th>
		<!-- 행 -->
		<th class="col-sm-8 text-left text-black">
			(12455) 서울특별시 송파구 가락동 78
		</th>
	</tr>

	<tr class="table-secondary">
		<!-- 행 -->
			</th>
			<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
				<div class="">
				수령인
				</div>
			</th>
			<!-- 행 -->
			<th class="col-sm-8 text-left text-black">
				동길홍
			</th>
		</tr>

	<tr class="table-secondary">
		<!-- 행 -->
			</th>
			<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
				<div class="">
				 주문자 연락처
				</div>
			</th>
			<!-- 행 -->
			<th class="col-sm-8 text-left text-black">
				010-1234-5678
			</th>
		</tr>

		<tr class="table-secondary">
			<!-- 행 -->
				</th>
				<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
					<div class="">
					수령인 연락처
					</div>
				</th>
				<!-- 행 -->
				<th class="col-sm-8 text-left text-black">
					010-9876-5432
				</th>
			</tr>

	
<!-- 책갈피 -->

</tbody>
</table>
	</div>
	

	<div class="text-center m-b-100">
		<button type="button" class="btn btn-outline-primary d-inline-flex">주문내역조회</button>
		<button type="button" style="border:2px solid #000000" class="btn btn-primary d-inline-flex">쇼핑계속하기</button>

</div>
	




			</div>


			</div>

	</div>
		
	
		




	<!-- Footer -->
	<footer class="bg3 p-t-75 p-b-32">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Categories
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Women
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Men
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shoes
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Watches
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Help
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Track Order
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Returns 
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								Shipping
							</a>
						</li>

						<li class="p-b-10">
							<a href="#" class="stext-107 cl7 hov-cl1 trans-04">
								FAQs
							</a>
						</li>
					</ul>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						GET IN TOUCH
					</h4>

					<p class="stext-107 cl7 size-201">
						Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
					</p>

					<div class="p-t-27">
						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-facebook"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-instagram"></i>
						</a>

						<a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
							<i class="fa fa-pinterest-p"></i>
						</a>
					</div>
				</div>

				<div class="col-sm-6 col-lg-3 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Newsletter
					</h4>

					<form>
						<div class="wrap-input1 w-full p-b-4">
							<input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="email@example.com">
							<div class="focus-input1 trans-04"></div>
						</div>

						<div class="p-t-18">
							<button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
								Subscribe
							</button>
						</div>
					</form>
				</div>
			</div>

			<div class="p-t-40">
				<div class="flex-c-m flex-w p-b-18">
					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-01.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-02.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-03.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-04.png" alt="ICON-PAY">
					</a>

					<a href="#" class="m-all-1">
						<img src="images/icons/icon-pay-05.png" alt="ICON-PAY">
					</a>
				</div>

				<p class="stext-107 cl6 txt-center">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

				</p>
			</div>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>