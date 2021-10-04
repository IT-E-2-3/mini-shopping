<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-nocategory.jsp"%>

<div class="m-r-200 m-l-200">
	<h5 class="text-center text-black m-b-25">상품 주문 목록</h5>
	<table class="table-shopping-cart m-b-77 " style="width: 100%">
		<thead class="table_head h-25">
			<tr>
				<th class="col-sm-2 text-center text-black">주문번호</th>
				<th class="col-sm-1 text-center text-black">주문일자</th>
				<th class="col-sm-3 text-center text-black">상품 정보</th>

				<th class="col-sm-1 text-center text-black">결제금액</th>
				<th class="col-sm-1 text-center text-black">수량</th>
				<th class="col-sm-2 text-center text-black">상태</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="order" items="${orderList }">
				<tr class="table-secondary" style="height: 60px">
					<th class="col-sm-2 text-center" style="color: var(- -bs-gray-800)">${order.oid }</th>
					<th class="col-sm-1 text-center" style="color: var(- -bs-gray-800)">${order.odate.split(" ")[0] }</th>
					<th class="col-sm-3 text-center" style="color: var(- -bs-gray-800)">
						<a href="orderDetail?oid=${order.oid}" class="basket_tlt" style="color: black"
						onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');">
							<p class="sb_tlt">
								${order.mainItem} <span class="text-right">  ${(order.productKindNum - 1) != 0 ? "외 " += order.productKindNum - 1 += "건" : ""}</span>
							</p>
						</a>
					</th>

					<th class="col-sm-1 text-center">
						<div class="" style="color: var(- -bs-gray-800)">${order.ototal_price }</div>
					</th>
					<th class="col-sm-1 text-center">
						<div class="m-t-7" style="color: var(- -bs-gray-800)">1</div>
					</th>
					<th class="col-sm-2 text-center" style="color: var(- -bs-gray-800)">배송
						준비</th>
				</tr>

			</c:forEach>
		</tbody>
	</table>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
