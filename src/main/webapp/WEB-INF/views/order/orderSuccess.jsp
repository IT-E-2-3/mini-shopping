<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>

<h1 class="m-t-25 m-b-25 text-center">
	주문 완료
	</h1>
	<div class="m-t-25 m-b-25 text-center"
		style="border-top: 0.3px solid #a5a3a3"></div>
	<h2 class="m-t-25 m-b-25 text-center ">
		주문이 완료되었습니다.
		</h2>
		<h3 class="m-t-25 m-b-25 text-center ">
			주문번호 : ${order.oid} (주문일시 : ${order.odate})
			</h3>



			<div class="row">
				<!-- 왼쪽 -->
				<div class="col-sm-8 m-l-59">
					<div>
						<!-- 왼쪽 -->

						<h3 class="text-black m-b-25">주문상품</h3>
						<table class="table-shopping-cart m-b-77" style="width: 100%">
							<thead class="table_head  h-25">
								<tr>

									<th class="col-sm-6 text-center text-black">상품 정보</th>
									<th class="col-sm-1 text-center text-black">판매가</th>
									<th class="col-sm-2 text-center text-black">수량</th>

								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${orderItems}">
									<tr class="table-secondary">
										<!-- 상품 정보 th -->
										<th class="col-sm-6">
											<!-- 상품 정보  row-->
											<div class="row" style="width: 100%;">

												<div class="col-sm-4">
													<!-- 상품 사진 -->
													<img src="${item.product_detail_url1 }"
														style="width: 100%; margin: 1rem" alt="">
												</div>
												<!-- 상품 설명 -->
												<div class="col-sm-7 m-l-15 m-t-20"
													style="vertical-align: middle">
													<a href="#" class="basket_tlt" style="color: black"
														onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');">
														<p class="tlt">${item.pbrand}</p>
														<p class="sb_tlt">${item.pname }</p>
													</a>
													<p class="color_op mt-2" style="color: gray">
														color : ${item.color_code }<span class="and_line">/</span>
														size : ${item.size_code }
												</div>
											</div> <!-- 상품 정보 끝 -->
										</th>
										<th class="col-sm-2 text-center">
											<div class="m-t-7">${item.pprice }</div>
										</th>
										<th class="col-sm-2 text-center">
											<div class="m-t-7 ">${item.oamount }</div>
										</th>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<c:if test="${order.opayment==1}">
									<h3>결제 정보</h3>
						<table class=" table m-b-77" style="width: 100%">
							<thead class=" h-25 ">
								<tr>
									<th class="col-sm-2 text-center text-black"></th>
									<th class="col-sm-10 text-left text-black"></th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-secondary">


									<th class="col-sm-4 text-center text-black table-active"
										style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
										<div class="">신용카드</div>
									</th>
									<!-- 행 -->
									<th class="col-sm-8 text-left text-black">${order.ocard_name}
									</th>
								</tr>

								<tr class="table-secondary">
									<!-- 행 -->
									<th class="col-sm-4 text-center text-black table-active"
										style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
										<div class="">결제 상세</div>
									</th>
									<!-- 행 -->
									<th class="col-sm-8 text-left text-black">
										 <h4>${cardCost}원 * ${order.ocard_installment_period} 달</h4> <span>( 할부 이자 ${order.ocard_installmentrate} % )</span> 
									</th>
								</tr>
							</tbody>
						</table>
									</c:if>

						<c:if test="${order.opayment==2}">
							<h3>마일리지</h3>
							<table class="table m-b-77" style="width: 100%">
								<thead class=" h-25 ">
									<tr>
										<th class="col-sm-2 text-center text-black"></th>
										<th class="col-sm-10 text-left text-black"></th>
									</tr>
								</thead>
								<tbody>
									<tr class="table-secondary">
										<!-- 행 -->
										<th class="col-sm-2 text-center text-black table-active"
											style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
											<div class="">사용 마일리지</div>
										</th>
										<!-- 행 -->
										<th class="col-sm-10 text-left text-black">

											<div class="form-check d-inline-flex">
												<h3>사용 예정 마일리지는 ${order.ototal_price} 포인트 입니다.</h3>
											</div>
										</th>
									</tr>

								</tbody>
							</table>
						</c:if>

						<c:if test="${order.opayment==3}">
							<h3>가상계좌</h3>
							<table class="table m-b-77" style="width: 100%">
								<thead class=" h-25 ">
									<tr>
										<th class="col-sm-2 text-center text-black"></th>
										<th class="col-sm-10 text-left text-black"></th>
									</tr>
								</thead>
								<tbody>
									<tr class="table-secondary">
										<!-- 행 -->
										<th class="col-sm-2 text-center text-black table-active"
											style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
											<div class="">입금 위치</div>
										</th>
										<!-- 행 -->
										<th class="col-sm-10 text-left text-black">

											<div class="form-check d-inline-flex">
												<h3>우체국 102345-678-91011</h3>
											</div>
										</th>
									</tr>

									<tr class="table-secondary">
										<!-- 행 -->
										<th class="col-sm-2 text-center text-black table-active"
											style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
											<div class="">입금 기한</div>
										</th>
										<!-- 행 -->
										<th class="col-sm-10 text-left text-black">

											<div class="form-check d-inline-flex">
												<h3>${order.odeposit_deadline} 까지 입금하지 않을 시 주문이 자동 취소 됩니다. </h3>
												<input hidden="hidden" id="odeposit_deadline"
													name="odeposit_deadline">
											</div>
										</th>
									</tr>

								</tbody>
							</table>
						</c:if>
						<!-- 행 -->

						

						<h3>주문자 정보</h3>
						<table class="table m-b-77" style="width: 100%">
							<thead class=" h-25 ">
								<tr>
									<th class="col-sm-2 text-center text-black"></th>
									<th class="col-sm-10 text-left text-black"></th>
								</tr>
							</thead>
							<tbody>
								<tr class="table-secondary">
									<!-- 행 -->
									<th class="col-sm-4 text-center text-black table-active"
										style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
										<div class="">수령인</div>
									</th>
									<!-- 행 -->
									<th class="col-sm-8 text-left text-black">${order.orecipient}
									</th>
								</tr>
								<tr class="table-secondary">
									<!-- 행 -->
									<th class="col-sm-4 text-center text-black table-active"
										style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
										<div class="">휴대폰</div>
									</th>
									<!-- 행 -->
									<th class="col-sm-8 text-left text-black">
										${order.orecipient_tel }</th>
								</tr>
								<tr class="table-secondary">
									<!-- 행 -->
									<th class="col-sm-4 text-center text-black table-active"
										style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
										<div class="">E-mail</div>
									</th>
									<!-- 행 -->
									<th class="col-sm-8 text-left text-black">
										${order.orecipient_email }</th>
								</tr>
							</tbody>
						</table>


					</div>

				</div>
				<!-- 왼쪽 끝  -->
				<!-- 오른쪽 시작 -->

				<div class="col-md-3 m-t-177 m-l-30 m-r-35 ">

					<div class="" style="position: sticky; top: 170px;">
						<div class=" ">

							<a href="/order/orderList"
								class="btn btn-outline-primary d-inline-flex">주문내역조회</a> <a
								href="/" style="border: 2px solid #000000"
								class="btn btn-primary d-inline-flex">쇼핑계속하기</a>
						</div>
					</div>

				</div>
			</div>
			<!-- 오른쪽 끝 -->



			<%@ include file="/WEB-INF/views/common/footer.jsp"%>