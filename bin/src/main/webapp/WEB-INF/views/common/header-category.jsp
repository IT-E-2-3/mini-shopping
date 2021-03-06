<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Shopping Mall</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--===============================================================================================-->
<link rel="icon" type="image/jpg"
   href="${pageContext.request.contextPath}/resources/images/icons/hansome.jpg" />
<!--===============================================================================================-->
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" />
<script
   src="${pageContext.request.contextPath}/resources/jquery/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/popper.min.js"></script>
<script
   src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/fonts/iconic/css/material-design-iconic-font.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/fonts/linearicons-v1.0.0/icon-font.min.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/css-hamburgers/hamburgers.min.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/select2/select2.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/css/app.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/css/util.css" />
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/css/main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css?version=52" />
</head>
<body>

   <span style="position: fixed; left: 88%; top: 88%"> <a
      href="javascript:void(0)" onclick="javascript:totop()"><img
         src="${pageContext.request.contextPath}/resources/images/pageup.png"
         style="width: 40px;"></a> 

   </span>

   <script >
   function totop() {
      console.log("test")
       window.scrollTo(0,0);
   }
 
 </script>
 
 
   <nav id="header-fixed"
      class="navbar navbar-expand-sm navbar-light bg-white border-bottom ">
      <div class="collapse navbar-collapse" id="navbarColor"
         style="display: flex; justify-content: space-around">
         <div class="left-logo">
            <a class="navbar-brand ml-2 font-weight-bold" href="/"><img
               src="${pageContext.request.contextPath}/resources/images/top-header-handsome-logo.png" /></a>
         </div>
         <div class="middle">
            <ul id="navbar" class="navbar-nav"
               style="display: flex; margin-left: 15px">
               <li class="nav-item"><a class="nav-link" href="#"
                  data-action="??????">??????</a></li>
               <li class="nav-item"><a class="nav-link" href="#"
                  data-action="??????????????????">??????????????????</a></li>
               <li class="nav-item"><a class="nav-link" href="#"
                  data-action="??????">??????</a></li>
               <li class="nav-item"><a class="nav-link" href="#"
                  data-action="??????">??????</a></li>
            </ul>
         </div>

         <div class="right">
            <ul class="navbar-nav">
               <sec:authorize access="isAnonymous()">
                  <li class="nav-item"><a class="nav-link" href="/loginform">?????????</a>
                  </li>
               </sec:authorize>

               <sec:authorize access="isAuthenticated()">

                  <%-- ???????????? ?????? ?????? ????????? ?????????????????? ?????? ?????? --%>
                  <%-- 
                     <a href="${pageContext.request.contextPath}/logout" 
                        class="btn btn-success btn-sm">????????????</a> 
                     --%>

                  <%-- ???????????? ?????? ?????? ????????? ??????????????? ?????? ?????? --%>



                  <li class="nav-item"><a class="nav-link" href="/logout">????????????</a>
                  </li>
               </sec:authorize>

               <li class="nav-item"><a class="nav-link"
                  href="${pageContext.request.contextPath}/cart/2">?????????(??????)</a></li>
               <li class="nav-item"><a class="nav-link"
                  href="${pageContext.request.contextPath}/order/orderList">????????????</a></li>
               <sec:authorize access="isAuthenticated()">
               		<li class="nav-item"><a class="nav-link"
                  		href="${pageContext.request.contextPath}/member/mycoupon">????????????</a></li>
               </sec:authorize>
            </ul>
         </div>
      </div>
   </nav>

   <!-- ?????? category -->
   <div id="??????" class="sub-back">
      <li class="category-list">????????????</li>
      <ul class="category-list"
         style="display: flex; flex-direction: column">
         <div class="largecategory">??????</div>
         <li>??????</li>
         <li>??????</li>
      </ul>

      <ul class="category-list">
         <div class="largecategory">??????</div>
         <li>?????? ??????</li>
      </ul>
   </div>

   <!-- ?????????????????? -->
   <div id="??????????????????" class="sub-back">
      <li class="category-list">????????????</li>
      <ul class="category-list"
         style="display: flex; flex-direction: column">
         <div class="largecategory">??????</div>
         <li>?????? ??????</li>
      </ul>

      <ul class="category-list">
         <div class="largecategory">???</div>
         <li>?????????</li>
         <li>???????????????</li>
         <li>?????? ??????</li>
      </ul>
   </div>
   <div id="??????" class="sub-back men">
      <li class="category-list">????????????</li>
      <ul class="category-list"
         style="display: flex; flex-direction: column">
         <div class="largecategory">?????????</div>
         <li>?????????/?????????</li>
         <li>??????</li>
         <li>??????/??????</li>
         <li>??????</li>
         <li>??????</li>
         <li>???????????????</li>
      </ul>

      <ul class="category-list">
         <div class="largecategory">??????</div>
         <li>??????</li>
         <li>??????/????????????</li>
         <li>??????</li>
         <li>???????????????</li>
         <li>??????/??????</li>
      </ul>

      <ul class="category-list"
         style="display: flex; flex-direction: column">
         <div class="largecategory">SPECIAL SHOP*</div>
         <li>CLUB MONACO : ?????? ????????? ??????</li>
         <li>CLUB MONACO : COATS FOR MEN</li>
         <li>SYSTEM HOMME : (NEW) SWEATS</li>
         <li>SYSTEM HOMME : PARIS PT</li>
         <li>SYSTEM HOMME : SYSTEM X 275C</li>
         <li>SYSTEM HOMME : TYPE 2</li>
         <li>THEHANDSOME 5TH : # WITH US</li>
         <li>TIME HOMME : ONLINE EXCLUSIVE</li>
         <li>TIME HOMME THE GENTLE</li>
      </ul>

      <ul class="category-list">
         <div class="largecategory">??????</div>
         <li>???????????????</li>
         <li>????????????</li>
         <li>????????????</li>
      </ul>
      <ul class="category-list">
         <div class="largecategory">???</div>
         <li>??????</li>
         <li>??????</li>
         <li>?????????</li>
      </ul>
   </div>
   <div id="??????" class="sub-back women">
      <li class="category-list">????????????</li>
      <ul class="category-list"
         style="display: flex; flex-direction: column">
         <div class="largecategory">?????????</div>
         <li>???/?????? ?????????</li>
         <li>?????? ?????????</li>
         <li>?????? ?????????</li>
      </ul>

      <ul class="category-list">
         <div class="largecategory">????????????</div>
         <li>??????</li>
         <li>?????? ??????</li>
         <li>?????????/?????????</li>
      </ul>

      <ul class="category-list"
         style="display: flex; flex-direction: column">
         <div class="largecategory"><a href="${pageContext.request.contextPath}/product/list?c=0403">?????????</a></div>
         <li>?????????/?????????</li>
         <li>??????</li>
         <li>??????/??????</li>
         <li>??????</li>
         <li>??????</li>
         <li>????????? ??????</li>
      </ul>

      <ul class="category-list">
         <div class="largecategory"><a href="${pageContext.request.contextPath}/product/list?c=0404">??????</a></div>
         <li>?????????</li>
         <li>??????</li>
         <li>??????</li>
         <li>??????</li>
      </ul>
      <ul class="category-list"
         style="display: flex; flex-direction: column">
         <div class="largecategory"><a href="${pageContext.request.contextPath}/product/list?c=0405">?????????</a></div>
         <li>????????? ?????????</li>
         <li>???/?????? ?????????</li>
         <li>?????? ?????????</li>
         <li>?????? ?????????</li>
      </ul>

      <ul class="category-list">
         <div class="largecategory">SPECIAL SHOP*</div>
         <li>?????? ??????....</li>
      </ul>

      <ul class="category-list">
         <div class="largecategory">???</div>
         <li>????????????</li>
         <li>??????</li>
         <li>??????</li>
         <li>?????????</li>
      </ul>
   </div>

   <div class="page-title"></div>
   <script>
      class menu {
        constructor(elem) {
          this._elem = elem;
          this._currenthover = null;
          elem.onmouseover = this.onMouse.bind(this); // (*)
        }
        onMouse(event) {
          console.log(event.target);
          let action = event.target.dataset.action;
          console.log(action);
          if (action == "??????") {
            if (this._currenthover != null) {
              this._currenthover.style.display = "none";
            }
            this._currenthover = ??????;
            ??????.style.display = "flex";

            ??????.onmouseleave = function () {
              ??????.style.display = "none";
            };
          } else if (action == "??????") {
            if (this._currenthover != null) {
              this._currenthover.style.display = "none";
            }
            this._currenthover = ??????;
            ??????.style.display = "flex";

            ??????.onmouseleave = function () {
              ??????.style.display = "none";
            };
          } else if (action == "??????") {
            if (this._currenthover != null) {
              this._currenthover.style.display = "none";
            }
            this._currenthover = ??????;
            ??????.style.display = "flex";

            ??????.onmouseleave = function () {
              ??????.style.display = "none";
            };
          } else if (action == "??????????????????") {
            if (this._currenthover != null) {
              this._currenthover.style.display = "none";
            }
            this._currenthover = ??????????????????;
            ??????????????????.style.display = "flex";

            ??????????????????.onmouseleave = function () {
              ??????????????????.style.display = "none";
            };
          }
        }
      }
      new menu(navbar);
    </script>