<%@ page contentType="text/html; charset=UTF-8"%>
	
<%@ include file="/WEB-INF/views/common/header-nocategory.jsp"%>
<script
	src="${pageContext.request.contextPath}/resources/sweetalert/sweetalert.min.js"></script>
<body>

	<!-- 이벤트 -->
	<div style="margin: auto;  width: 80%; position: relative">
		<a id="scrollspyHeading2" href="#scrollspyHeading2"><img
			src="${pageContext.request.contextPath}/resources/images/eventbanner.jpg"
			style="width: 100%" /></a>
	</div>
	<div
		style="position: relative; margin: auto; width: 80%; height: 125px; background-color: #6f8fc7;">
		<button type="button" class="btn btn-outline-primary btn-lg"
			onclick="javascript:issueCoupon(event)"
			style="position: absolute; top: 50%; left: 50%; transform: translateY(-50%); background-color: yellow;">
			쿠폰 발급받기</button>
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
					swal("쿠폰 이벤트", 	"쿠폰이 발급되었습니다.", "success");
				}else if(data.result == "fail"){
					swal("쿠폰 이벤트", "쿠폰 발급이 실패하였습니다.", "fail");
				}
				
			})
		}
	
	</script>

</body>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>
