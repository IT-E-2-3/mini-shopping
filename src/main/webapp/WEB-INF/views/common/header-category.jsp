<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Shopping Mall</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" />
<script
	src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
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
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css" />
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
					<li class="nav-item"><a class="nav-link" href="#" data-action="키즈">키즈</a></li>
					<li class="nav-item"><a class="nav-link" href="#" data-action="라이프스타일">라이프스타일</a></li>
					<li class="nav-item"><a class="nav-link" href="#" data-action="남성">남성</a></li>
					<li class="nav-item"><a class="nav-link" href="#" data-action="여성">여성</a></li>
				</ul>
			</div>

			<div class="right">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="login.html">로그아웃</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						href="shoping-cart.html">쇼핑백(2)</a></li>
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
		<ul class="category-list" style="display: flex; flex-direction: column">
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
			<li>TIME HOMME THE GENTLE </li>
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
			<div class="largecategory"><a href="list?c=0403">아우터</a></div>
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