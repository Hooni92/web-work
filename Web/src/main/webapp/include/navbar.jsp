<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
   /include/navbar.jsp
 --%>
<%
   //이 navber.jsp 페이지가 어디에 include 되었는지 읽어와 보기
   String thisPage=request.getParameter("thisPage"); // "index" | "member" | "todo"
   
%>
<!-- bootstrap 네비바 시작 -->
<nav id="nav" class="navbar navbar-expand-lg fixed-top navbar-dark" style="height: 75px; font-size: 2em; background: #F7B25E; ">
  <div id="navbar" class="container-fluid ">
    <a class="navbar-brand" href="${pageContext.request.contextPath }"><img src="images/caramelRope.png" alt="Rope" /></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav me-auto mb-3 mb-lg-0" style="color: #65350F;">
        <li class="nav-item">
          	<a class="nav-link" href="${pageContext.request.contextPath }">채널묶어</a>
        </li>
        <li class="nav-item">
          	<a class="nav-link" href="${pageContext.request.contextPath }">쇼핑묶어</a>
        </li>
        <li class="nav-item">
          	<a class="nav-link" href="${pageContext.request.contextPath }">이벤트묶어</a>
        </li>
        <li class="nav-item" >
          	<a class="nav-link" href="${pageContext.request.contextPath }">고객센터</a>
        </li>
      </ul>
      	<form class="d-flex" role="search">
        	<div class="input-group mb-3"  style="margin-top: 15px; margin-right: 50px;">
  				<input type="search" class="form-control" placeholder="검색어를 입력하세요.." aria-label="Recipient's username" aria-describedby="button-addon2" style="width:500px; height:50px;">
  				<button class="btn btn-outline-secondary" type="submit" id="button-addon2">
  					<svg xmlns="http://www.w3.org/2000/svg" width="23" height="<23></23>" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  						<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
					</svg>
				</button>
			</div>
      	</form>
   	 </div>
  </div>
</nav>
<!-- 네비바 끝 -->