<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/animsition/css/animsition.min.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/MagnificPopup/magnific-popup.css"/>
<script src="${pageContext.request.contextPath}/resources/sweetalert/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/select2/select2.min.js"></script>

<link rel="stylesheet"

	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/cart.css" />


<meta charset="utf-8">
<meta name="viewport" content="width=device-width" style="width: 40px;">

<body>

	<div class="row">
		<!-- 왼쪽 -->
		<div class="col-sm-7 m-l-35">
			<form name="orderform" id="orderform" method="post" class="orderform"
				action="/order/order">

				<input type="hidden" name="cmd" value="order">
				<div class="basketdiv" id="basket">
					<div class="row head">
						<div class="subdiv" style="text-align: center;">
							<div class="check" style="text-align: center;">선택</div>
							<div class="img" style="text-align: center;">이미지</div>
							<div class="pname" style="text-align: center;">상품명</div>
						</div>
						<div class="subdiv">
							<div class="basketprice" style="text-align: center;">가격</div>
							<div class="num" style="text-align: center;">수량</div>
							<div class="sum" style="text-align: center;">합계</div>
						</div>
						<div class="subdiv">

							<div class="basketcmd">삭제</div>
						</div>
						<div class="split"></div>
					</div>
					<c:forEach items="${OrderRowList}" var="OrderRow" varStatus="vs">

						<div class="row data" style="height: 111px;">
							<div class="subdiv">
								<div class="check" style="text-align: center;">
									<input type="checkbox" class="orders${vs.count}" name="buy"
										value="${vs.count}" onclick="javascript:basket.checkItem();"
										style="margin-top: 39px; margin-left: 17px;">
								</div>
								<div class="img">
									<input hidden="hidden" value="${OrderRow.product_detail_url1}"
										class="orders${vs.count}"> <img
										src="${OrderRow.product_detail_url1}" width="60">
								</div>
								<div class="pname">
									<div class="col-sm-6 m-l-20 m-t-15">
										<a href="#" class="basket_tlt" style="color: black"> <input
											hidden="hidden" value="${OrderRow.pbrand}"
											class="orders${vs.count}">
											<p class="tlt">${OrderRow.pbrand}</p> <input hidden="hidden"
											value="${OrderRow.pname}" class="orders${vs.count}">
											<p class="sb_tlt">${OrderRow.pname}</p>
										</a>
										<p class="color_op mt-2" style="color: gray">
											<input hidden="hidden" value="${OrderRow.color_code}"
												class="orders${vs.count}"> <input hidden="hidden"
												value="${OrderRow.size_code}" class="orders${vs.count}">
											color : ${OrderRow.color_code}<span class="and_line">/</span>
											size : ${OrderRow.size_code}
										</p>
									</div>
								</div>
							</div>
							<div class="subdiv">
								<div class="basketprice">

									<input type="hidden" name="p_price" id="p_price${vs.count}"
										class="p_price orders${vs.count}" value="${OrderRow.pprice}">${OrderRow.pprice}원
								</div>
								<div class="num">
									<div class="updown m-b-15 b-t-5">

										<span onclick="javascript:basket.changePNum(${vs.count});"><i
											style="color: black;" class="far fa-plus-square up"></i></span> <input
											style="display: inline; text-align: center;" type="text"
											name="p_num${vs.count}" id="p_num${vs.count}" size="2"
											maxlength="4" class="p_num m-l-5 m-r-5 orders${vs.count}"
											value="${OrderRow.oamount}"
											onkeyup="javascript:basket.changePNum(${vs.count});">


										<span onclick="javascript:basket.changePNum(${vs.count});"><i
											style="color: black;" class="far fa-minus-square down"></i></span>
									</div>
								</div>
								<div class="sum">${OrderRow.oamount*OrderRow.pprice}원</div>
							</div>
							<div class="subdiv">
								<div class="basketcmd">
									<a href="javascript:void(0)" class="orders${vs.count} abutton"
										onclick="javascript:basket.delItem();">삭제</a>
								</div>
							</div>
						</div>

					</c:forEach>
				</div>


				<div class="right-align basketrowcmd">
					<!-- 	<a href="javascript:void(0)" class="abutton"
						onclick="javascript:basket.delCheckedItem();">선택상품삭제</a> -->
				</div>




				<div id="goorder" class="">
					<div class="clear"></div>
					<div class="buttongroup center-align cmd">
						<!--  <a href="javascript:void(0)" class="btn btn-dark"
               onclick="javascript:basket.send();">선택한 상품 주문</a> -->
					</div>
				</div>
			</form>

		</div>


		<!-- 왼쪽 끝  -->
		<!-- 오른쪽 시작 -->

		<div class="col-md-4 m-b-50 m-l-10 m-r-35">

			<div class="" style="position: sticky; top: 90px;">
				<div
					class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
					<h4 class="text-center m-b-25">쇼핑백 내용</h4>

					<div class="flex-w flex-t p-b-13 justify-content-between">
						<b style="color: black;"> 선택한 상품 수</b>
						<div>
							<div id="sum_p_num">0 개</div>
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
						<dt class="ee_tit ee_strong">총 합계</dt>
						<dd class="ee_price ee_strong">
							<div id="sum_p_price">0 원</div>
						</dd>
					</div>
					
					<button onclick="javascript:basket.saveItem();"
						class="stext-101 cl0 size-116 bg3 bor14 m-b-15 hov-btn3 p-lr-15 trans-04 pointer">
						쇼핑백 저장</button>
						
						
					<button onclick="javascript:basket.delCheckedItem();"
						class="stext-101 cl0 size-116 bg3 bor14 m-b-15 hov-btn3 p-lr-15 trans-04 pointer">
						선택 물품 삭제</button>

					<button onclick="javascript:basket.send();"
						class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
						주문하기</button>

				


				</div>
			</div>

		</div>
	</div>



	<!-- 확인버튼을 누르면 form 중에 select 된 녀석의 class 와 같은 이름이 있는 녀석을 모조리 얻어오기 얻어온 뒤에 객체로 뿌리기 -->

</body>
</html>



<script>
    let basket = {
    totalCount: 0, 
    totalPrice: 0,
    //체크한 장바구니 상품 비우기
    
    send: function(){
       //json 배열 생성
       //기본 리프래시 비활성화
       if(this.totalPrice===0){
    	   swal("상품을 선택해주세요", "체크박스를 통해 장바구니의 물건을 담으세요!","error");
    	   return false;
       }
        event.preventDefault();
       var jsonArray =[];
       
      document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
      //json 객체
      var jsonObj  = {};
      
        console.log(item);
        var className = item.getAttribute("class");
        console.log(className);
        let elementsall = document.querySelectorAll('.'+className);

        console.log(elementsall);

         //product_detail_url1
        order1 = elementsall[1].value;
        jsonObj.product_detail_url1 = order1;
        //pbrand
        order2 = elementsall[2].value;
      //  console.log(order2);
        jsonObj.pbrand = order2;
        //pname
        order3 = elementsall[3].value;
        jsonObj.pname = order3;
        //color_code
        order4 = elementsall[4].value;
        jsonObj.color_code = order4;
        //size_code
        order5 = elementsall[5].value;
        jsonObj.size_code = order5;
        //pprice
        order6 = elementsall[6].value;
       // console.log(order6);
        jsonObj.pprice = order6;
        //oamount
        order7 = elementsall[7].value;
       // console.log(order7);
        jsonObj.oamount = order7;
        
        jsonObj = JSON.stringify(jsonObj);
       //String 형태로 파싱한 객체를 다시 json으로 변환
       jsonArray.push(JSON.parse(jsonObj));
        
        });
      console.log("확인");
      console.log(jsonArray);
      
      
        $.ajax({
              url:"jsonCartToOrder",
              method:"post", 
              contentType:'application/json; charset=UTF-8',
              dataType:'json',

              async: false,
              data:JSON.stringify(jsonArray)
           }).done((data) => {
              console.log("result")
             // window.location.href="/order/"
              
           })      
           window.location.href="/order/"
    },
    saveItem: function(){
       //json 배열 생성
       //기본 리프래시 비활성화
     
       event.preventDefault();
       var jsonArray =[];
       
      document.querySelectorAll("input[name=buy]").forEach(function (item) {
      //json 객체
      var jsonObj  = {};
      
        console.log(item);
        var className = item.getAttribute("class");
        console.log(className);
        let elementsall = document.querySelectorAll('.'+className);

        console.log(elementsall);


         //product_detail_url1
        order1 = elementsall[1].value;
        jsonObj.product_detail_url1 = order1;
        //pbrand
        order2 = elementsall[2].value;
      //  console.log(order2);
        jsonObj.pbrand = order2;
        //pname
        order3 = elementsall[3].value;
        jsonObj.pname = order3;
        //color_code
        order4 = elementsall[4].value;
        jsonObj.color_code = order4;
        //size_code
        order5 = elementsall[5].value;
        jsonObj.size_code = order5;
        //pprice
        order6 = elementsall[6].value;
       // console.log(order6);
        jsonObj.pprice = order6;
        //oamount
        order7 = elementsall[7].value;
       // console.log(order7);
        jsonObj.oamount = order7;
        
        jsonObj = JSON.stringify(jsonObj);
       //String 형태로 파싱한 객체를 다시 json으로 변환
       jsonArray.push(JSON.parse(jsonObj));
        
        });
      console.log("확인");
      console.log(jsonArray);
      
      
        $.ajax({
              url:"jsonSave",
              method:"post", 
              contentType:'application/json; charset=UTF-8',
              dataType:'json',
              async: false,
              data:JSON.stringify(jsonArray)
           }).done((data) => {
              console.log("result")
             // window.location.href="/order/"
              
           })      
           
    },
        
    delCheckedItem: function(){
      
        
        event.preventDefault();
        var jsonArray =[];
        
       document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
       //json 객체
       
       var jsonObj  = {};
       
         console.log(item);
         var className = item.getAttribute("class");
         console.log(className);
         let elementsall = document.querySelectorAll('.'+className);

         console.log(elementsall);

          //product_detail_url1
         order1 = elementsall[1].value;
         jsonObj.product_detail_url1 = order1;
         //pbrand
         order2 = elementsall[2].value;
       //  console.log(order2);
         jsonObj.pbrand = order2;
         //pname
         order3 = elementsall[3].value;
         jsonObj.pname = order3;
         //color_code
         order4 = elementsall[4].value;
         jsonObj.color_code = order4;
         //size_code
         order5 = elementsall[5].value;
         jsonObj.size_code = order5;
         //pprice
         order6 = elementsall[6].value;
        // console.log(order6);
         jsonObj.pprice = order6;
         //oamount
         order7 = elementsall[7].value;
        // console.log(order7);
         jsonObj.oamount = order7;
         
         jsonObj = JSON.stringify(jsonObj);
        //String 형태로 파싱한 객체를 다시 json으로 변환
        jsonArray.push(JSON.parse(jsonObj));
         
        item.parentElement.parentElement.parentElement.remove();
        
         });
       console.log("확인");
       console.log(jsonArray);
       
       
         $.ajax({
               url:"jsonArrToDel",
               method:"post", 
               contentType:'application/json; charset=UTF-8',
               dataType:'json',
               
               data:JSON.stringify(jsonArray)
            }).done((data) => {
               console.log("result")
               window.location.href="/order/";
            })      
 
       
       
        this.reCalc();
        this.updateUI();
    },
   
    //전체 다시 계산
    reCalc: function(){
        this.totalCount = 0;
        this.totalPrice = 0;
        
        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
          
              //buy 중에서 check 된 input 태그를 가져옴
              console.log(item);
              //class 이름 가져옴
              var className = item.getAttribute("class");
              console.log(className);
              let elementsall = document.querySelectorAll('.'+className);

              console.log(elementsall);

              
              //pprice
              order6 = elementsall[6].value*1;
              console.log(order6);
              
              //oamount
              order7 = elementsall[7].value*1;
              //console.log(typeof(order7))
              console.log(order7*order6);
              this.totalCount += order7*1;
              this.totalPrice += order7*order6*1;
             
              console.log(this.totalCount);
              console.log(this.totalPrice);
             
        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg

        
       
    },
    
   
    //화면 업데이트
    updateUI: function () {
        document.querySelector('#sum_p_num').textContent = '상품갯수: ' + this.totalCount+ '개';
        document.querySelector('#sum_p_price').textContent = '합계금액: ' + this.totalPrice + '원';
    },
    //개별 수량 변경
    changePNum: function (vs) {
        var item = document.querySelector('input[name=p_num'+vs+']');
        var p_num = (item.getAttribute('value')*1);
        if (event.target.classList.contains('up')){
        	var newval = p_num+1;
        }else if(event.target.classList.contains('down')){
        	var newval = p_num-1
        }
        
        
        if ((newval*1) < 1 || (newval*1) > 99) { 
        	return false; 
        }else{
        	  item.setAttribute('value', newval);
        }

        //계산 갱신
        this.reCalc();
        this.updateUI();
    },
    checkItem: function () {
        this.reCalc();
        this.updateUI();
    },
    delItem: function () {
    	
        event.target.parentElement.parentElement.parentElement.remove();
        
        event.preventDefault();
 
      	 var jsonObj  = {};

         var className = event.target.getAttribute("class");
         console.log(className);
         let strArray=className.split(' ');
         console.log(strArray[0]);
         let elementsall = event.target.parentElement.parentElement.parentElement.querySelectorAll('.' +strArray[0]);
         console.log("전체order123");
         console.log(elementsall);

          //product_detail_url1
         order1 = elementsall[1].value;
         jsonObj.product_detail_url1 = order1;
         //pbrand
         order2 = elementsall[2].value;
       //  console.log(order2);
         jsonObj.pbrand = order2;
         //pname
         order3 = elementsall[3].value;
         jsonObj.pname = order3;
         //color_code
         order4 = elementsall[4].value;
         jsonObj.color_code = order4;
         //size_code
         order5 = elementsall[5].value;
         jsonObj.size_code = order5;
         //pprice
         order6 = elementsall[6].value;
       	 console.log(order6);
         jsonObj.pprice = order6;
         //oamount
         order7 = elementsall[7].value;
        // console.log(order7);
         jsonObj.oamount = order7;
         console.log(order7);
         
         jsonObj = JSON.stringify(jsonObj);
        //String 형태로 파싱한 객체를 다시 json으로 변환
    	
         
       
         $.ajax({
               url:"jsondelone",
               method:"post", 
               data:jsonObj,
               contentType:'application/json; charset=UTF-8',
               dataType:'json',
            }).done((data) => {
               console.log("result")
               //window.location.href="/order/";
            })
         
        
        this.reCalc();
        this.updateUI();
    }
}


/* // 숫자 3자리 콤마찍기
Number.prototype.formatNumber = function(){
    if(this==0) return 0;
    let regex = /(^[+-]?\d+)(\d{3})/;
    let nstr = (this + '');
    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
    return nstr;
};

 */
    </script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
