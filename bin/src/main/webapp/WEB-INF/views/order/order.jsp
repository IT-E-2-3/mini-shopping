<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-nocategory.jsp"%>

<div class="card m-2">
	<div class="card-header">Spring Security</div>


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
					<tr class="table-secondary">


						<!-- 상품 정보 th -->
						<th class="col-sm-6">
							<!-- 상품 정보  row-->
							<div class="row">

								<div class="col-sm-4">
									<!-- 상품 사진 -->
									<div class="stext-110 cl2 m-l-25 m-t-10 m-b-10">
										<img
											src="http://newmedia.thehandsome.com/IL/2B/FW/IL2B9WJC412W_DG_S01.jpg"
											alt="" style="width: 98px;">
									</div>

								</div>

								<!-- 상품 설명 -->
								<div class="col-sm-6 m-l-20 m-t-15">
									<a href="#" class="basket_tlt" style="color: black"
										onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');">
										<p class="tlt">LÄTT</p>
										<p class="sb_tlt">울 셋업 재킷</p>
									</a>
									<p class="color_op mt-2" style="color: gray">
										color : DARK GREY<span class="and_line">/</span> size : 82
									</p>

								</div>

							</div> <!-- 상품 정보 끝 -->
						</th>
						<th class="col-sm-1 text-left">
							<div class="m-t-7 m-r-30 m-l--0 ">₩745,000</div>
						</th>
						<th class="col-sm-2 text-center">
							<div class="m-t-7 ">1</div>
						</th>

					</tr>
					<tr class="table-secondary">



						<!-- 상품 정보 th -->
						<th class="col-sm-6">
							<!-- 상품 정보  row-->
							<div class="row">

								<div class="col-sm-4">
									<!-- 상품 사진 -->
									<div class="stext-110 cl2 m-l-25 m-t-10 m-b-10">
										<img
											src="http://newmedia.thehandsome.com/MM/2B/FW/MM2B9TTO060HOH_BL_S01.jpg"
											style="width: 98px;" alt="">
									</div>

								</div>

								<!-- 상품 설명 -->
								<div class="col-sm-6 m-l-20 m-t-15">
									<a href="#" class="basket_tlt" style="color: black"
										onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');">
										<p class="tlt">CLUB MONACO</p>
										<p class="sb_tlt">포켓 티셔츠</p>
									</a>
									<p class="color_op mt-2" style="color: gray">
										color : BLUE <span class="and_line">/</span> size : M
									</p>

								</div>

							</div> <!-- 상품 정보 끝 -->
						</th>
						<th class="col-sm-1 text-left">
							<div class="m-t-7 m-r-30 m-l--0 ">₩68,000</div>
						</th>
						<th class="col-sm-2 text-center">
							<div class="m-t-7 ">1</div>
						</th>

					</tr>
					<tr class="table-secondary">



						<!-- 상품 정보 th -->
						<th class="col-sm-6">
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


									<a href="#" class="basket_tlt" style="color: black"
										onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');">
										<p class="tlt">LÄTT</p>
										<p class="sb_tlt">울 셋업 재킷</p>
									</a>
									<p class="color_op mt-2" style="color: gray">
										color : DARK GREY<span class="and_line">/</span> size : 82
									</p>

								</div>

							</div> <!-- 상품 정보 끝 -->
						</th>
						<th class="col-sm-1 text-left">
							<div class="m-t-7 m-r-30 m-l--0 ">111,500</div>
						</th>
						<th class="col-sm-2 text-center">
							<div class="m-t-7 ">1</div>
						</th>

					</tr>




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
						</th>
						<th class="col-sm-2 text-center text-black table-active"
							style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
							<div class="">주문자</div>
						</th>
						<!-- 행 -->
						<th class="col-sm-10 text-left text-black">
							<div class="">고*혜</div>
						</th>
					</tr>

					<tr class="table-secondary">
						<!-- 행 -->
						</th>
						<th class="col-sm-2 text-center text-black table-active"
							style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
							<div style="vertical-align: middle" class="p-all-10 m-t-15">
								휴대폰</div>
						</th>
						<!-- 행 -->
						<th class="col-sm-10 text-left text-black">
							<div class="form-group  w-25 d-inline-block m-b-10">
								<label for="exampleSelect1" class="form-label"></label> <select
									class="form-select  text-center" id="exampleSelect1">
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
								<input type="email" class="form-control text-center"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="0000">

							</div>
							</div>
							<h4 class="d-inline-block">-</h4>

							<div class="form-group w-25 d-inline-block text-center">
								<label for="exampleInputEmail1" class="form-label mt-4"></label>
								<input type="email" class="form-control text-center"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="0000">

							</div>


						</th>
					</tr>

					<tr class="table-secondary">
						<!-- 행 -->
						</th>
						<th class="col-sm-2 text-center text-black table-active"
							style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
							<div class="">E-mail</div>
						</th>
						<!-- 행 -->
						<th class="col-sm-10 text-left text-black">
							<div class="">ILoveTeam3@naver.com</div>
						</th>
					</tr>


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
						</th>
						<th class="col-sm-2 text-center text-black table-active"
							style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
							<div class="">배송지 주소</div>
						</th>
						<!-- 행 -->
						<th class="col-sm-10 text-left text-black">
							<div class="">
								<div class="form-group w-25 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="email" class="form-control text-center"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										placeholder="">

								</div>
								<div class="btn btn-outline-dark">우편번호 조회</div>
							</div>
							<div class="">
								<div class="form-group w-75 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="email" class="form-control text-center"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										placeholder="">

								</div>
							</div>
							<div class="">
								<div class="form-group w-75 d-inline-block text-center">
									<label for="exampleInputEmail1" class="form-label mt-4"></label>
									<input type="email" class="form-control text-center"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										placeholder="나머지 주소를 입력해 주세요.">

								</div>
							</div>
						</th>
					</tr>


					<tr class="table-secondary">
						<!-- 행 -->
						</th>
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
										<input type="email" class="form-control text-center"
											id="exampleInputEmail1" aria-describedby="emailHelp"
											placeholder="이름을 입력하세요">

									</div>
								</div>
							</div>
						</th>
					</tr>


					<tr class="table-secondary">
						<!-- 행 -->
						</th>
						<th class="col-sm-2 text-center text-black table-active"
							style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
							<div style="vertical-align: middle" class="p-all-10 m-t-15">
								휴대폰 번호</div>
						</th>
						<!-- 행 -->
						<th class="col-sm-10 text-left text-black">
							<div class="form-group  w-25 d-inline-block m-b-10">
								<label for="exampleSelect1" class="form-label"></label> <select
									class="form-select  text-center" id="exampleSelect1">
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
								<input type="email" class="form-control text-center"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="0000">

							</div>
							</div>
							<h4 class="d-inline-block">-</h4>

							<div class="form-group w-25 d-inline-block text-center">
								<label for="exampleInputEmail1" class="form-label mt-4"></label>
								<input type="email" class="form-control text-center"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="0000">

							</div>


						</th>
					</tr>

					<tr class="table-secondary">
						<!-- 행 -->
						</th>
						<th class="col-sm-2 text-center text-black table-active"
							style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
							<div style="vertical-align: middle" class="p-all-10 m-t-15">
								연락처</div>
						</th>
						<!-- 행 -->
						<th class="col-sm-10 text-left text-black">
							<div class="form-group  w-25 d-inline-block m-b-10">
								<label for="exampleSelect1" class="form-label"></label> <select
									class="form-select  text-center" id="exampleSelect1">
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
								<input type="email" class="form-control text-center"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="0000">

							</div>
							</div>
							<h4 class="d-inline-block">-</h4>

							<div class="form-group w-25 d-inline-block text-center">
								<label for="exampleInputEmail1" class="form-label mt-4"></label>
								<input type="email" class="form-control text-center"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="0000">

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
									<input type="email" class="form-control text-center"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										placeholder="0/20자">

								</div>
							</div>
						</th>
					</tr>



					<tr class="table-secondary">
						<!-- 행 -->
						</th>
						<th class="col-sm-2 text-center text-black table-active"
							style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
							<div style="vertical-align: middle" class="p-all-10 m-t-15">
								수령인 Email</div>
						</th>
						<!-- 행 -->
						<th class="col-sm-10 text-left text-black">
							<div class="form-group w-25 d-inline-block text-center">
								<label for="exampleInputEmail1" class="form-label mt-4"></label>
								<input type="email" class="form-control text-center"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="ILOVETEAM3">

							</div>
							<h4 class="d-inline-block">@</h4>

							<div class="form-group w-25 d-inline-block text-center">
								<label for="exampleInputEmail1" class="form-label mt-4"></label>
								<input type="email" class="form-control text-center"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="naver.com">

							</div>
							</div>
							<h4 class="d-inline-block">-</h4>


							<div class="form-group  w-25 d-inline-block m-b-10">
								<label for="exampleSelect1" class="form-label"></label> <select
									class="form-select  text-center" id="exampleSelect1">
									<option value="">직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="daum.net">daum.net</option>
									<option value="nate.com">nate.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="yahoo.com">yahoo.com</option>
									<option value="dreamwiz.com">dreamwiz.com</option>
								</select>
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
						</th>
						<th class="col-sm-2 text-center text-black table-active"
							style="border-right: 0.3px solid #cabfbf; border-bottom: 0.3px solid #a5a3a3">
							<div class="">결제수단 선택</div>
						</th>
						<!-- 행 -->
						<th class="col-sm-10 text-left text-black">
							<fieldset class="form-group">
								<div class="form-check d-inline-flex">
									<label class="form-check-label"> <input type="radio"
										class="form-check-input " name="optionsRadios"
										id="optionsRadios1" value="option1" checked=""> 신용카드
									</label>
								</div>
								<div class="form-check d-inline-flex">
									<label class="form-check-label"> <input type="radio"
										class="form-check-input" name="optionsRadios"
										id="optionsRadios2" value="option2"> 실시간 계좌이체
									</label>
								</div>
								<div class="form-check disabled d-inline-flex">
									<label class="form-check-label"> <input type="radio"
										class="form-check-input" name="optionsRadios"
										id="optionsRadios3" value="option3"> 가상 계좌
									</label>
								</div>
								<div></div>
								<div class="form-check d-inline-flex">
									<label class="form-check-label"> <input type="radio"
										class="form-check-input " name="optionsRadios"
										id="optionsRadios1" value="option1"> 스마일 페이
									</label>
								</div>
								<div class="form-check d-inline-flex">
									<label class="form-check-label"> <input type="radio"
										class="form-check-input" name="optionsRadios"
										id="optionsRadios2" value="option2"> 현대카드 레드 쇼핑바우처
									</label>
								</div>
								<div class="form-check disabled d-inline-flex">
									<label class="form-check-label"> <input type="radio"
										class="form-check-input" name="optionsRadios"
										id="optionsRadios3" value="option3"> 토스
									</label>
								</div>
							</fieldset>
						</th>
					</tr>




				</tbody>
			</table>
			<!-- 공 테이블 끝 -->




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
							<span id="totalNormalAmt">813,000</span>원
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
							<span id="totalOrdAmt">813,000</span>원
						</dd>
					</div>

					<a href="order_success.html"
						class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
						결제하기 </a>
				</div>
			</div>

		</div>
	</div>
	<!-- 오른쪽 끝 -->
</div>

</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>