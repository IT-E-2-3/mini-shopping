<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/animsition/css/animsition.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/MagnificPopup/magnific-popup.css"/>
<script src="${pageContext.request.contextPath}/resources/sweetalert/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/select2/select2.min.js"></script>

<!-- Product Detail -->
    <section class="sec-product-detail bg0 p-t-65 p-b-60">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-7 p-b-30">
            <div class="p-l-25 p-r-30 p-lr-0-lg">
              <div class="wrap-slick3 flex-sb flex-w">
                <div class="wrap-slick3-dots"></div>
                <div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

                <div class="slick3 gallery-lb">
                   <!-- 첫 번째 사진 -->
               <div class="product-slick3" data-thumb="${product.product_detail_url1}">
                 <div class="wrap-pic-w pos-relative">
                 
                   <img src="${product.product_detail_url1}"
                     alt="IMG-PRODUCT"/>
               
                   <a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hovbtn3 trans-04"
                     href="${product.product_detail_url1}">
                     <i class="fa fa-expand"></i>
                   </a>
                 </div>
               </div>
               
               <!-- 두 번째 사진 -->
               <div class="product-slick3" data-thumb="${product.product_detail_url2}">
                 <div class="wrap-pic-w pos-relative">
                   <img src="${product.product_detail_url2}" alt="IMG-PRODUCT"/>
               
                   <a class="flex-c-m size-108 how-pos1 bor0 s-16 cl10 bg0 hov-btn3 trans-04"
                     href="${product.product_detail_url2}">
                     <i class="fa fa-expand"></i>
                   </a>
                 </div>
               </div>
               
               <!-- 세 번째 사진 -->
                  <div class="product-slick3" data-thumb="${product.product_detail_url3}">
                    <div class="wrap-pic-w pos-relative">
                     <img
                          src="${product.product_detail_url3}"
                          alt="IMG-PRODUCT"
                        />

                     <a class="flex-c-m size-108 how-pos1 bor0 s-16 cl10 bg0 hov-btn3 trans-04"
                        href="${product.product_detail_url3}">
                           <i class="fa fa-expand"></i>
                         </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-5 p-b-30">
            <div class="p-r-50 p-t-5 p-lr-0-lg">
              <h5 class="brand-name">${product.pbrand}</h5>
              <h4 class="mtext-105 cl2 js-name-detail p-b-14">${product.pname}</h4>

              <span class="mtext-101 cl2"> ₩&nbsp;<span id="productprice">${product.pprice}</span></span>

              <div class="prod-detail-box mt-3">
                 <input type="hidden" id="productid" value="${product.pid}"/>
                 <input type="hidden" id="pcolor" value="${product.color_code}"/>
                <span class="number-code" style="font-size: 12px">
                  상품품번 : <span>${product.pid}_${product.color_code}</span>
                </span>
                <p class="stext-102 cl3 p-t-23">
                  ${product.pdetail}
                </p>
              </div>

              <!--  -->
              <div class="p-t-33">
                <div class="flex-w flex-r-m p-b-10">
                  <div class="size-203 flex-c-m respon6">사이즈</div>

                  <div class="size-204 respon6-next">
                    <div class="rs1-select2 bor8 bg0">
						<select class="js-select2" name="size" id="size">
							<option>옵션을 선택해주세요.</option>
							<c:forEach var="size" items="${sizelist}">
								<option value="${size.remaining_stock}|${size.size_code}">${size.size_code}</option>
								<script>
									var p_stock = "<c:out value='${size.remaining_stock}'/>";
								</script>
							</c:forEach>
						</select>
                      <div class="dropDownSelect2"></div>
                    </div>
                  </div>
                </div>

                <div class="flex-w flex-r-m p-b-10">
                  <div class="size-203 flex-c-m respon6">색상</div>

                  <div class="size-204">
                    <ul class="color_chip d-flex" style="padding-left:0px;">
                    <c:forEach var="color" items="${colorlist}">
                       <li id="${color.pid}_${color.color_code}" style="margin-right:8px;">
                          <a href="${pageContext.request.contextPath}/product/detail?pid=${product.pid}&co=${color.color_code}">
                          	<div style="<c:if test="${product.color_code eq color.color_code}"> border: 2px solid black;</c:if>">
                             <img src="${color.color_chip_url}" style="width: 20px; height: 20px; margin:2px;"/>
                            </div>
                          </a>
                       </li>
                    </c:forEach>
                    </ul>
                  </div>
                  <span class="cl_name" id="colorNameContent"></span>
                </div>

                <div class="flex-w flex-r-m p-b-10">
                  <div class="size-203 flex-c-m respon6">수량</div>

                  <div class="size-204 respon6-next">
                    <div class="wrap-num-product flex-w m-r-20 m-tb-10">
                      <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
                        <i class="fs-16 zmdi zmdi-minus"></i>
                      </div>
                      <input class="mtext-104 cl3 txt-center num-product"
                        type="number"
                        name="num-product"
                        id = "productnum"
                        value="1"
                      />
                      <div
                        class="
                          btn-num-product-up
                          cl8
                          hov-btn3
                          trans-04
                          flex-c-m
                        "
                      >
                        <i class="fs-16 zmdi zmdi-plus"></i>
                      </div>
                    </div>
                  </div>
                </div>
                <script>
               $('.btn-num-product-down').on('click', function(){
                  var numProduct = Number($(this).next().val());
                   if(numProduct > 1) $(this).next().val(numProduct - 1);
                   
                   var productprice = document.querySelector('#productprice').textContent;
                    document.querySelector('#totalprice').textContent = productprice * productnum.value;
               });
               
               $('.btn-num-product-up').on('click', function(){
					var numProduct = Number($(this).prev().val());
					var stock = $("#size option:selected").val().substring(0, $('#size').val().indexOf('|')); //member가 선택한 사이즈의 재고
                   
					if(numProduct < stock){
						$(this).prev().val(numProduct + 1);
                   
						var productprice = document.querySelector('#productprice').textContent;
						document.querySelector('#totalprice').textContent = productprice * productnum.value;
					}else{
						swal("재고 부족", "선택하신 수량이 구매하실 수 있는 최대 수량입니다.", "warning");
					}
               });
            </script>

                <hr />
                <div class="total_price d-flex justify-content-between m-4">
                  <div class="title mtext-101" style="width: auto">총 합계</div>
                  <div class="price">
                    <span id="sumPrice" class="mtext-101">₩&nbsp;<span id="totalprice" class="mtext-101">${product.pprice}</span></span>
                  </div>
                </div>

              	<p class="stock-error text-danger text-center" style="font-weight:bold;"></p>
                <div class="flex-w flex-r-m p-b-10">
                  <div class="size-204 flex-w flex-m respon6-next">

                  	<sec:authorize access="isAnonymous()">
					   <a class="flex-c-m stext-101 cl0 size-101 bg3 bor14 hov-btn3 p-lr-15 trans-04 text-center" href="/loginform" style="text-decoration:none;">
 	                      Add to cart
	                    </a>
					</sec:authorize>
                    <sec:authorize access="hasRole('ROLE_USER')">
	                    <button
	                      class="flex-c-m stext-101 cl0 size-101 bg3 bor14 hov-btn3 p-lr-15 trans-04 text-center js-addcart-detail" id="addcart">
	                      Add to cart
	                    </button>
                    </sec:authorize>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="bor10 m-t-50 p-t-43 p-b-40">
          <!-- Tab01 -->
          <div class="tab01">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
              <li class="nav-product p-b-10">
                <a
                  class="nav-link active"
                  data-toggle="tab"
                  href="#description"
                  role="tab"
                  >Description</a
                >
              </li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content p-t-43">
              <div
                class="tab-pane fade show active"
                id="description"
                role="tabpanel"
              >
                <div class="how-pos2 p-lr-15-md">
                  <p class="stext-102 cl6">
                    <dd style="display: block">
                      <strong>세탁방법 및 취급 시 주의사항</strong>
                      <div class="howToWash renew1907" id="newHowToWash">
                        <ul class="d-flex">
                          <li>
                            <img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/003.png"
                              onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/003_.png'"
                              onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/003.png'"
                              onerror="javascript:onErrorImg(this);"
                              alt="003"/>
                          </li>
                          <li>
                            <img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/016.png"
                              onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/016_.png'"
                              onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/016.png'"
                              onerror="javascript:onErrorImg(this);"
                              alt="019"/>
                          </li>
                          <li>
                            <img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/049.png"
                              onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/049_.png'"
                              onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/049.png'"
                              onerror="javascript:onErrorImg(this);"
                              alt="049"/>
                          </li>
                          <li>
                            <img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/008.png"
                              onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/008_.png'"
                              onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/008.png'"
                              onerror="javascript:onErrorImg(this);"
                              alt="008"/>
                          </li>
                          <li>
                            <img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/029.png"
                              onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/029_.png'"
                              onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/029.png'"
                              onerror="javascript:onErrorImg(this);"
                              alt="029"/>
                          </li>
                        </ul>
                      </div>
                      <br />
                      <strong>품질보증기준</strong><br />
                      1. 본 제품은 정부 고시 소비자 분쟁해결 기준에 의거 고객의
                      정당한 피해를 보상해드립니다. <br />
                      - 원단 불량, 부자재 불량, 봉제 불량, 사이즈 부정확, 부당
                      표시(미표시 및 부실표시) 및 소재 구성 부적합으로 인한 세탁
                      사고 : 구입일로부터 1년 이내분은 무상수리, 교환, 구입가
                      환불함. (단, 봉제 불량은 1년 경과 후에도 무상 수선 가능)
                      <br />
                      - 사이즈가 맞지 않거나 디자인, 색상 불만 제품 : 구입 후
                      7일 이내로서 제품에 손상이 없는 경우 동일 가격, 동일
                      제품으로 교환 가능. <br />
                      - 상하의 한 벌(세트/일착)인 경우 한 쪽에만 이상이 있어도
                      한 벌(세트/일착)로 처리함. 단, 소재 및 디자인이 다른
                      경우에는 해당 의류만 교환 가능. <br />2. 소비자 부주의에
                      의한 제품 훼손, 세탁 잘못으로 인한 변형 및 품질
                      보증기간(1년)이 경과한 제품에 대해서는 보상의 책임을 지지
                      않으며, 수선 가능시에는 실비로 수선해드립니다. <br />3.
                      제품에 이상이 있는 경우 바로 본사로 연락주시면
                      수선/교환/환불이 가능하나, 타업체(일반 수선실 등)에서
                      수선했을 경우는 불가능합니다.<br /><br />
                      <div style="margin-bottom: 20px">
                        <p style="float: left">
                          <strong>AS 책임자와 연락처</strong><br />
                          ㈜한섬/1800-5700
                        </p>
                        <div class="sft_ksdt"></div>
                      </div>
                      <br /><br />
                      위 내용은 상품정보제공 고시에 따라 작성되었습니다.
                    </dd>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
   
   <!-- 함께 코디된 옷이 있을 경우에만 표시 -->
   <c:if test="${not empty matching_cloth}">
   <!-- Related Products -->
   <section class="sec-relate-product bg0 p-t-45 p-b-105">
      <div class="container">
         <div class="p-b-45">
            <h3 class="ltext-106 cl5 txt-center">
               Related Products
            </h3>
         </div>

         <!-- Slide2 -->
         <div class="wrap-slick2">
            <div class="slick2">
               <div class="product-slick2 p-l-15 p-r-15 p-t-15 p-b-15">
                  <!-- Block2 -->
                  <div class="block2">
                     <div class="block2-pic hov-img0 text-center">
						<a href="${pageContext.request.contextPath}/product/detail?pid=${matching_cloth.pid}&co=${matching_cloth.color_code}">
                       		<img src="${matching_cloth.product_detail_url3}" alt="IMG-PRODUCT" style="width:200px;">
						</a>
                     </div>

                     <div class="block2-txt flex-w flex-t p-t-14 text-center">
                        <div class="block2-txt-child1 flex-col-l align-items-center">
                           <span class="stext-104">${matching_cloth.pbrand}</span>
                           <a href="${pageContext.request.contextPath}/product/detail?pid=${matching_cloth.pid}&co=${matching_cloth.color_code}"
                           class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                              ${matching_cloth.pname}
                           </a>

                           <span class="stext-105 cl3">
                               ₩&nbsp;${matching_cloth.pprice}</span>
                           </span>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   </c:if>
   
    <!-- Back to top -->
    <div class="btn-back-to-top" id="myBtn">
      <span class="symbol-btn-back-to-top">
        <i class="zmdi zmdi-chevron-up"></i>
      </span>
    </div>
    <script>
    $(".js-select2").each(function () {
        $(this).select2({
          minimumResultsForSearch: 20,
          dropdownParent: $(this).next(".dropDownSelect2"),
        });
      });
 	</script>
  
 	<script>
//   $(".gallery-lb").each(function () {
//     // the containers for all your galleries
//     $(this).magnificPopup({
//       delegate: "a", // the selector for gallery product
//       type: "image",
//       gallery: {
//         enabled: true,
//       },
//       mainClass: "mfp-fade",
//     });
//   });
	    $(document).ready(function(){
	      $('#size').change(function(){
	        var stock = $("#size option:selected").val().substring(0, $('#size').val().indexOf('|')); //member가 선택한 사이즈의 재고
	        var p_size_code = $("#size option:selected").val().substring($('#size').val().indexOf('|')+1); // member가 선택한 사이즈
	
	        console.log(p_size_code, stock);
	        
	        if(stock<=0){
	          $('#addcart').prop("disabled", true);
	          $('#addcart').attr("disabled", "disabled");
	          $('.stock-error').html("재고가 없습니다.");
	        }
	      });
	    })
	</script>
  <script>
    $(".js-addcart-detail").each(function () {
        var nameProduct = $(this)
          .parent()
          .parent()
          .parent()
          .parent()
          .find(".js-name-detail")
          .html();
        $(this).on("click", function () {
          const p_pid = productid.value; //상품 id
          const p_color_code = pcolor.value; // member가 선택한 색상 = 현재product의 color 
          const p_size_code = $("#size option:selected").val().substring($('#size').val().indexOf('|')+1); // member가 선택한 사이즈
          const p_camount = productnum.value; //수량
	      const p_stock = $("#size option:selected").val().substring(0, $('#size').val().indexOf('|')); //member가 선택한 사이즈의 재고
          
          console.log(p_pid, p_color_code, p_size_code, p_camount);
          console.log('####', p_stock);
          
          let checkResult = true;
          
          //사이즈 필수 입력
          if(p_size_code=='옵션을 선택해주세요.'){
            checkResult = false;
            swal("사이즈 선택 안함", "사이즈를 선택해주세요!", "warning");
          }
          
          //선택한 수량이 현재 재고보다 많을 때
          if(p_camount > p_stock){
        	  checkResult = false;
        	  swal("재고 부족","재고보다 선택한 수량이 더 많습니다.", "warning");
          }
          
          //서버로 제출할지 말지 결정
          if(!checkResult) {
              return false;
        }
          
          <!--ajax 시작-->
          $.ajax({
            url : "/cart/insert",
            method:"get",
            data : {
              mid : null,
              pid : p_pid,
              color_code : p_color_code,
              size_code : p_size_code,
              camount : p_camount
            },
                contentType: "application/x-www-form-urlencoded; charset=UTF-8;"
          }).done((data)=>{
            console.log(data);
            if(data.result =="success"){
              <!--swal 시작 -->
          swal({
            title: nameProduct,
            text: "장바구니에 담았습니다.",
            icon: "success",
            buttons: {
              cancle: {
                text: "계속 쇼핑하기",
                value: false,
                className: "swal_confirm",
              },
              confirm: {
                text: "쇼핑백으로 가기",
                value: true,
              },
            },
          }).then((result) => {
            if (result) window.location.href = "/cart/2";
          });
          <!--swal 끝-->
            }
          });
          <!--ajax 끝 -->
        });
      });
  </script>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>