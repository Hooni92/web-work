
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파라미터로 ( ?num=x ) 전달되는 삭제할 할일 번호 읽어오기
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 삭제
	TodoDao.getInstance().delete(num);
	//3. 응답
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/delete.jsp</title>
</head>
<body>
	<script>
		alert("삭제 했습니다.");
		location.href="list.jsp";
	</script>
</body>
</html>