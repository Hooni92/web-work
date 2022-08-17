<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>메인페이지</title>
    <link rel="stylesheet" href="index.css ">
    <link rel="stylesheet" href="font.css">
</head>
<body>
    <div id="container" class="container">
        <div id="rightad" class="ad"></div>
        <div id="leftad" class="ad"></div>
        <div id="mainWrap" class="mainWarp">
            <div id="banner" class="banner">
                <a href="mainpage.html"><img src="images/blog-title.png" alt="mainbanner" style="width: 1080px; height: 130px;"></a>
            </div>
            <div id="nav" class="nav">
                <ul>
                    <li>
                        <p id="nav1">준비중1</p>
                    </li>
                    <li>준비중2</li>
                    <li>준비중3</li>
                    <li>고객센터</li>
                </ul>
            </div>
            <div id="hideNav1" class="hideNave"></div>
            <div id="hideNave2" class="hideNave"></div>
            <div id="hideNave3" class="hideNave"></div>
            <div id="hideNave4" class="hideNave"></div>
            <div id="mainBody" class="mainBody">
                <div id="member" class="member">
                    <h4>회원정보</h4>
                    <hr>
                    <br>
                    <ul>
                        <li>
                            <div id="profile_pic">
                                <a href="">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear-fill" viewBox="0 0 16 16">
                                        <path d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z"/>
                                    </svg>
                                </a>
                                <img src="https://ssl.pstatic.net/static/cafe/cafe_pc/default/cafe_profile_70.png" alt="회원프로필" style="width: 65px; height: 65x;">
                            </div>
                            <div id="user_id"><strong>아이디</strong></div>
                        </li>
                        <li>
                            가입:
                            <em>2022-07-26</em>
                        </li>
                        <li>
                            등급:
                            <em>일반회원</em>
                        </li>
                    <br>    
                    </ul>
                    <hr>
                    <h4>회원활동</h4>
                    <hr>
                    <br>
                    <ul>
                        <li>내가 만든방: 
                            <a href="">0개</a>
                        </li>
                        <li>내가 가입된방:
                            <a href="">0개</a>
                        </li>
                        <br>
                    </ul>
                    <hr>
                    <h4 id="memChck">회원인증
                    <hr>
                    <br>
                        <ul>
                            <li>
                                <div id="memCheckTitle">네이버인증:</div>
                                <div id="naverCheck">미인증</div>
                            </li>
                            <li>
                                <div id="memCheckTitle">카카오인증:</div>
                                <div id="kakoCheck">인증완료</div>
                            </li>
                            <li>
                                <div id="memCheckTitle">계좌인증:</div>
                                <div id="actCheck">인증완료</div>
                            </li>
                            <li>
                                <div id="memCheckTitle">위치인증:</div>
                                <div id="locCheck">미인증</div>
                            </li>
                            <li>
                                <a href="" id="goCert">인증하러가기</a>
                            </li>
                        </ul>
                    </h4>
                </div>
                <div id="mainad" class="mainad">
					<div id="carouselExampleIndicators" class="carousel slide"
						data-bs-ride="true">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="..." class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="..." class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="..." class="d-block w-100" alt="...">
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
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
    <script>
        document.querySelector("#mainAdButton1").addEventListener("mouseover",function(){
            document.querySelector("#firstAd").src="images/wyattEarp.jpg"
            document.querySelector("#mainAdButton1").style.backgroundColor="black"
        })
        document.querySelector("#mainAdButton1").addEventListener("mousleave",function(){
            retun()
        })
        document.querySelector("#mainAdButton2").addEventListener("mouseover",function(){
            document.querySelector("#firstAd").src="images/lotto-ball-1.png"
        })
        document.querySelector("#mainAdButton3").addEventListener("mouseover",function(){
            document.querySelector("#firstAd").src="images/lotto-ball-2.png"
        })
        document.querySelector("#mainAdButton4").addEventListener("mouseover",function(){
            document.querySelector("#firstAd").src="images/lotto-ball-3.png"
        })
        document.querySelector("#mainAdButton5").addEventListener("mouseover",function(){
            document.querySelector("#firstAd").src="images/lotto-ball-4.png"
        })
    </script>
</body>
</html>