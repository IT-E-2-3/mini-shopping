<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>
	<div class="page-title">
		<div>
			<a href="#">${parent.category_name}</a>
		</div>
		<div>&nbsp;>&nbsp;</div>
		<div>
			<a href="#">${current.category_name}</a>
		</div>
	</div>
	
	<div
		style="display: grid; grid-template-columns: 10% 90%; margin: 0 200px">
		<div id="sidebar">
			<div>
				<h6 class="p-1 border-bottom"
					style="text-align: center; font-size: 20px">${current.category_name}</h6>
				<ul class="list-group list-group-flush ml-4">
					<!-- <li class="list-group-item border-0 subcategory"><a href="#">티셔츠</a>
					</li>
					<li class="list-group-item border-0 subcategory"><a href="#">블라우스</a>
					</li>
					<li class="list-group-item border-0 subcategory"><a href="#">셔츠</a>
					</li>
					<li class="list-group-item border-0 subcategory"><a href="#">니트</a>
					</li> -->
					<c:forEach var="sub" items="${subcategory}">
						<li class="list-group-item border-0 subcategory"><a href="#">${sub.category_name}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div id="products" class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="product-grid2">
						<div class="product-image2">
							<a href="product-detail.html">
								<img class="pic-1"src="${pageContext.request.contextPath}/resources/img/product1/instagram_video_thumb_283.jpg" />
								<img class="pic-2" src="${pageContext.request.contextPath}/resources/img/product1/MN2BAKTO664W_LB_T02.jpg" />
							</a>
						</div>
						<div class="product-content">
							<div class="size">
								<a href="product-detail.html">S M</a>
							</div>
							<div class="size">FORUM THE STORE</div>
							<div class="title">벌룬 슬리브 티셔츠</div>
							<div class="tag">NEW</div>
							<div class="price">195,000</div>
							<div>
								<div class="color"
									style="background-color: brown; width: 15px; height: 15px; margin: auto;"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="product-grid2">
						<div class="product-image2">
							<a href="product-detail.html"> <img class="pic-1"
								src="${pageContext.request.contextPath}/resources/img/product2/MN2B9WTO542W_BG_T01.jpg" />
								<img class="pic-2" src="${pageContext.request.contextPath}/resources/img/product2/MN2B9WTO542W_BG_T02.jpg" />
							</a>
						</div>
						<div class="product-content">
							<div class="size">
								<a href="product-detail.html">S M</a>
							</div>
							<div class="size">FORUM THE STORE</div>
							<div class="title">벌룬 슬리브 티셔츠</div>
							<div class="tag">NEW</div>
							<div class="price">195,000</div>
							<div>
								<div class="color"
									style="background-color: brown; width: 15px; height: 15px; margin: auto;"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="product-grid2">
						<div class="product-image2">
							<a href="product-detail.html"> <img class="pic-1"
								src="${pageContext.request.contextPath}/resources/img/product3/O22B9TTO575W_LG_T01.jpg" />
								<img class="pic-2" src="${pageContext.request.contextPath}/resources/img/product3/O22B9TTO575W_LG_T02.jpg" />
							</a>
						</div>
						<div class="product-content">
							<div class="size">
								<a href="product-detail.html">S M</a>
							</div>
							<div class="size">FORUM THE STORE</div>
							<div class="title">
								<a href="product-detail.html">벌룬 슬리브 티셔츠</a>
							</div>
							<div class="tag">NEW</div>
							<div class="price">195,000</div>
							<div>
								<div class="color"
									style="background-color: brown; width: 15px; height: 15px; margin: auto;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="product-grid2">
						<div class="product-image2">
							<a href="#"> <img class="pic-1"
								src="${pageContext.request.contextPath}/resources/img/product1/instagram_video_thumb_283.jpg" />
								<img class="pic-2" src="${pageContext.request.contextPath}/resources/img/product1/MN2BAKTO664W_LB_T02.jpg" />
							</a>
						</div>
						<div class="product-content">
							<div class="size">
								<a href="#">S M</a>
							</div>
							<div class="size">FORUM THE STORE</div>
							<div class="title">벌룬 슬리브 티셔츠</div>
							<div class="tag">NEW</div>
							<div class="price">195,000</div>
							<div>
								<div class="color"
									style="background-color: brown; width: 15px; height: 15px; margin: auto;"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="product-grid2">
						<div class="product-image2">
							<a href="product-detail.html"> <img class="pic-1"
								src="${pageContext.request.contextPath}/resources/img/product2/MN2B9WTO542W_BG_T01.jpg" />
								<img class="pic-2" src="${pageContext.request.contextPath}/resources/img/product2/MN2B9WTO542W_BG_T02.jpg" />
							</a>
						</div>
						<div class="product-content">
							<div class="size">
								<a href="#">S M</a>
							</div>
							<div class="size">FORUM THE STORE</div>
							<div class="title">벌룬 슬리브 티셔츠</div>
							<div class="tag">NEW</div>
							<div class="price">195,000</div>
							<div>
								<div class="color"
									style="background-color: brown; width: 15px; height: 15px; margin: auto;"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="product-grid2">
						<div class="product-image2">
							<a href="product-detail.html"> <img class="pic-1"
								src="${pageContext.request.contextPath}/resources/img/product3/O22B9TTO575W_LG_T01.jpg" />
								<img class="pic-2" src="${pageContext.request.contextPath}/resources/img/product3/O22B9TTO575W_LG_T02.jpg" />
							</a>
						</div>
						<div class="product-content">
							<div class="size">
								<a href="#">S M</a>
							</div>
							<div class="size">FORUM THE STORE</div>
							<div class="title">
								<a href="product-detail.html">벌룬 슬리브 티셔츠</a>
							</div>
							<div class="tag">NEW</div>
							<div class="price">195,000</div>
							<div>
								<div class="color"
									style="background-color: brown; width: 15px; height: 15px; margin: auto;"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="m-r-200 m-l-200">
		<div class="m-r-300 m-l-300">
			<div class="m-r-200 m-l-200">
				<div class="btn-toolbar" role="toolbar"
					aria-label="Toolbar with button groups"
					style="justify-content: center">
					<div class="btn-group me-2" role="group" aria-label="First group">
						<button type="button" class="btn btn-secondary"><<</button>
						<button type="button" class="btn btn-secondary">1</button>
						<button type="button" class="btn btn-secondary">2</button>
						<button type="button" class="btn btn-secondary">3</button>
						<button type="button" class="btn btn-secondary">4</button>
					</div>
					<div class="btn-group me-2" role="group" aria-label="Second group">
						<button type="button" class="btn btn-secondary">5</button>
						<button type="button" class="btn btn-secondary">6</button>
						<button type="button" class="btn btn-secondary">7</button>
					</div>
					<div class="btn-group" role="group" aria-label="Third group">
						<button type="button" class="btn btn-secondary">8</button>
						<button type="button" class="btn btn-secondary">>></button>
					</div>
				</div>
			</div>
		</div>
	</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>