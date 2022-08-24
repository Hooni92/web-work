<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup_Form</title>
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
            min-width: 100%;
            height: 100vh;
            background-image: url("https://mblogthumb-phinf.pstatic.net/20150109_104/dpaaksndpf1_14207377383526PRMu_JPEG/andromeda_galaxy-wallpaper-1920x1080.jpg?type=w2");
            background-size: cover;
        }
        body> div> form> div> label{
            font-family: 'Pacifico', cursive;
            color: blueviolet;
            font-size: 20px;
        }
        body> div> form> div> input {
            width: 300px;
        }
    </style>   
</head>
<body>
    <div class="container1">
    	<form action="signup.jsp" method="post" id="signupForm">
			<div class="mb-3">
				<label class="control-label" for="id">ID</label>
				<input class="form-control" type="text" name="id" id="id"/>
				<small class="form-text text-muted"></small>
				<div class="invalid-feedback">아이디는 특수문자를 포함하지 않는 5~10자리입니다.</div>
			</div>
			<div class="mb-3">
				<label class="control-label" for="pwd">Password</label>
				<input class="form-control" type="password" name="pwd" id="pwd"/>
				<div class="invalid-feedback">비밀 번호를 확인 하세요</div>
			</div>
			<div class="mb-3">
				<label class="control-label" for="pwd2">Confirm Password</label>
				<input class="form-control" type="password" name="pwd2" id="pwd2"/>
			</div>
			<div class="mb-3">
				<label class="control-label" for="email">E-Mail</label>
				<input class="form-control" type="text" name="email" id="email"/>
				<div class="invalid-feedback">Please fill in the email format.</div>
			</div>
			<button class="btn btn-primary" type="submit">Submit</button>
		</form>		
	</div>
	<script>
		
		//유효성 여부를 저장할 변수를 만들고 초기값 대입 
		let isIdValid=false;
		let isPwdValid=false;
		let isEmailValid=false;
		
		// id 를 입력 할때 마다 호출되는 함수 등록 
		document.querySelector("#id").addEventListener("input", function(){
			//input 요소의 참조값을 self 에 미리 담아 놓기 
			const self=this;
			//일단 2개의 클래스를 모두 제거 한다음 
			self.classList.remove("is-valid");
			self.classList.remove("is-invalid");
			
			//1. 현재 입력한 아이디를 읽어와서
			const inputId=this.value;
			
			//아이디를 검증할 정규표현식 객체
			const reg=/^[a-z].{4,9}$/;
			//만일 입력한 아이디가 정규표현식을 통과 하지 못한다면 빨간색으로 표시하고 함수를 여기서 바로 종료 시키기 
			if(!reg.test(inputId)){
				self.classList.add("is-invalid");
				isIdValid=false;
				return;
			}
			
			//2. 서버에 보내서(페이지 전환 없이) 
			//3. 사용 가능 여부를(이미 존재하는지 여부) 함수로 응답 받는다.
			fetch("${pageContext.request.contextPath }/users/checkid.jsp?inputId="+inputId)
			.then(function(response){
				//서버에서 응답하는 문자열의 형식이 json 형식이면 response.json();
				//그 이외의 형식이면 response.text(); 를 호출해서 리턴해 준다. 
				return response.json();
			})
			.then(function(data){
				//서버에서 출력한 json 문자열이 object 로 변환되어서 함수에 전달된다. 
				console.log(data);
				//data 는 {isExist:true} or {isExist:false} 형식의 object 이다. 
				if(data.isExist){//이미 존재하면 사용할수 없는 아이디 
					self.classList.add("is-invalid");
					isIdValid=false;
				}else{
					self.classList.add("is-valid");
					isIdValid=true;
				}
			});
		});
		
		//비밀번호를 확인 하는 함수 
		function checkPwd(){
			document.querySelector("#pwd").classList.remove("is-valid");
			document.querySelector("#pwd").classList.remove("is-invalid");
			
			const pwd=document.querySelector("#pwd").value;
			const pwd2=document.querySelector("#pwd2").value;
			//비밀번호를 검증할 정규 표현식
			let reg=/[\W]/;
			//만일 비밀번호가 정규 표현식을 통과 하지 못한다면 
			if(!reg.test(pwd)){		
				document.querySelector("#pwd").classList.add("is-invalid");
				isPwdValid=false;
				return; //함수를 여기서 끝내라 
			}
			
			if(pwd != pwd2){//만일 비밀번호 입력란과 확인란이 다르다면
				document.querySelector("#pwd").classList.add("is-invalid");
				isPwdValid=false;
			}else{
				document.querySelector("#pwd").classList.add("is-valid");
				isPwdValid=true;
			}
		}
		
		document.querySelector("#pwd").addEventListener("input", function(){
			//비밀번호를 검증하는 함수 호출
			checkPwd();
		});
		document.querySelector("#pwd2").addEventListener("input", function(){
			checkPwd();
		});
		
		document.querySelector("#email").addEventListener("input", function(){
			
			this.classList.remove("is-valid");
			this.classList.remove("is-invalid");
			//입력한 이메일
			const inputEmail=this.value;
			//이메일을 검증할 정규 표현식
			const reg=/@/;
			if(!reg.test(inputEmail)){
				this.classList.add("is-invalid");
				isEmailValid=false;
			}else{
				this.classList.add("is-valid");
				isEmailValid=true;
			}
		});
		
		//폼에 submit 이벤트가 일어 났을때 실행할 함수 등록
		document.querySelector("#signupForm").addEventListener("submit", function(event){
			
			//폼 전체의 유효성 여부
			let isFormValid = isIdValid && isPwdValid && isEmailValid;
			
			if(!isFormValid){
				//폼 제출 막기 
				event.preventDefault();
			}
		});
	</script>
</body>
</html>