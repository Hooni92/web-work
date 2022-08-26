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
<nav id="nav" class="navbar navbar-expand-lg fixed-top navbar-dark" style="height: 75px; font-size: 2em; background: black; ">
  <div id="navbar" class="container-fluid ">
    <a class="navbar-brand" href="${pageContext.request.contextPath }/main/main.jsp"><img src="https://mblogthumb-phinf.pstatic.net/20140716_249/kana002_1405471233713rhUD4_PNG/icon.png?type=w2" alt="Rope" style="width: 50px; height: 50px; margin-left: 30px;"  /></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <p style="font-size: 25px; color: white; margin-top: 18px;">"소환사의 협곡에 오신것을 환영합니다"</p>
      <ul class="navbar-nav me-auto mb-3 mb-lg-0" style="color: #65350F;">
        <li class="nav-item">
          	<a class="nav-link test" href="${pageContext.request.contextPath }/cafe/list.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbsJT7b%2FbtqYhyYDWap%2FHUTD09WchC9qZW8r1p1QB0%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
        <li class="nav-item">
          	<a id="bronze" class="nav-link test" href="${pageContext.request.contextPath }/cafe/list2.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F8yeAR%2FbtqX83lmfND%2FQ0vCmYQx09DLQX1dbGvw61%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
        <li class="nav-item">
          	<a class="nav-link test" href="${pageContext.request.contextPath }/cafe/list3.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FUoVCn%2FbtqX82Nv6uf%2F6Wk63xJmnTVtW968iSurc0%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
        <li class="nav-item">
          	<a class="nav-link test" href="${pageContext.request.contextPath }/cafe/list4.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdxjmpT%2FbtqYgGWXdq5%2FYyaujId4AjzIRu7SEUoP71%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
        <li class="nav-item" >
          	<a class="nav-link test" href="${pageContext.request.contextPath }/cafe/list5.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbUXEUo%2FbtqX812cCZG%2FTwooRuWWtDuxo2xfvB2KW1%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
        <li class="nav-item" >
          	<a class="nav-link test" href="${pageContext.request.contextPath }/cafe/list6.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FwasjB%2FbtqYfVUjFmK%2FKD9Vw3T7WZ7qpv7sELuLU0%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
        <li class="nav-item" >
          	<a class="nav-link test" href="${pageContext.request.contextPath }/cafe/list7.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fc90MX3%2FbtqX319ryJc%2F8R0TA5BsNtxMWiQINcggr0%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
        <li class="nav-item" >
          	<a class="nav-link test" href="${pageContext.request.contextPath }/cafe/list8.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbwCoOa%2FbtqX32N6lBg%2FeuKVfTIZgi2oVmUHRx0XAK%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
        <li class="nav-item" >
          	<a class="nav-link test" href="${pageContext.request.contextPath }/cafe/list9.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FmPdPA%2FbtqX319rvft%2FD3nLIuuo7PTjDWKyh452d1%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
        <li class="nav-item" >
          	<a class="nav-link test" href="${pageContext.request.contextPath }/cafe/list10.jsp"><img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FdaNR6z%2FbtqYbJNFasE%2FrbH16SlWukVsCcjgefsWC1%2Fimg.png" style="width: 70px; height: 70px;" alt="" /></a>
        </li>
      </ul>
      	<form class="d-flex" role="search">
        	<div class="input-group mb-3"  style="margin-top: 15px; margin-right: 50px;">
  				<input type="search" class="form-control" placeholder="아이디를 입력하세요.." aria-label="Recipient's username" aria-describedby="button-addon2" style="width:400px;">
  				<button class="btn btn-outline-secondary" type="submit" id="button-addon2">
  					<svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  						<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
					</svg>
				</button>
			</div>
      	</form>
   	 </div>
  </div>
</nav>
<!-- 네비바 끝 -->