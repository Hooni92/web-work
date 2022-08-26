<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String[] tmp={"언랭", "아이언", "브론즈", "실버", "골드", "플레티넘", "다이아", "마스터", "그랜드마스터", "챌린저"};
	int tier=Integer.parseInt((String)session.getAttribute("tier"));
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="main.css ">
    <style>
    </style>
</head>
<body>
	<jsp:include page="/WEB-INF/include/navbar.jsp">
		<jsp:param value="" name=""/>
	</jsp:include>
	<div id="container">
		<div id="profile">
			<p>회원정보</p>
			<hr />
			<p>프로필사진</p>
			<hr />
			<p>${id }님의정보</p>
			<hr />
			<div>아이디:${id }</div>
			<div>이메일:${email }</div>
			<div>티어:<%=tmp[tier]%></div>
			<div>가입일:${date }</div>
		</div>
    </div>
    <script>
    const testArray = document.querySelectorAll(".test");
    
    testArray.forEach((tierTag, index) => {
    	tierTag.addEventListener('click', function(e) {
    		const tier = <%=tier %>;
    		if(tier < index) {
    			alert("<%=tmp[tier]%>은 함부로 접근할 수 없습니다.");
    			e.preventDefault();
    		}
    	});
    });
    </script>
</body>
</html>