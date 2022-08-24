<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="index.css ">
</head>
<body>
    <div id="container" class="container">
        <div id="rightad" class="ad"></div>
        <div id="leftad" class="ad"></div>
        <div id="mainWrap" class="mainWarp">
            <div id="banner" class="banner">
                <a href="mainpage.html"><img src="images/blog-title.png" alt="mainbanner" style="width: 1080px; height: 130px;"></a>
            </div>
            <div id="mainBody" class="mainBody">
                <div id="member" class="member">
                </div>
                <div id="mainad" class="mainad">
                    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
                        <div class="carousel-indicators">
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                        </div>
                       <div class="carousel-inner" style="height: 400px">
                          <div class="carousel-item active">
                                <img src="images/1.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item">
                                <img src="images/2.jpg" class="d-block w-100" alt="...">
                          </div>
                          <div class="carousel-item">
                                <img src="images/3.jpg" class="d-block w-100" alt="...">
                          </div>
                       </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                       </button>
                  </div>
                </div>
                <div id="nav1Body" class="navBody">
                    <h3>곧 마감하는 방</h3>
                    <h4>준비중</h4>
                    <div id="netflex"></div>
                    <h4>준비중</h4>
                    <div id="wave"></div>
                    <h4>준비중</h4>
                    <div id="whatcha"></div>
                </div>
                <div id="nav2Body" class="navBody">
                    <h3>우리동네 묶음상품</h3>
                    <div id="nav2">
                        <div>
                            <img src="" alt="" style="height: 150px; width: 200px;">
                            <hr>
                            <p>최저가 가격:<del>1000</del>원</p>
                            <p>행사 가격:800원</p>
                            <p>최소인원:3/10</p>
                        </div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </div>
                <div id="nav3Body" class="navBody">
                    <h3>참여하는 기업상품</h3>
                    <div id="nav3">
                        <div>
                            <img src="" alt="" style="height: 150px; width: 200px;">
                            <hr>
                            <p>최저가 가격:<del>1000</del>원</p>
                            <p>행사 가격:800원</p>
                            <p>최소인원:3/10</p>
                        </div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>