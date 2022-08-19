<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String email=request.getParameter("email");
	String comment=(String)request.getParameter("comment");
	String job=request.getParameter("job");
	String gender=request.getParameter("gender");
	String[] concern=request.getParameterValues("concern");
	if(concern==null){
		concern=new String[0];
	}
	//Stringp[] 을 List<String>으로 변환하기
	//변환하면.contain()메소드를 활용할 수 있다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/signup.jsp</title>
</head>
<body>

	<div>
		<label for="email">이메일</label> 
		<input type="text" name="email" id="email" value="<%=email%>" />
	</div>
	<div>
		<label for="comment">할말</label> 
		<textarea name="comment" id="comment"><%=comment %></textarea>
	</div>
	<div>
		<label for="job">직업</label>
		<select name="job" id="job">
			<option value="" <%=job.equals("")?"selected":"" %>>선택</option>
			<option value="programmer" <%=job.equals("programmer")?"selected":"" %>>프로그래머</option>
			<option value="teacher"<%=job.equals("teacher")?"selected":"" %>>선생님</option>
			<option value="doctor"<%=job.equals("doctor")?"selected":"" %>>의사</option>
			<option value="etc"<%=job.equals("etc")?"selected":"" %>>기타</option>
		</select>
	</div>
	<div>
		<fieldset>
			<legend>관심사 체크</legend>
			<label> 
			<input type="checkbox" name="concern" value="reading" <%=Arrays.asList(concern).contains("reading")?"checked":"" %>/>
				독서
			</label> 
			<label> <input type="checkbox" name="concern" value="game"<%=Arrays.asList(concern).contains("game")?"checked":"" %> />
				게임
			</label> 
			<label> <input type="checkbox" name="concern" value="cooking" <%=Arrays.asList(concern).contains("cooking")?"checked":"" %> />
			 요리
			</label>
		</fieldset>
	</div>
	<div>
		<fieldset>
			<legend>성별 체크</legend>
			<label> <input type="radio" name="gender" value="man" <%=gender.equals("man")?"checked":"" %>/> 
			남자
			</label> <label> <input type="radio" name="gender" value="woman" <%=gender.equals("woman")?"checked":"" %> />
			여자
			</label>
		</fieldset>
	</div>
	<button type="submit">전송</button>
</body>
</html>