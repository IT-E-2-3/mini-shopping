<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>


<!-- Shoping Cart -->
<div class="row">
	<!-- 왼쪽 -->
	<div class="col-md-7 m-l-70">
		<table class="table-shopping-cart m-b-77" style="width: 100%">
			<thead class="table_head h-25">
				<tr>
					<th class="col-sm-1 text-center text-black">
						<div class="form-check d-inline-flex">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckDefault" /> <label class="form-check-label"
								for="flexCheckDefault"> </label>
						</div>
					</th>
					<th class="col-sm-6 text-center text-black">상품 정보</th>

					<th class="col-sm-1 text-left text-black">판매가</th>
					<th class="col-sm-2 text-center text-black">수량</th>
					<th class="col-sm-2 text-center text-black">변경</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${OrderRowList}">
					<tr class="table-secondary">
						<th class="col-sm-1 text-center text-black">
							<div class="form-check d-inline-flex">
								<input class="form-check-input" type="checkbox" value=""
									id="flexCheckDefault" /> <label class="form-check-label"
									for="flexCheckDefault"> </label>
							</div>
						</th>

						<!-- 상품 정보 th -->
						<th class="col-sm-6">
							<!-- 상품 정보  row-->
							<div class="row">
								<div class="col-sm-4">
									<!-- 상품 사진 -->
									<div class="stext-110 cl2 m-l-25 m-t-10 m-b-10">
										<img
											src="${item.product_detail_url1}"
											alt="" style="width: 98px;">
									</div>
								</div>

								<!-- 상품 설명 -->
								<div class="col-sm-6 m-l-20 m-t-15">
									<a href="#" class="basket_tlt" style="color: black">
										<p class="tlt">${item.pbrand }</p>
										<p class="sb_tlt">${item.pname}</p>
									</a>
									<p class="color_op mt-2" style="color: gray">
										color : ${item.color_code}<span class="and_line">/</span> size : ${item.size_code}
									</p>
								</div>
							</div> <!-- 상품 정보 끝 -->
						</th>
						<th class="col-sm-1 text-left">
							<div class="m-t-7 m-r-30 m-l--0">₩ ${item.pprice}</div>
						</th>
						<th class="col-sm-2 text-center">
							<div class="m-t-7">
								<div class="wrap-num-product flex-w m-l-auto m-r-0">
									<div
										class=" btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
										<i class="fs-16 zmdi zmdi-minus"></i>
									</div>

									<input class="mtext-104 cl3 txt-center num-product"
										type="number" name="num-product1" value= "${item.oamount}" />

									<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
										<i class="fs-16 zmdi zmdi-plus"></i>
									</div>
								</div>
							</div>
						</th>
						<th class="col-sm-2 text-center"><a href="#none"
							id="RemoveProduct_0" class="btn wt_ss">
								<div
									class="flex-c-m stext-101 cl2 size-98 bg8 bor13 hov-btn1 p-lr-15 m-tb-10">
									삭제</div>
						</a></th>
					</tr>
				</c:forEach>


			</tbody>
		</table>
	</div>

	<!-- 오른쪽 -->
	<div class="col-md-4 m-b-50 m-l-10 m-r-35">
		<div class="" style="position: sticky; top: 90px">
			<div
				class="
              bor10
              p-lr-40 p-t-30 p-b-40
              m-l-63 m-r-40 m-lr-0-xl
              p-lr-15-sm
            ">
				<h4 class="text-center m-b-25">주문 내용</h4>
				<div class="flex-w flex-t p-b-13 justify-content-between">
					<b style="color: black"> 상품금액</b>
					<div>
						<span id="totalNormalAmt">₩ ${total_amount} </span>
					</div>
				</div>
				<div class="flex-w flex-t bor12 p-b-13 justify-content-between">
					<dt class="ee_tit">배송비</dt>
					<dd class="ee_price">
						<span id="totalDeliAmt">₩ 0</span>
					</dd>
				</div>

				<div class="flex-w flex-t p-b-40 p-t-13 justify-content-between"
					style="font-size: 20px">
					<dt class="ee_tit ee_strong">결제예정금액</dt>
					<dd class="ee_price ee_strong">
						<span id="totalOrdAmt">₩ ${total_amount} </span>
					</dd>
				</div>

				<a href="${pageContext.request.contextPath}/order/"
					class="
                flex-c-m
                stext-101
                cl0
                size-116
                bg3
                bor14
                hov-btn3
                p-lr-15
                trans-04
                pointer
              ">
					주문하기 </a>
			</div>
		</div>
	</div>
</div>

<!-- Back to top -->
<div class="btn-back-to-top" id="myBtn">
	<span class="symbol-btn-back-to-top"> <i
		class="zmdi zmdi-chevron-up"></i>
	</span>
</div>

<!--===============================================================================================-->
<script src="/resource/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="/resource/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="/resource/vendor/bootstrap/js/popper.js"></script>
<script src="/resource/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="/resource/vendor/select2/select2.min.js"></script>
<script>
	$(".js-select2").each(function() {
		$(this).select2({
			minimumResultsForSearch : 20,
			dropdownParent : $(this).next(".dropDownSelect2"),
		});
	});
</script>
<!--===============================================================================================-->
<script
	src="/resource/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
<!--===============================================================================================-->
<script
	src="/resource/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
	$(".js-pscroll").each(function() {
		$(this).css("position", "relative");
		$(this).css("overflow", "hidden");
		var ps = new PerfectScrollbar(this, {
			wheelSpeed : 1,
			scrollingThreshold : 1000,
			wheelPropagation : false,
		});

		$(window).on("resize", function() {
			ps.update();
		});
	});
</script>
<!--===============================================================================================-->
<script src="/resource/js/main.js"></script>



<%@ include file="/WEB-INF/views/common/footer.jsp"%>
