<%@ page contentType="text/html; charset=UTF-8"%>


<%@ include file="/WEB-INF/views/common/header-nocategory.jsp"%>
<script
	src="${pageContext.request.contextPath}/resources/sweetalert/sweetalert.min.js"></script>
<div class="card m-2">
	<form>
		<div class="row">
			<!-- 왼쪽 -->
			<div class="col-sm-7 m-l-35">
				<!-- 상품 정보 테이블 시작 -->
				<table class="table-shopping-cart m-b-77" style="width: 100%">
					<thead class="table_head  h-25">
						<tr>
							<th class="col-sm-6 text-center text-black">상품 정보</th>
							<th class="col-sm-1 text-left text-black">판매가</th>
							<th class="col-sm-2 text-center text-black">수량</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${OrderRowList}">

							<tr class="table-secondary">

								<!-- 상품 정보 th 사진+정보 -->
								<th class="col-sm-6">
									<!-- 상품 정보  row-->
									<div class="row">

										<div class="col-sm-4">
											<!-- 상품 사진 -->
											<div class="stext-110 cl2 m-l-25 m-t-10 m-b-10">
												<img src="${item.product_detail_url1}" alt=""
													style="width: 98px;">
											</div>
										</div>

										<!-- 상품 설명 -->
										<div class="col-sm-6 m-l-20 m-t-15">
											<a href="#" class="basket_tlt" style="color: black">
												<p class="tlt">${item.pbrand }</p>
												<p class="sb_tlt">${item.pname}</p>
											</a>
											<p class="color_op mt-2" style="color: gray">
												color : ${item.color_code}<span class="and_line">/</span>
												size : ${item.size_code}
											</p>
										</div>
									</div>
								</th>
								<!-- 상품 정보 th 사진+정보 끝 -->

								<!-- 가격시작 -->
								<th class="col-sm-1 text-left">
									<div class="m-t-7 m-r-30 m-l--0 ">₩ ${item.pprice}</div>
								</th>
								<!-- 가격끝 -->

								<%-- 
                        <th class="col-sm-1 text-left">
                           <div class="m-t-7 m-r-30 m-l--0 onePrice ">${item.oamount}</div>
                        </th>
 --%>

								<!-- 수량 시작 -->
								<th class="col-sm-2 text-center text-black">
									<div class="m-t-7 m-r-30 m-l--0 onePrice ">${item.oamount}
										개</div>
								</th>
								<!-- 수량 끝 -->
							</tr>

						</c:forEach>
					</tbody>
				</table>


				<!-- 상품 정보 테이블 끝 -->

				<!-- 공 테이블 -->

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

							<th class="col-sm-2 text-center text-black table-active"
								style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
								<div class="">주문자</div>
							</th>
							<!-- 행 -->
							<th class="col-sm-10 text-left text-black">
								<div class="">${member.mname}</div>
							</th>
						</tr>

						<tr class="table-secondary">
							<!-- 행 -->

							<th class="col-sm-2 text-center text-black table-active"
								style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
								<div style="vertical-align: middle" class="p-all-10 m-t-15">
									휴대폰</div>
							</th>
							<!-- 행 -->
							<th class="col-sm-10 text-left text-black">
								<div class="form-group  w-25 d-inline-block m-b-10">
									<label for="tel1" class="form-label"></label> <select
										class="form-select  text-center" id="tel1" name="tel1">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>
								</div>
								<h4 class="d-inline-block">-</h4>

								<div class="form-group w-25 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="text" class="form-control text-center"
										placeholder="0000" id="tel2" name="tel2" value="1234"
										maxlength="4">

								</div>

								<h4 class="d-inline-block">-</h4>

								<div class="form-group w-25 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="text" class="form-control text-center"
										placeholder="0000" id="tel3" name="tel3" value="1234"
										maxlength="4">
								</div> <span class="order_tel-error text-danger"></span>

							</th>
						</tr>

						<!-- <tr class="table-secondary">
                     행

                     <th class="col-sm-2 text-center text-black table-active"
                        style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
                        <div class="">E-mail</div>
                     </th>
                     행
                     <th class="col-sm-10 text-left text-black"><input
                        type="email" class="form-control text-center"
                        id="orecipient_email" aria-describedby="emailHelp"
                        placeholder="0000" name="orecipient_email"></th>
                  </tr> -->
					</tbody>
				</table>
				<!-- 주문자 정보 테이블 끝 -->


				<!-- 배송지 정보 테이블 -->
				<h3>배송지 정보</h3>
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
								<div class="">배송지 주소</div>
							</th>
							<!-- 행 -->
							<th class="col-sm-10 text-left text-black">
								<div class="">
									<div class="form-group w-25 d-inline-block text-center">
										<label for="exampleInputEmail1" class="form-label mt-4"></label>
										<input type="text" class="form-control text-center"
											id="ozip_code"
											<%-- value="${orderForm.ozip_code }" --%>
                                 name="ozip_code"
											placeholder="우편번호" value="05717">

									</div>
									<div class="btn btn-outline-dark">우편번호 조회</div>
								</div> <span class="ozip_code-error text-danger"></span>
								<div class="">
									<div class="form-group w-75 d-inline-block text-center">
										<label for="exampleInputEmail1" class="form-label mt-4"></label>
										<input <%-- value="${orderForm.oaddress }" --%> type="text"
											class="form-control text-center" id="oaddress"
											name="oaddress" placeholder="주소(도로명)"
											value="서울특별시 송파구 중대로 135 (가락동)">

									</div>
								</div> <span class="oaddress-error text-danger"></span>
								<div class="">
									<div class="form-group w-75 d-inline-block text-center">
										<label for="exampleInputEmail1" class="form-label mt-4"></label>
										<input
											<%--  value="${orderForm.odetail_address }" --%> type="text"
											class="form-control text-center" id="odetail_address"
											name="odetail_address" placeholder="상세 주소를 입력해 주세요."
											value="1004호">
									</div>
								</div>

							</th>

						</tr>


						<tr class="table-secondary">
							<!-- 행 -->

							<th class="col-sm-2 text-center text-black table-active"
								style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
								<div class="">수령인</div>
							</th>
							<!-- 행 -->
							<th class="col-sm-10 text-left text-black">
								<div class="">
									<div class="">
										<div class="form-group w-25 d-inline-block text-center">
											<label for="exampleInputEmail1" class="form-label mt-4"></label>
											<input <%-- value="${orderForm.orecipient }" --%> type="text"
												class="form-control text-center" id="orecipient"
												name="orecipient" placeholder="수령인 이름을 입력하세요" value="홍길동">
										</div>
									</div>
								</div> <span class="orecipient-error text-danger"></span>
							</th>
						</tr>
						<tr class="table-secondary">
							<!-- 행 -->
							<th class="col-sm-2 text-center text-black table-active"
								style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
								<div style="vertical-align: middle" class="p-all-10 m-t-15">
									휴대폰 번호</div>
							</th>
							<!-- 행 -->
							<th class="col-sm-10 text-left text-black">
								<div class="form-group  w-25 d-inline-block m-b-10">
									<label for="exampleSelect1" class="form-label"></label> <select
										class="form-select  text-center" id="tel4" name="tel4">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>
								</div>
								<h4 class="d-inline-block">-</h4>

								<div class="form-group w-25 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="text" class="form-control text-center" id="tel5"
										name="tel5" placeholder="0000" value="1234" maxlength="4">
								</div>

								<h4 class="d-inline-block">-</h4>

								<div class="form-group w-25 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="text" class="form-control text-center" id="tel6"
										name="tel6" placeholder="0000" value="1234" maxlength="4">

								</div> <span class="orecipient_tel-error text-danger"></span>
							</th>
						</tr>

						<tr class="table-secondary">
							<!-- 행 -->

							<th class="col-sm-2 text-center text-black table-active"
								style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
								<div style="vertical-align: middle" class="p-all-10 m-t-15">
									연락처</div>
							</th>
							<!-- 행 -->
							<th class="col-sm-10 text-left text-black">
								<div class="form-group  w-25 d-inline-block m-b-10">

									<label for="exampleSelect1" class="form-label"></label> <select
										id="tel7" name="tel7" class="form-select  text-center">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>
								</div>
								<h4 class="d-inline-block">-</h4>

								<div class="form-group w-25 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="text" class="form-control text-center" id="tel8"
										name="tel8" placeholder="0000" value="1234" maxlength="4">

								</div>
								<h4 class="d-inline-block">-</h4>

								<div class="form-group w-25 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="text" class="form-control text-center" id="tel9"
										name="tel9" placeholder="0000" value="1234" maxlength="4">
								</div>
							</th>
						</tr>

						<tr class="table-secondary">
							<!-- 행 -->
							</th>
							<th class="col-sm-2 text-center text-black table-active"
								style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
								<div class="">배송요청사항</div>
							</th>
							<!-- 행 -->
							<th class="col-sm-10 text-left text-black">
								<div class="">
									<div class="form-group w-75 d-inline-block text-center">
										<label for="exampleInputEmail1" class="form-label mt-4"></label>
										<input <%-- value="${orderForm.orequest }" --%> type="text"
											class="form-control text-center" id="orequest"
											name="orequest" placeholder="0/20자" value="조심히 오세요"
											maxlength="20">
									</div>
								</div> <span class="orequest-error text-danger"></span>
							</th>
						</tr>

						<tr class="table-secondary">
							<!-- 행 -->
							<th class="col-sm-2 text-center text-black table-active"
								style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
								<div style="vertical-align: middle" class="p-all-10 m-t-15">
									수령인 Email</div>
							</th>
							<!-- 행 -->
							<th class="col-sm-10 text-left text-black">
								<div class="form-group w-25 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="text" class="form-control text-center"
										id="orecipient_email1" name="orecipient_email1"
										placeholder="ILOVETEAM3" value="ILOVETEAM3">

								</div>
								<h4 class="d-inline-block">@</h4>

								<div class="form-group w-25 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>

									<select id="orecipient_email2" name="orecipient_email12"
										class="form-select  text-center">
										<option value="">직접입력</option>
										<option value="naver.com" selected="selected">naver.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="daum.net">daum.net</option>
										<option value="nate.com">nate.com</option>
										<option value="hanmail.net">hanmail.net</option>
										<option value="yahoo.com">yahoo.com</option>
										<option value="dreamwiz.com">dreamwiz.com</option>
									</select>

								</div> <span class="orecipient_email-error text-danger"></span>
								<div class="form-group  w-25 d-inline-block m-b-10"
									id="orecipient_email-error-scroll">
									<label for="exampleSelect1" class="form-label"></label>
								</div>
							</th>
						</tr>
					</tbody>
				</table>
				<!-- 공 테이블 끝 -->

				<!-- 결제 수단 -->
				<h3>결제 수단 선택</h3>
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
								<div class="">결제수단 선택</div>
							</th>
							<!-- 행 -->
							<th class="col-sm-10 text-left text-black">
								<fieldset class="form-group" name="payment">
									<div class="form-check d-inline-flex">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input " name="opayment" id="card" value="1"
											checked="" onchange="setDisplay()"> 신용카드
										</label>
									</div>
									<div class="form-check d-inline-flex">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="opayment" id="mileage"
											value="2" onchange="setDisplay()"> 마일리지
										</label>
									</div>
									<div class="form-check disabled d-inline-flex">
										<label class="form-check-label"> <input type="radio"
											class="form-check-input" name="opayment" id="virtualAccount"
											value="3" onchange="setDisplay()"> 가상계좌
										</label>
									</div>
									<div></div>
								</fieldset> <c:if test=""></c:if>
							</th>
						</tr>

					</tbody>
				</table>
				<!-- 공 테이블 끝 -->

				<!-- 카드뷰 -->
				<div id="cardView">
					<h3>결제 수단 선택</h3>
					<table class="table m-b-77" style="width: 100%">
						<thead class=" h-25 ">
							<tr>
								<th class="col-sm-3 text-center text-black"></th>
								<th class="col-sm-5 text-left text-black"></th>
								<th class="col-sm-4 text-center text-black"></th>
							</tr>
						</thead>
						<tbody>



							<tr class="table-secondary ">
								<!-- 행 -->
								<th class="col-sm-3 text-center text-black"
									style="border-right: 0.3px solid #cabfbf;">
									<fieldset class="form-group2" name="1">
										<div class="form-check d-inline-flex">
											<label class="form-check-label"> <input type="radio"
												class="hyundai form-check-input" name="ocard_name"
												id="ocard_name" value="현대카드" onchange="javascript:send()">
												현대카드
											</label>
										</div>
										<img alt="현대카드"
											src="https://www.thehandsome.com/medias/HYUNDAI.jpg?context=bWFzdGVyfHJvb3R8MjYxMHxpbWFnZS9qcGVnfGg1ZC9oN2MvODgxNDE4MTcxMTkwMi5qcGd8YmM5ZWY0ZjlhODlkMzdmMjYyNmY4NjQ4OWU5NWVjOWFlMGY4ODIwYzZlNjA0MjBlNDkwNWI0ZDllYThjMWE5Mw">
									</fieldset>
								</th>


								<!-- 행 -->
								<th class="col-sm-5 text-center text-black"
									style="border-right: 0.3px solid #cabfbf;">현대카드 5만원 이상 결제시
									2~7개월 무이자 할부 <input type="text" hidden=""
									id="ocard_installmentrate" name="ocard_installmentrate"
									class="hyundai" value="5">
								</th>


								<th class="col-sm-4 text-center text-black"><label
									for="exampleInputEmail1" class="form-label mt-4"></label> <select
									id="ocard_installmentrate_period"
									name="ocard_installmentrate_period"
									class="hyundai form-select  text-center"
									onchange="javascript:send()">
										<option value="1" selected="selected">일시불</option>

										<option value="2">2개월</option>
										<option value="3">3개월</option>
										<option value="3">3개월</option>
										<option value="4">4개월</option>
										<option value="5">5개월</option>

								</select></th>
							</tr>


							<tr class="table-secondary ">
								<!-- 행 -->
								<th class="col-sm-3 text-center text-black"
									style="border-right: 0.3px solid #cabfbf;">
									<fieldset class="form-group2" name="1">
										<div class="form-check d-inline-flex">
											<label class="form-check-label"> <input type="radio"
												class="BC form-check-input" name="ocard_name"
												id="ocard_name" value="BC카드" onchange="javascript:send()">
												BC카드
											</label>
										</div>
										<img alt="BC카드"
											src="/medias/BC.jpg?context=bWFzdGVyfHJvb3R8MjQ1OHxpbWFnZS9qcGVnfGhmMi9oMGQvODgxNDE4MTIyMDM4Mi5qcGd8MjZlZGU2ZGQyNDBkYzU5YmY2NWY0MDU3NDc1OTA0YWI5NmM4NDJjMDFiYjBiYjBjY2FhZjhmMzg3ZmE5NGU5Yw">
									</fieldset>
								</th>


								<!-- 행 -->
								<th class="col-sm-5 text-center text-black"
									style="border-right: 0.3px solid #cabfbf;">현대카드 5만원 이상 결제시
									2~7개월 무이자 할부 <input type="text" hidden=""
									id="ocard_installmentrate" name="ocard_installmentrate"
									class="BC" value="5">
								</th>


								<th class="col-sm-4 text-center text-black"><label
									for="exampleInputEmail1" class="form-label mt-4"></label> <select
									id="ocard_installmentrate_period"
									name="ocard_installmentrate_period"
									class="BC form-select  text-center"
									onchange="javascript:send()">
										<option value="1" selected="selected">일시불</option>

										<option value="2">2개월</option>
										<option value="3">3개월</option>
										<option value="3">3개월</option>
										<option value="4">4개월</option>
										<option value="5">5개월</option>

								</select> <!--  <input
                           type="text" class="form-control text-center BC" placeholder="3"
                           id="ocard_installmentrate_period"
                           name="ocard_installmentrate_period" value="3" maxlength="2"> -->
								</th>
							</tr>

						</tbody>
					</table>
					<!-- 공 테이블 끝 -->
				</div>

				<div id="mileageView">

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
										<h3>사용 예정 마일리지는 ${total_amount} 포인트 입니다.</h3>
									</div>
								</th>
							</tr>

						</tbody>
					</table>



				</div>
				<div id="virtualAccountView">
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
										<h3>${order.odeposit_deadline} 까지 입금하지 않을 시 주문이 자동 취소
											됩니다.</h3>
										<input hidden="hidden" id="odeposit_deadline"
											name="odeposit_deadline">
									</div>
								</th>
							</tr>

						</tbody>
					</table>

				</div>


			</div>
			<!-- 왼쪽 끝  -->
			<!-- 오른쪽 시작 -->
			<div class="col-md-4 m-b-50 m-l-10 m-r-35">

				<div class="" style="position: sticky; top: 90px;">
					<div
						class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="text-center m-b-25">주문 내용</h4>
						<div class="flex-w flex-t p-b-13 justify-content-between">
							<b style="color: black;"> 상품금액</b>
							<div>
								<span id="totalNormalAmt" name="totalNormalAmt">${total_amount}</span>원
								<input hidden="hidden" id="totalprice" name="totalprice"
									value="${total_amount}">
							</div>
						</div>
						<div class="flex-w flex-t bor12 p-b-13 justify-content-between">
							<dt class="ee_tit">배송비</dt>
							<dd class="ee_price">
								<span id="totalDeliAmt">0</span>원
							</dd>
						</div>

						<div class="flex-w flex-t p-b-40 p-t-13 justify-content-between"
							style="font-size: 20px;">
							<dt class="ee_tit ee_strong">결제예정금액</dt>
							<dd class="ee_price ee_strong">
								<span id="totalOrdAmt">${total_amount}</span>원
							</dd>
						</div>


						<button onclick="javascript:requestPost()" type="button"
							class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							결제하기</button>
					</div>
				</div>

			</div>
		</div>
		<!-- 오른쪽 끝 -->
	</form>

</div>

<script>

let Ocard_name=7; //default
let Ocard_installmentrate=7; //default
let Ocard_installmentrate_period=7; //default
let Ototal_price= totalprice.value;

// 페이지가 로딩되면 바로 hide 시키기
$(document).ready(function(){
    if($('input:radio[id=card]').is(':checked')){
           $('#cardView').show();
       }else{
           $('#cardView').hide();
       }
       
       if($('input:radio[id=mileage]').is(':checked')){
           $('#mileageView').show();
       }else{
           $('#mileageView').hide();
       }
       
       if($('input:radio[id=virtualAccount]').is(':checked')){
           $('#virtualAccountView').show();
       }else{
           $('#virtualAccountView').hide();
       }
});

	// 라디오버튼으로 보이고 안보이게하기
   function setDisplay(){
       if($('input:radio[id=card]').is(':checked')){
           $('#cardView').show();
       }else{
           $('#cardView').hide();
       }
       
       if($('input:radio[id=mileage]').is(':checked')){
           $('#mileageView').show();
       }else{
           $('#mileageView').hide();
       }
       
       if($('input:radio[id=virtualAccount]').is(':checked')){
           $('#virtualAccountView').show();
       }else{
           $('#virtualAccountView').hide();
       }
   }
   
	//라디오버튼을 누르면 같은 클래스의 내용을 저장함 저장한 값은 AJAX로 controller로 전송
   function send(){
      console.log("send")
      if($('input:radio[id=card]').is(':checked')){
         let className = $('input:radio[name=ocard_name]:checked').attr('class')
         //var className2 =document.querySelector('input[name="ocard_name"]:checked').value;
         console.log(className); //hyundai
         let strArray=className.split(' ');
         console.log(strArray[0]);
         let elementsall = document.querySelectorAll('.' +strArray[0]);
         console.log(elementsall);
      
         Ocard_name= elementsall[0].value;
         Ocard_installmentrate= elementsall[1].value;
         Ocard_installmentrate_period= elementsall[2].value;
           
      }
   }
   
	//주문 DTO에 삽입할 정보 모두 저장
   function requestPost() {
      //제출 비활성화
      event.preventDefault();
    
    	  
      const Ozip_code = ozip_code.value;
      const Oaddress = oaddress.value;
      const Odetail_address = odetail_address.value
      const Orecipient = orecipient.value;
      const Orequest = orequest.value;
      const Oorder_tel = tel1.value + "-"+  tel2.value + "-" + tel3.value;
      const Orecipient_tel = tel4.value + "-" + tel5.value +  "-" + tel6.value;
      const Oaddtional_tel = tel7.value +  "-" + tel8.value +  "-" + tel9.value;
      const Orecipient_email = orecipient_email1.value + "@" + orecipient_email2.value;
      
      const Opayment=document.querySelector('input[name="opayment"]:checked').value;
    /*   for (var i=0; i<Opayment_len; i++) {
          if (document.getElementsByName("opayment")[i].checked == true) {
           //  alert(document.getElementsByName("opayment")[i].value);
             opayment.value
          }
      } */
      
      console.log("Orecipient", Orecipient);
      /*
      브라우저 유효성 검사
      */
      
      //유효성 검사 결과 변수
      let checkResult = true;
      
      // 필수 배송지 입력
      console.log("Ozip_code", Ozip_code);
      const ozipcodeError = document.querySelector(".ozip_code-error");
      ozipcodeError.innerHTML = "";
      if(Ozip_code == "" || Ozip_code.trim() == "" ) {
         ozipcodeError.innerHTML = "필수 입력 사항";
         //스크롤이동시키기 
         document.getElementById("ozip_code").scrollIntoView(false);
      
         checkResult = false;
      }else{         
         ozipcodeError.innerHTML = "";
      }
      
      // 필수 배송지 입력
      const oaddressError = document.querySelector(".oaddress-error");
      if(Oaddress == "" || Ozip_code.trim() == "") {
         oaddressError.innerHTML = "필수 입력 사항";
         checkResult = false;
      } else{
            oaddressError.innerHTML = "";         
      }
      // 수령인
      const orecipientError = document.querySelector(".orecipient-error");
      if(Orecipient == "" || Orecipient.trim() == "") {
         orecipientError.innerHTML = "필수 입력 사항";
         checkResult = false;
      }else{
         orecipientError.innerHTML = "";      
      }
      // 수령인 전화번호
      const Orecipient_telError = document.querySelector(".orecipient_tel-error");
      if(Orecipient_tel == "" || Orecipient_tel.trim() == "") {
         Orecipient_telError.innerHTML = "필수 입력 사항";
         checkResult = false;
      }else{
         const pattern = /(010|011|016|017|018|019)-[0-9]{3,4}-[0-9]{4}/g;
         const result = pattern.test(Orecipient_tel);
         if(result === false) {
            console.log("번호 형식");
            Orecipient_telError.innerHTML = "번호 형식이 아닙니다.";
            checkResult = false;
         }else{
            Orecipient_telError.innerHTML = "";            
         }
      } 
   
      // 주문자 전화번호
      const Oorder_telError = document.querySelector(".order_tel-error");
      if(Oorder_tel == "" || Oorder_tel.trim() == "") {
         Oorder_telError.innerHTML = "필수 입력 사항";
         checkResult = false;
      }else{
         const pattern = /(010|011|016|017|018|019)-[0-9]{3,4}-[0-9]{4}/g;
         const result = pattern.test(Oorder_tel);
         if(result === false) {
            console.log(Oorder_tel);
            Oorder_telError.innerHTML = "번호 형식이 아닙니다.";
            checkResult = false;
         }else{
            Oorder_telError.innerHTML = "";            
         }
      } 
      
      // 수령인 이메일
      const orecipient_emailError = document.querySelector(".orecipient_email-error");
      console.log("orecipient_email2", orecipient_email2.value);
      console.log("orecipient_email1", orecipient_email1.value);
      if(orecipient_email1.value == "" || orecipient_email1.value.trim() == "") {
         document.getElementById("orecipient_email-error-scroll").scrollIntoView(false);
         //스크롤이동시키기 
         orecipient_emailError.innerHTML = "필수 입력 사항";
         checkResult = false;
      }else if(orecipient_email2.value == "" || orecipient_email2.value.trim() ==""){
         orecipient_emailError.innerHTML = "필수 입력 사항";
         checkResult = false;
      }else{
         const pattern = /^(.+)@(.+)$/g;
         const result = pattern.test(Orecipient_email);
         if(result === false) {
            orecipient_emailError.innerHTML = "이메일 형식이 아닙니다.";
            checkResult = false;
         }else{
            orecipient_emailError.innerHTML = "";            
         }
      }
      
      // 배송 요청 사항
      const orequestError = document.querySelector(".orequest-error");
      if(Orequest != "" && Orequest.length > 20 ){
         orequestError.innerHTML ="배송 길이가 초과되었습니다."
      }else {
         const pattern = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/gi;
         
         const result = pattern.test(Orequest);
         if(result === true){
            orequestError.innerHTML = "배송 요청은 특수문자를 포함할 수 없습니다.";
            checkResult = false;
         }else{
            orequestError.innerHTML = "";            
         }
      }
      
   
      //서버로 제출할지 말지 결정
      if(!checkResult) {
         return false;
      }
      
      //console.log(Ozip_code, Oaddress, Odetail_address, Orecipient, Orequest, Orecipient_tel, Oaddtional_tel, Orecipient_email);
        if(Ocard_name==1){
        	if(Opayment==7){
        		 swal("", 	soldOutItem + " 상품 재고가 부족합니다.", "error");
             	return false;
        	}
        	
        }
      //서버 유효성 검사
       $.ajax({
         url:"order",
         method:"get",
         data: {
            mid: null,
            oid: null,
            odate: null,
            ozip_code: Ozip_code,
            oaddress: Oaddress,
            odetail_address: Odetail_address,
            orecipient: Orecipient,
            orecipient_tel: Orecipient_tel,
            ototal_price: Ototal_price,
            //ototal_price = totalprice.value;
            ochannel: "the handsome",
            ocard_name: Ocard_name, 
            ocard_installmentrate: Ocard_installmentrate, 
            ocard_installmentrate_period: Ocard_installmentrate_period,
            oaccountholder: "우체국 102345-678-91011",
            odeposit_deadline: null,
            order_tel: Oorder_tel,
            oaddtional_tel: Oaddtional_tel, 
            orequest: Orequest,
            orecipient_email: Orecipient_email,
            opayment: Opayment,
           
         },
         contentType: "application/x-www-form-urlencoded; charset=UTF-8;"
      })
      .done((data) => {
         console.log(data);
         const regex = new RegExp("상품명.+", "g");
         if(data.result == "success"){
            //console.log(data);
            //리다이랙트
            window.location.href = "/order/ordersuccess";
         }else if(regex.test(data.result)){
            console.log("outofstock")
            var soldOutItem = data.result.split(":")[1];
            console.log(data.result.split(":")[1]);
            console.log(data.result);
            //스왈 띄움
            swal("상품 재고부족", 	soldOutItem + " 상품 재고가 부족합니다.", "error");
         }
         return false;
      }); 
      
   }
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>