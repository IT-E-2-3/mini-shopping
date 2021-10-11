<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>


<div style="padding: 35px 0 45px 0">
	<h3 class="cnts_title">
		<span>로그인</span>
	</h3>
	<div class="inner_box" style="width: 415px; margin: auto">
		<div class="title_wrap">
			<h4>회원</h4>
		</div>

		<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
			<div class="alert alert-danger mb-2" role="alert">
				<c:if
					test="${SPRING_SECURITY_LAST_EXCEPTION.message == 'Bad credentials'}">
					아이디 또는 비밀번호가 틀립니다.
				</c:if>
				<c:if
					test="${fn:contains(SPRING_SECURITY_LAST_EXCEPTION.message, 'principal exceeded')}">
					인증 횟수가 초과되었습니다.
				</c:if>
			</div>
		</c:if>
		<form method="post" action="${pageContext.request.contextPath}/login">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<div class="form-group m-b-20">
				<label for="mid">아이디</label> <input type="text"
					class="form-control" id="mid" name="mid"
					placeholder="아이디 / 이메일을 입력하세요.">
			</div>
			<div class="form-group m-b-20">
				<label for="mpassword">비밀번호</label> <input
					type="password" class="form-control" id="mpassword"
					name="mpassword" placeholder="비밀번호를 입력하세요.">
			</div>
			
			<button type="submit"class="btn_login m-b-35"
				id="login_btn"
				>로그인</button>
		</form>
	</div>
</div>
</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
