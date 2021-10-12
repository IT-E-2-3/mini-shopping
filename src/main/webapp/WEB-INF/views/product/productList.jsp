<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/common/header-category.jsp"%>
	<div class="page-title">
		<c:forEach var="parents" items="${parent}" varStatus="status">
			<div>
				<a href="${pageContext.request.contextPath}/product/list?c=${parents.category_code}">${parents.category_name}</a>
			</div>
			<c:if test="${status.last eq false}">
				<div>&nbsp;>&nbsp;</div>
			</c:if>
		</c:forEach>
	</div>
	
	<div style="display: grid; grid-template-columns: 15% 85%; margin: 0 150px">
		<div id="sidebar">
			<div>
				<c:forEach var="sub" items="${subcategory}" varStatus="status2">
					<c:if test="${status2.first eq true}">
						<h6 class="p-1 border-bottom"
							style="text-align: center; font-size: 20px">${sub.category_name}</h6>
					</c:if>
					<c:if test="${status2.first eq false}">
						<ul class="list-group list-group-flush ml-4">
							<li class="list-group-item border-0 subcategory"><a href="${pageContext.request.contextPath}/product/list?c=${sub.category_code}">${sub.category_name}</a>
							</li>
						</ul>
					</c:if>
				</c:forEach>
			</div>
		</div>
		<div id="products" class="container">
			<div class="row">
			<c:forEach var="product" items="${plist}" varStatus="s">
				<div class="col-md-4 col-sm-6">
					<div class="product-grid2">
						<div class="product-image2">
							<a class="detail${s.count}">
								<img class="pic-1" id="apic${s.count}" src="" />
								<img class="pic-2" id="bpic${s.count}" src="" />
							</a>
						</div>
						<div class="product-content">
							<div class="size">${product.pbrand}</div>
							<div class="title"><a class="detail${s.count}">${product.pname}</a></div>
							<div class="tag text-danger" id="tag${s.count}"></div>
							<c:forEach var="stock" items="${stocklist}">
								<c:if test="${product.pid eq stock.pid}">
									<script>
										var no = "<c:out value='${s.count}'/>";
										var p_stock ="<c:out value='${stock.remaining_stock}'/>";
										
										var tag = "#tag" + no;
										console.log('######', p_stock);
										if(p_stock < 1){
											document.querySelector(tag).textContent = "Sold out";
										}
									</script>
								</c:if>
							</c:forEach>
							<div class="price">₩&nbsp;<fmt:formatNumber type="number" maxFractionDigits="3" value="${product.pprice}"></fmt:formatNumber></div>
							<div>
								<div class="color_chip" style="display: inline;">
								<c:forEach var="color" items="${colorlist}">
									<c:forEach var="color2" items="${color}" varStatus="status">
										<%-- 상품의 id와 컬러칩의 id가 같을 때 그 상품의 컬러칩 이미지를 불러온다. --%>
										<c:if test="${product.pid eq color2.pid}">
											<%-- default로 보이는 이미지는 첫 번째 색상의 이미지 --%>
											<c:if test="${status.first}">
												<script>
													//el의 값을 자바스크립트에서 받아오기 
													var url1 = "<c:out value='${color2.product_detail_url1}'/>";
													var url2 = "<c:out value='${color2.product_detail_url2}'/>";
													var no = "<c:out value='${s.count}'/>";
													var pid = "<c:out value='${color2.pid}'/>";
													var colorcode = "<c:out value='${color2.color_code}'/>";
														
													var pic1id = "#apic"+no;
													var pic2id = "#bpic"+no;
													
													var detailhref = "detail?pid="+pid+"&co="+colorcode;
													var detailclass = ".detail"+no;
													
													/* console.log(url1);
													console.log(url2);
													console.log("pic1id", pic1id);*/
													
													$(pic1id).attr("src", url1); 
													$(pic2id).attr("src", url2);
													$(detailclass).attr("href", detailhref);
												</script>
											</c:if>
											<a href="javascript:chgColorChip(${color2.pid}, ${color2.color_code})" style="text-decoration:none;">
												<img src="${color2.color_chip_url}" style="width: 15px; height: 15px; margin: auto;"/>
											</a>
										</c:if>
									</c:forEach>
								</c:forEach>
								</div>
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
	         			<a class="page-link" href="list?c=${current.category_code}&pageNo=1">처음</a>
	         			<!-- 현재 그룹번호가 1이상일 경우에만 나타나게 함 -->
	         			<c:if test="${pager.groupNo>1}">
	         				<a class="page-link" href="list?c=${current.category_code}&pageNo=${pager.startPageNo-1}">이전</a>
	         			</c:if>
	         			
	         			<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
	         				<c:if test="${pager.pageNo!= i}">
	         					<a class="page-link" href="list?c=${current.category_code}&pageNo=${i}">${i}</a>
	         				</c:if>
	         				<c:if test="${pager.pageNo== i}">
	         					<a class="btn btn-outline-primary" href="list?c=${current.category_code}&pageNo=${i}">${i}</a>
	         				</c:if>
	         			</c:forEach>
	         			
	         			<!-- 현재 그룹번호가 전체 그룹 수보다 작을 경우에만 나타나게 함 -->
	         			<c:if test="${pager.groupNo<pager.totalGroupNo}">
	         				<a class="page-link" href="list?c=${current.category_code}&pageNo=${pager.endPageNo+1}">이후</a>
	         			</c:if>
	         			
	         			<a class="page-link" href="list?c=${current.category_code}&pageNo=${pager.totalPageNo}">맨끝</a>
	         		</div>
				</div>
			</div>
		</div>
	</div>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>