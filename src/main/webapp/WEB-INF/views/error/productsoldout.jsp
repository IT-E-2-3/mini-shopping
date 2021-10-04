<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>

<h1>아쉽지만 재고가 부족합니다. (이전페이지에서 요청 처리하도록 해보기)</h1>

<div>
	<a href="${pageContext.request.contextPath}/"> <img
		src="/resources/images/team3.jpg" class="w-50">
	</a> <br> 
	<a href="${pageContext.request.contextPath}/"
		class="btn btn-danger btn-sm">홈으로가기 </a>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
