<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 아이디, 비밀번호, 이메일 추출
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String email=request.getParameter("email");
	String tier=request.getParameter("tier");
	//2. DB 에 저장
	UsersDto dto=new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setEmail(email);
	dto.setTier(tier);
	
	boolean isSuccess=UsersDao.getInstance().insert(dto);
	//3. 결과 응답하기
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup.jsp</title>
</head>
<body>
<script>
	<%if(isSuccess){ %>
		alert("회원가입을 축하드립니다.\n로그인페이지로 이동합니다.")
		location.href="${pageContext.request.contextPath }/login/loginForm.jsp"
	<%}else{ %>
		<p>
		alert("회원가입에 실패하셨습니다.\n회원가입페이지로 이동합니다.")
		location.href="${pageContext.request.contextPath }/signup/signupForm.jsp"></signup>"
		</p>
	<%} %>
</script>
</body>
</html>



