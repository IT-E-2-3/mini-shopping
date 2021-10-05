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
			<c:forEach var="product" items="${plist}" varStatus="s">
				<div class="col-md-4 col-sm-6">
					<div class="product-grid2">
						<div class="product-image2">
							<a href="detail">
								<img class="pic-1" src="${product.product_detail_url1}" />
								<img class="pic-2" src="${product.product_detail_url2}" />
							</a>
						</div>
						<div class="product-content">
							<div class="size">${product.size_code}</div>
							<div class="size">${product.pbrand}</div>
							<div class="title"><a href="detail?pid=${product.pid}&co=${product.color_code}">${product.pname}</a></div>
							<div class="tag">NEW</div>
							<div class="price">₩&nbsp;${product.pprice}</div>
							<div>
								<div class="color"
									style="width: 15px; height: 15px; margin: auto;"><img src="${product.color_chip_url}" style="width: 15px; height: 15px; margin: auto;"/></div>
							</div>
						</div>
					</div>
				</div>
				<c:if test="${s.count%3==0}">
					</div>
					<div class="row">
				</c:if>
				<!--<c:if test="${s.end}"></div></div></c:if>-->
			</c:forEach>
				</div>
			</div>
		</div>
	<div class="m-r-200 m-l-200">
		<div class="m-r-300 m-l-300">
			<div class="m-r-200 m-l-200">
				<div class="btn-toolbar" role="toolbar"
					aria-label="Toolbar with button groups"
					style="justify-content: center">
					<div class="btn-group me-2" role="group" aria-label="group">
	         			<a class="btn btn-outline-primary btn-sm" href="list?c=${current.category_code}&pageNo=1">처음</a>
	         			<!-- 현재 그룹번호가 1이상일 경우에만 나타나게 함 -->
	         			<c:if test="${pager.groupNo>1}">
	         				<a class="btn btn-outline-info btn-sm" href="list?c=${current.category_code}&pageNo=${pager.startPageNo-1}">이전</a>
	         			</c:if>
	         			
	         			<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
	         				<c:if test="${pager.pageNo!= i}">
	         					<a class="btn btn-link" href="list?c=${current.category_code}&pageNo=${i}">${i}</a>
	         				</c:if>
	         				<c:if test="${pager.pageNo== i}">
	         					<a class="btn btn-outline-danger" href="list?c=${current.category_code}&pageNo=${i}">${i}</a>
	         				</c:if>
	         			</c:forEach>
	         			
	         			<!-- 현재 그룹번호가 전체 그룹 수보다 작을 경우에만 나타나게 함 -->
	         			<c:if test="${pager.groupNo<pager.totalGroupNo}">
	         				<a class="btn btn-outline-info btn-sm" href="list?c=${current.category_code}&pageNo=${pager.endPageNo+1}">이후</a>
	         			</c:if>
	         			
	         			<a class="btn btn-outline-primary btn-sm" href="list?c=${current.category_code}&pageNo=${pager.totalPageNo}">맨끝</a>
	         		</div>
				</div>
			</div>
		</div>
	</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>