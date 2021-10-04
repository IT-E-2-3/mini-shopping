<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/header-category.jsp" %>

	<h2 class="m-t-25 m-b-25 text-center" >주문 완료 </h2>
	<div class="m-t-25 m-b-25 text-center" style="border-top:0.3px solid #a5a3a3"></div>
	<h4 class="m-t-25 m-b-25 text-center "> 주문이 완료되었습니다.</h4>
	<h6 class="m-t-25 m-b-25 text-center "> 주문번호 : $oid (주문일시 : $odate) </h6>


	<div class="m-r-300 m-l-300">
		<table class="table-shopping-cart m-b-77" style="width: 100%" >
			<thead class="table_head  h-25">
				<tr>
				
					<th class="col-sm-6 text-center text-black" >상품 정보</th>
				
					<th class="col-sm-1 text-left text-black">판매가</th>
					<th class="col-sm-2 text-center text-black">수량</th>
					
				</tr>
			</thead>
			<tbody>
				<tr class="table-secondary">
					

					<!-- 상품 정보 th -->
					<th class="col-sm-6" >
						<!-- 상품 정보  row-->
						<div class="row">
							
						<div class="col-sm-4">
							<!-- 상품 사진 -->
							<div class="stext-110 cl2 m-l-25 m-t-10 m-b-10">
								<img src="http://newmedia.thehandsome.com/IL/2B/FW/IL2B9WJC412W_DG_S01.jpg" alt="" style="width:98px;">
							</div>

						</div>
						
							<!-- 상품 설명 -->
						<div class="col-sm-6 m-l-20 m-t-15">
								<a href="#" class="basket_tlt" style="color:black" onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');"> 
									<p class="tlt">LÄTT</p> 
									<p class="sb_tlt">울 셋업 재킷</p>
								</a>
								<p class="color_op mt-2" style="color:gray">
									color : DARK GREY<span class="and_line">/</span>
									size : 82
								</p>
							
						</div>
						
					</div>
					<!-- 상품 정보 끝 -->
					</th>
					<th class="col-sm-1 text-left" >
						<div class="m-t-7 m-r-30 m-l--0 ">
							₩745,000
						</div>
					</th>
					<th class="col-sm-2 text-center">
						<div class="m-t-7 ">
							1
						</div>
					</th>
					
				</tr>
				<tr class="table-secondary">

					

					<!-- 상품 정보 th -->
					<th class="col-sm-6" >
						<!-- 상품 정보  row-->
						<div class="row">
							
						<div class="col-sm-4">
							<!-- 상품 사진 -->
							<div class="stext-110 cl2 m-l-25 m-t-10 m-b-10">
								<img src="http://newmedia.thehandsome.com/MM/2B/FW/MM2B9TTO060HOH_BL_S01.jpg" style="width:98px;" alt="">
							</div>

						</div>
						
							<!-- 상품 설명 -->
						<div class="col-sm-6 m-l-20 m-t-15">
							<a href="#" class="basket_tlt" style="color:black" onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');"> 
								<p class="tlt">CLUB MONACO</p> 
								<p class="sb_tlt">포켓 티셔츠</p>
							</a>
							<p class="color_op mt-2" style="color:gray">
								color : BLUE <span class="and_line">/</span>
								size : M
							</p>
							
						</div>
						
					</div>
					<!-- 상품 정보 끝 -->
					</th>
					<th class="col-sm-1 text-left" >
						<div class="m-t-7 m-r-30 m-l--0 ">
							₩68,000
						</div>
					</th>
					<th class="col-sm-2 text-center">
						<div class="m-t-7 ">
							1
						</div>
					</th>
					
				</tr>
					<tr class="table-secondary">

					

					<!-- 상품 정보 th -->
					<th class="col-sm-6" >
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
							
						
								<a href="#" class="basket_tlt" style="color:black" onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','울 셋업 재킷');"> 
									<p class="tlt">LÄTT</p> 
									<p class="sb_tlt">울 셋업 재킷</p>
								</a>
								<p class="color_op mt-2" style="color:gray">
									color : DARK GREY<span class="and_line">/</span>
									size : 82
								</p>
							
						</div>
						
					</div>
					<!-- 상품 정보 끝 -->
					</th>
					<th class="col-sm-1 text-left" >
						<div class="m-t-7 m-r-30 m-l--0 ">
							111,500
						</div>
					</th>
					<th class="col-sm-2 text-center">
						<div class="m-t-7 ">
							1
						</div>
					</th>
					
				</tr>
				
			
				
		
			</tbody>
		</table>
	</div>

	<div class="m-r-300 m-l-300">
	<div class="p-all-25" >
	
	<div class="row">
    <div class="col-sm-8">
        <!-- 여기에 테이블 삽입 -->
    </div>
		<div class="col-sm-4">
			<h2 class="text-left text-black m-b-35">
				주문 내역
			</h2>	
			<div class="">
				<div class="">
					
					<div class="flex-w flex-t p-b-13 justify-content-between">
						<b style="color:black;"> 상품금액</b>
						<div><span id="totalNormalAmt">813,000</span>원</div>
					</div>
					<div class="flex-w flex-t bor12 p-b-13 justify-content-between">
						<dt class="ee_tit">배송비</dt>
						<dd class="ee_price"><span id="totalDeliAmt">0</span>원</dd>
					</div>

				<div class="flex-w flex-t p-b-40 p-t-13 justify-content-between" style="font-size: 20px;">
					<dt class="ee_tit ee_strong">결제금액</dt>
					<dd class="ee_price ee_strong"><span id="totalOrdAmt">813,000</span>원</dd>
				</div>
				
				
			</div>
		</div>
	</div>
</div>


	</div>
</div>


	<div class="m-r-300 m-l-300">
		<h3>결제 수단 선택</h3>
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
		</th>
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
		</th>
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
			</th>
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
				</th>
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


	<div class="m-r-300 m-l-300">
		<h3>배송지 정보</h3>
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
		</th>
		<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
			<div class="">
				배송지 주소
			</div>
		</th>
		<!-- 행 -->
		<th class="col-sm-8 text-left text-black">
			(12455) 서울특별시 송파구 가락동 78
		</th>
	</tr>

	<tr class="table-secondary">
		<!-- 행 -->
			</th>
			<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
				<div class="">
				수령인
				</div>
			</th>
			<!-- 행 -->
			<th class="col-sm-8 text-left text-black">
				동길홍
			</th>
		</tr>

	<tr class="table-secondary">
		<!-- 행 -->
			</th>
			<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
				<div class="">
				 주문자 연락처
				</div>
			</th>
			<!-- 행 -->
			<th class="col-sm-8 text-left text-black">
				010-1234-5678
			</th>
		</tr>

		<tr class="table-secondary">
			<!-- 행 -->
				</th>
				<th class="col-sm-4 text-center text-black table-active" style="border-right:0.3px solid #cabfbf; border-bottom:0.3px solid #a5a3a3" >
					<div class="">
					수령인 연락처
					</div>
				</th>
				<!-- 행 -->
				<th class="col-sm-8 text-left text-black">
					010-9876-5432
				</th>
			</tr>

	
<!-- 책갈피 -->

</tbody>
</table>
	</div>
	

	<div class="text-center m-b-100">
		<button type="button" class="btn btn-outline-primary d-inline-flex">주문내역조회</button>
		<button type="button" style="border:2px solid #000000" class="btn btn-primary d-inline-flex">쇼핑계속하기</button>

</div>
	




			</div>


			</div>

	</div>
		



<%@ include file="/WEB-INF/views/common/footer.jsp" %>
