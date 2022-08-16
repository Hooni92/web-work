<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 추가 페이지</title>
</head>
<body>
<div class="container">
	<h1>회원 추가 폼입니다.</h1>
	<form action="/Step02_DB/insert.jsp" method="post">
		<div>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" placeholder="이름을 입력하세요..." />
		</div>
		<div>
			<label for="addr">주소</label>
			<input type="text" name="addr" id="addr" placeholder="주소를 입력하세요..." />
		</div>
		<button type="submit">추가</button>
	</form>
</div>
</body>
</html>