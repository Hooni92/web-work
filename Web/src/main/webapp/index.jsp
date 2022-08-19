<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
    <style>
    	.carousel-inner {
    	box-sizing: border-box;
    	display: flex;
    	justify-content: center;
    	}
    	
      	.carousel-inner > div > img {
     	 top: 0;
      	left: 0;
      	max-width: 1400px;
      	max-height: 400px;	
    } 
    </style>
    <link href="index.css ">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="include/navbar.jsp">
		<jsp:param value="index" name="thisPage"/>
	</jsp:include>
	<div id="container">
		<div id="bannerBox">
			<img src="" alt="" />
		</div>
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1">
				</button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2">
				</button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3">
				</button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="https://img-9gag-fun.9cache.com/photo/aMjnKoV_700bwp.webp" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="https://img-9gag-fun.9cache.com/photo/aMjnKoV_700bwp.webp" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="https://img-9gag-fun.9cache.com/photo/aMjnKoV_700bwp.webp" class="d-block w-100" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<div id="centerBox">
			<div id="centerBox1"><p>OTT 묶고</p></div>
			<div id="centerBox2"><p>우리동네 묶고</p></div>
			<div id="centerBox3"><p>행사상품 묶고</p></div>
			<div id="centerBox4"><p>방장 라인업</p></div>
		</div>
		<div id="bottomBox"></div>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include>
</body>
</html>