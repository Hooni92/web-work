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
<nav class="navbar navbar-expand-lg fixed-top navbar-dark" style="height: 75px; font-size: 2em; background: #F7B25E; ">
  <div id="navbar" class="container-fluid ">
    <a class="navbar-brand" href="${pageContext.request.contextPath }"><img src="images/Rope.png" alt="Rope" /></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
      <ul class="navbar-nav me-auto mb-3 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath }">OTT묶기</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath }">OTT묶기</a>
        </li>
        <li class="nav-item" >
          <a class="nav-link" href="${pageContext.request.contextPath }">고객센터</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="검색어를 입력하세요.." style="width:500px; height:50px;">
        <button class="btn btn-outline-success" type="submit">검색</button>
        
      </form>
    </div>
  </div>
</nav>
<!-- 네비바 끝 -->