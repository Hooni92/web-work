<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	jsp 페이지에서 httpsServletRequest는 기본 객체이다.
	request 라는 이름의 지역변수에 참조값이 들어있기 때문에 바로 . 찍어서 필요한 메소드를
	활용할 수 있다.
	*/
	request.setCharacterEncoding("utf-8");
	String text=request.getParameter("msg");
	//System.out.println(text);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메세지 잘받았어 클라이언트야!</h1>
</body>
</html>