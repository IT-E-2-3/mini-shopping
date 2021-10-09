<%@ page contentType="text/html; charset=UTF-8"%>
	
<%@ include file="/WEB-INF/views/common/header-category.jsp"%>

<div id="bodyWrap" style="height:500px;">
	<h3 class="cnts_title">
		<span id="menuTitle">나의 쿠폰</span>
	</h3>
	<hr />
	<div class="sub_container">
		<!-- cnts -->
		<div class="sub_cnts d-flex justify-content-center mt-3">
			<!-- Table -->
			<div class="tblwrap">
				<table class="tbl_ltype">
					<colgroup>
						<col style="width:110px">
						<col style="width:80px">
						<col style="width:300px">
						<col style="width:130px">
						<col style="width:130px">
						<col style="width:50px">
					</colgroup>
					<thead>
						<tr style="background-color:#EAEAEA;">
							<th scope="col">쿠폰번호</th>
							<th scope="col">종류</th>
							<th scope="col">내용</th>
							<th scope="col">시작일자</th>
							<th scope="col">유효기간</th>
							<th scope="col">사용상태</th>
						</tr>
					</thead>
					<tbody id="listBody">
						<c:if test="${empty couponList}">
						<tr>
							<td colspan="6" class="no_data">내역이 없습니다.</td>
						</tr>
						</c:if>
						<c:if test="${not empty couponList}">
							<c:forEach var="coupon" items="${couponList}">
								<tr>
									<td>${coupon.eid}</td>
									<td>${coupon.coupon_type}</td>
									<td>${coupon.ename}</td>
									<td>${coupon.coupon_startdate}</td>
									<td>${coupon.coupon_expiredate}</td>
									<td>${coupon.coupon_state}</td>
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
			<!-- //Table -->
		</div>
		<!-- //cnts -->
	</div>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
