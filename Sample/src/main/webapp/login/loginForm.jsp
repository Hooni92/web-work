<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Pacifico&display=swap');
        *{
            margin: 0%;
            padding: 0%;
            box-sizing: border-box;
        }
        .container1{
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            height: 100vh;
            background-image: url("https://www.uuoobe.kr/data/file/photo3/3716527970_74xHaU9M_237788811_lwvcT51S_Digital_Art_28129.jpg");
            background-size: cover;
        }
        body> div> div> form> div> label{
            font-family: 'Pacifico', cursive;
            color: blueviolet;
            font-size: 20px;
        }
    </style>   
    <title>login</title>
</head>
<body>
    <div class="container1">
        <div>
            <form action="login.jsp" method="post">
                <input type="hidden" name="url" value=""/>
                <div>
                    <label class="form-label" for="id">ID</label>
                    <input class="form-control" type="text" name="id" id="id"/>
                </div>
                <div>
                    <label class="form-label" for="pwd">Password</label>
                    <input class="form-control" type="password" name="pwd" id="pwd"/>
                </div>
                <br>
                <button class="btn btn-primary" type="submit">Login</button>
            </form>
        </div>
    </div>
</body>
</html>