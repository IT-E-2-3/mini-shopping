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
<link rel="icon" type="image/jpg"
	href="${pageContext.request.contextPath}/resources/images/icons/hansome.jpg" />
<!--===============================================================================================-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" />
<script
	src="${pageContext.request.contextPath}/resources/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/js/popper.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

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
	href="${pageContext.request.contextPath}/resources/animate/animate.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css-hamburgers/hamburgers.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/animsition/css/animsition.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/select2/select2.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/util.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

<link
	href="${pageContext.request.contextPath}/resources/dist/css/datepicker.min.css"
	rel="stylesheet" type="text/css" media="all">
<!-- Air datepicker css -->
<script
	src="${pageContext.request.contextPath}/resources/dist/js/datepicker.js"></script>
<!-- Air datepicker js -->
<script
	src="${pageContext.request.contextPath}/resources/dist/js/i18n/datepicker.ko.js"></script>
<!-- 달력 한글 추가를 위해 커스텀 -->
</head>
<span style="position: fixed; left: 88%; top: 88%"> <a
	href="javascript:void(0)" onclick="javascript:totop()"><img
		src="${pageContext.request.contextPath}/resources/images/pageup.png"
		style="width: 40px;"></a>

</span>

<script>
	function totop() {
		console.log("test")
		window.scrollTo(0, 0);
	}
</script>
<body>
	<!-- Header -->
	<nav id="header-fixed"
		class="navbar navbar-expand-sm navbar-light bg-white border-bottom">
		<div class="collapse navbar-collapse" id="navbarColor"
			style="display: flex; justify-content: space-around">
			<div class="left-logo">
				<a class="navbar-brand ml-2 font-weight-bold" href="/"><img
					src="${pageContext.request.contextPath}/resources/images/top-header-handsome-logo.png" /></a>
			</div>

			<div class="right">
				<ul class="navbar-nav">
					<sec:authorize access="isAnonymous()">
						<li class="nav-item"><a class="nav-link" href="/loginForm">로그인</a>
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
						href="${pageContext.request.contextPath}/cart/2">쇼핑백(숫자)</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/order/orderList">주문조회</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="page-title"></div>