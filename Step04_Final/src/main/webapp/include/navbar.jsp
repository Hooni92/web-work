<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
   /include/navbar.jsp
 --%>
<%
   //이 navber.jsp 페이지가 어디에 include 되었는지 읽어와 보기
   String thisPage=request.getParameter("thisPage"); // "index" | "member" | "todo"
   
%>
<!--  navbar-expand-sm :width 576px 이상에서 네비요소 펼치기 -->
<!--  navbar-expand-md :width 768px 이상에서 네비요소 펼치기 -->
<!--  navbar-expand-lg :width 992px 이상에서 네비요소 펼치기 -->
<!-- bootstrap 네비바 시작 -->
<nav class="navbar bg-light navbar-expand-sm">
  <div class="container">
    <a class="navbar-brand" href="${pageContext.request.contextPath }/">
      <img src="https://getbootstrap.com/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
      Acorn
    </a>
    <!-- 
    	화면의 폭이 좁아 지면 나오는 버튼
    	#navbarNav는 id가 navbarNav인 요소를 접었다 폈다 한다는 의미
     -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</nav>
<nav class="navbar bg-warning navbar-expand-sm">
<!-- 네비바 끝 -->