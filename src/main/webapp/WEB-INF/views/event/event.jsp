<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>
<script
	src="${pageContext.request.contextPath}/resources/sweetalert/sweetalert.min.js"></script>

<div class="event m-5">
	<div class="mt-2">
		<p class="title text-center"
			style="font-weight: bold; font-size: 20px;">${event.ename}</p>
	</div>
	<hr />
	<div class="mt-2 m-lr-20 m-b-30">
		<p class="content text-center" style="font-size: 17px;">${event.econtent}</p>
	</div>
	<!-- 이벤트 -->
	<div style="margin: auto; width: 100%; position: relative"
		class="text-center">
		<a id="scrollspyHeading2" href="#scrollspyHeading2"> <img
			src="${event.eimg_url}" style="width: 60%" /></a>
	</div>

	<div class="d-flex justify-content-around m-t-20">
		<div class="js-clock">
			<h1 class="clock-title" style="font-size: 45px;">00:00</h1>
		</div>
		<button type="button" class="btn btn-outline-primary btn-lg"
			style="background-color: #FFF98C; border-color: #5676CA; font-size: 20px;"
			onclick="javascript:issueCoupon(event)">쿠폰 발급받기</button>
		<button type="button" class="btn btn-outline-primary btn-lg"
			style="background-color: #FFF98C; border-color: #5676CA; font-size: 20px;"
			onclick="javascript:issueCoupon2(event)">쿠폰 발급받기2</button>
	</div>
	<script>
		 function issueCoupon(event){
		         console.log(event);   
		         var mid = "<c:out value='${mid}'/>";
		         
		         $.ajax({
		            url:"issue" + "/" + mid,
		              method:"get"
		         }).done((data) => {
		            console.log("data", data);
		            
		            if(data.result == "success"){
		               swal("쿠폰 이벤트",    "쿠폰이 발급되었습니다.", "success");
		            }else if(data.result == "fail"){
		               swal("쿠폰 이벤트", "쿠폰 발급이 실패하였습니다.", "error");
		            }
		            
		         })
		      }
		</script>

	<script>
			function issueCoupon2(event){
		         var mid = "<c:out value='${mid}'/>";
		         $.ajax({
			            url:"rediscoupon" + "/" + mid,
			              method:"get"
			         }).done((data) => {
			            console.log("data", data);
			            
			            if(data.result == "success"){
				               swal("쿠폰 이벤트",    "쿠폰이 발급되었습니다.", "success");
				            }else if(data.result == "fail"){
				               swal("쿠폰 이벤트", "쿠폰 발급이 실패하였습니다.", "error");
				            }
			            
			         })
			}
		</script>

	<script>
			function getTime(){
			const clockContainer = document.querySelector(".js-clock");
			const clockTitle = clockContainer.querySelector(".clock-title");
			
			const date = new Date();
			const hours = date.getHours();
			const minutes = date.getMinutes();
			const seconds = date.getSeconds();

			const nhours = hours < 10 ? "0" + hours : hours;
			const nminutes = minutes < 10 ? "0" + minutes : minutes;
			const nseconds = seconds < 10 ? "0" + seconds : seconds;

			document.querySelector('.clock-title').textContent = nhours + ":" + nminutes + ":" + nseconds;
			}
			
			function init(){
				getTime();
				setInterval(getTime, 1000);
			}
			
			init();
			
		</script>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp"%>
