<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-nocategory.jsp"%>

<div class="m-r-200 m-l-200">
	<div class="m-r-300 m-l-300">
		<div class="row m-t-25 m-b-25 p-t-10  p-b-10" style="width: 100%; background-color: #d9ead3"> 
			<h4 class="col-sm-7 ">주문번호 : ${order.oid} </h4> 
			<div class="col-sm-5" style="text-align: right" >(주문일시 : ${order.odate})</div>
		</div>
		<h3 class="text-black m-b-25">주문상품</h3>
		<table class="table-shopping-cart m-b-77" style="width: 100%" >
			<thead class="table_head  h-25">
				<tr>
				
					<th class="col-sm-6 text-center text-black" >상품 정보</th>
					<th class="col-sm-2 text-center text-black">수량</th>
					<th class="col-sm-1 text-center text-black">판매가</th>
					
				</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${orderItems}">
				<tr class="table-secondary">
						<!-- 상품 정보 th -->
						<th class="col-sm-6" >
							<!-- 상품 정보  row-->
							<div class="row" style="width: 100%">
	
							<div class="col-sm-4">
								<!-- 상품 사진 -->
								<img src="${item.product_detail_url1 }" style="width: 100%; margin: 1rem" alt="" >
							</div>
								<!-- 상품 설명 -->
							<div class="col-sm-7 m-l-15 m-t-20" style="vertical-align: middle">
									<a href="#" class="basket_tlt" style="color:black" onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');"> 
										<p class="tlt">${item.pbrand}</p> 
										<p class="sb_tlt">${item.pname }</p>
									</a>
									<p class="color_op mt-2" style="color:gray">
										color : ${item.color_code }<span class="and_line">/</span>
										size : ${item.size_code }
							</div>
						</div>
						<!-- 상품 정보 끝 -->
						</th>
						<th class="col-sm-2 text-center" >
							<div class="m-t-7">
								${item.pprice }
							</div>
						</th>
						<th class="col-sm-2 text-center">
							<div class="m-t-7 ">
								${item.oamount }
							</div>
						</th>
					</tr>
			</c:forEach>
				
				
			</tbody>
		</table>
		
	<div >
	<h3>결제 정보</h3>
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
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
