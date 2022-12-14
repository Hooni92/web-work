<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<h1>회원 추가 폼 입니다.</h1>
	<form action="insert.jsp" method="post">
		<div class="mb-3">
			<label class="form-label" for="name">이름</label>
			<input class="form-control" type="text" name="name" id="name"/>
		</div>
		<div class="mb-3">
			<label class="form-label" for="addr">주소</label>
			<input class="form-control" type="text" name="addr" id="addr"/>
		</div>
		<button class="btn btn-primary btn-sm" type="submit">추가</button>
	</form>
</div>
<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>








