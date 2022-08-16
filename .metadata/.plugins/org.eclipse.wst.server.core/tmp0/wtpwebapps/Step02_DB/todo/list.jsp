<%@page import="java.util.List"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	TodoDao dao=TodoDao.getInstance();
	List<TodoDto> list=dao.getList();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>할일 목록 페이지입니다.</title>
</head>
<body>
	<h1>할일 목록입니다.</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>할일</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
			<%for(TodoDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getContent() %></td>
					<td><%=tmp.getRegdate() %></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
	<fieldset>
		<legend>일정 추가하기</legend>
		<form action="insert.jsp">
			<input type="text" name="content" placeholder="할일 입력" />
			<button type="submit">수정</button>
		</form>
	</fieldset>
	<fieldset>
		<legend>일정 수정하기</legend>
		<form action="update.jsp">
			<button type="submit">수정하기</button>
		</form>
	</fieldset>
</body>
</html>