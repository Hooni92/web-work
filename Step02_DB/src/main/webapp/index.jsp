<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>
<body>
<!-- bootstrap 네비바 -->
<jsp:include page="/include/navbar.jsp">
	<jsp:param value="index" name="thisPage"/>
</jsp:include>
<h1>인덱스 페이지 입니다.</h1>
<%-- 
	절대경로를 표시할때 컨텍스트 경로가 필요하긴 하지만
	컨텍스트 경로는 나중에 실제로 프로젝트가 끝나고 배포되는 시점에 변경되거나 제거될 예정이다.
	따라서 코딩할때 컨텍스트 경로를 실제로 코딩해 놓으면 나중에 제거하거나 변경할때 어려움이 예상된다.
	해결책은 jsp 페이지에서 context 경로가 필요하면 아래의EL(expression language)=${}을 이용해서 출력하면 된다.
 --%>
<p>컨텍스트 경로(프로젝트명) : <strong>${pageContext.request.contextPath }</strong></p>
<div>
<ul class="navbar-nav">
	<li class="nav-item"><a class="nav-link" href="member/list.jsp">회원 목록 보기</a></li>
	<li class="nave-item"><a class="nav-link" href="todo/list.jsp">할일 목록 보기</a></li>	
</ul>
</div>
</div>
</body>
</html>