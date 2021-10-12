<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/animsition/css/animsition.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/MagnificPopup/magnific-popup.css" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css?version=51" />

    <div
      id="carouselExampleControls"
      class="carousel slide"
      data-ride="carousel"
    >
      <div class="carousel-inner" style="height: 350px">
        <div class="carousel-item active">
          <a href="event/">
          <img
            class="d-block w-100"
            src="${pageContext.request.contextPath}/resources/images/eventbanner.png"
            alt="First slide"
          />
          </a>
        </div>
      </div>
      
    </div>
    
	<!-- 슬라이더 -->
    <%-- <div
      id="carouselExampleControls"
      class="carousel slide"
      data-ride="carousel"
    >
      <div class="carousel-inner" style="height: 480px">
        <div class="carousel-item">
          <img
            class="d-block w-100"
            src="${pageContext.request.contextPath}/resources/images/210924-A-clubmonaco-03.jpg"
            alt="Second slide"
          />
        </div>
        <div class="carousel-item active">
          <img
            class="d-block w-100"
            src="${pageContext.request.contextPath}/resources/images/A-styleguide-01.jpg"
            alt="Third slide"
          />
        </div>
      </div>
      <a
        class="carousel-control-prev"
        href="#carouselExampleControls"
        role="button"
        data-slide="prev"
      >
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a
        class="carousel-control-center"
        role="button"
        data-slide="prev"
      >
        <span class="sr-only">Previous</span>
      </a>
      <a
        class="carousel-control-next"
        href="#carouselExampleControls"
        role="button"
        data-slide="next"
      >
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div> --%>
	<div>
	<a href="/product/list?c=0404">
		<img src="/resources/images/home_image.jpg"/>
		</a>
		<a href="/product/list?c=0404">
		<img src="/resources/images/home_image2.jpg"/>
		</a>
	</div>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
