<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-nocategory.jsp"%>

<div class="m-r-200 m-l-200">
   <h4 class="text-center text-black m-b-25">상품 주문 목록</h4>
   <div class="m-r-300 m-l-300" style="width: 100%; margin: auto; display:flex; justify-content: center">
      
      <ul class="p-t-10 p-b-10" style="display: flex; width: 720px; align-items: center;  background-color: #d9ead3">
         <h5 class="col-sm-3" >상품/배송 조회</h5>
         <li 
            style="display: flex; justify-content: space-between; align-items: center;">
            
            <label class="col-sm-3" for="term">조회기간<!-- 조회기간 --></label>

            <div class="calendar_wrap mr5 col-sm-8">
               <input type="text" id="datepicker" 
                  data-range="true" data-multiple-dates-separator=" - "
                  data-language="ko" class="datepicker-here"
                  style="border: 1px solid black" value=" ${startDate} - ${endDate}">
            </div>

            <!-- <div class="tab_c">
               <ul class="clearfix" style="display: flex">
                  <li><a href="javascript:void(0);" id="setDateBtn1" class="on">1주일1주일</a></li>
                  <li><a href="javascript:void(0);" id="setDateBtn2">1개월1개월</a></li>
                  <li><a href="javascript:void(0);" id="setDateBtn3">3개월3개월</a></li>
               </ul>
            </div> -->
            <form class="col-sm-2" action="orderList" onsubmit="return requestPost()" >
               <input type="submit"  type="button" id="searchBtn"
                  class="btn_search p-t-5 p-b-5" value="조회하기"> <input type="hidden"
                  id="startDate" name="startDate"> <input type="hidden"
                  id="endDate" name="endDate">
            </form>
         </li>
      </ul>


   </div>
   <br /> <br /> <br />
   <table class="table-shopping-cart m-b-77 " style="width: 100%">
      <thead class="table_head h-25">
         <tr>
            <th class="col-sm-2 text-center text-black">주문번호</th>
            <th class="col-sm-1 text-center text-black">주문일자</th>
            <th class="col-sm-3 text-center text-black">상품 정보</th>

            <th class="col-sm-1 text-center text-black">결제금액</th>
            <th class="col-sm-1 text-center text-black">주문상품개수</th>
            <th class="col-sm-2 text-center text-black">상태</th>
         </tr>
      </thead>
      <tbody>
         <c:if test="${empty neworderList }">
            <c:forEach var="order" items="${orderList }">
               <tr class="table-secondary" style="height: 60px">
                  <th class="col-sm-2 text-center"
                     style="color: var(- -bs-gray-800)">${order.oid }</th>
                  <th class="col-sm-1 text-center"
                     style="color: var(- -bs-gray-800)">${order.odate.split(" ")[0] }</th>
                  <th class="col-sm-3 text-center"
                     style="color: var(- -bs-gray-800)"><a
                     href="orderDetail?oid=${order.oid}" class="basket_tlt"
                     style="color: black"
                     >
                        <p class="sb_tlt">
                           ${order.mainItem} <span class="text-right">
                              ${(order.productKindNum - 1) != 0 ? "외 " += order.productKindNum - 1 += "건" : ""}</span>
                        </p>
                  </a></th>

                  <th class="col-sm-1 text-center">
                     <div class="" style="color: var(- -bs-gray-800)">${order.ototal_price }</div>
                  </th>
                  <th class="col-sm-1 text-center">
                     <div class="m-t-7" style="color: var(- -bs-gray-800)">${order.productKindNum}</div>
                  </th>
                  <th class="col-sm-2 text-center"
                     style="color: var(- -bs-gray-800)">배송 준비</th>
               </tr>

            </c:forEach>
         </c:if>
         <c:if test="${not empty neworderList }">
            <c:forEach var="order" items="${neworderList }">
               <tr class="table-secondary" style="height: 60px">
                  <th class="col-sm-2 text-center"
                     style="color: var(- -bs-gray-800)">${order.oid }</th>
                  <th class="col-sm-1 text-center"
                     style="color: var(- -bs-gray-800)">${order.odate.split(" ")[0] }</th>
                  <th class="col-sm-3 text-center"
                     style="color: var(- -bs-gray-800)"><a
                     href="orderDetail?oid=${order.oid}" class="basket_tlt"
                     style="color: black"
                     >
                        <p class="sb_tlt">
                           ${order.mainItem} <span class="text-right">
                              ${(order.productKindNum - 1) != 0 ? "외 " += order.productKindNum - 1 += "건" : ""}</span>
                        </p>
                  </a></th>

                  <th class="col-sm-1 text-center">
                     <div class="" style="color: var(- -bs-gray-800)">${order.ototal_price }</div>
                  </th>
                  <th class="col-sm-1 text-center">
                     <div class="m-t-7" style="color: var(- -bs-gray-800)">${order.productKindNum }</div>
                  </th>
                  <th class="col-sm-2 text-center"
                     style="color: var(- -bs-gray-800)">배송 준비</th>
               </tr>

            </c:forEach>
         </c:if>

      </tbody>
   </table>
</div>
<script>
/* $(function () {
     //selecting the button and adding a click event
     $("#searchBtn").click(function () {
       //alerting the value inside the textbox
       var curdate = $("#datepicker")
         .datepicker({
           language: "ko",
         })
         .data("datepicker");

       var start_date = new Date(curdate.minRange);
       var end_date = new Date(curdate.maxRange);
       console.log(start_date, end_date);
       var [s_year, s_mon, s_day] = [start_date[3], start_date[1], start_date[2]];
       var [e_year, e_mon, e_day] = [end_date[3], end_date[1], end_date[2]]
       
       console.log(start_date);
       console.log(end_date);   
       
       $.ajax({
            url:"searchOrder",
            method:"post",
            data: {
               startDate: start_date.getFullYear() + "-" + (start_date.getMonth()+1) + "-" + start_date.getDate(),
               endDate: end_date.getFullYear() + "-" + (end_date.getMonth()+1) + "-" + end_date.getDate()
            },
            contentType: "application/x-www-form-urlencoded; charset=UTF-8;"
         })
         .done((data) => {
            console.log("redirect");
            window.location.href = "/order/orderList";
         })
         
     });
   }); */
   
   function requestPost(){
      //event.preventDefault();
      
      console.log("requestPost");
       var curdate = $("#datepicker")
         .datepicker({
           language: "ko",
         })
         .data("datepicker");
      
      //alerting the value inside the textbox
         
       var start_date = new Date(curdate.minRange);
       var end_date = new Date(curdate.maxRange);
       console.log(start_date, end_date);
       var [s_year, s_mon, s_day] = [start_date[3], start_date[1], start_date[2]];
       var [e_year, e_mon, e_day] = [end_date[3], end_date[1], end_date[2]]
          
       startDate.value =  start_date.getFullYear() + "-" + (start_date.getMonth()+1) + "-" + start_date.getDate();
       endDate.value = end_date.getFullYear() + "-" + (end_date.getMonth()+1) + "-" + end_date.getDate();
       console.log(start_date);
       console.log(end_date);   
      
       return true;
   }   
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>