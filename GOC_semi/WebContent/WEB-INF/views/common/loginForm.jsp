<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Show Ur Tendency - login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style type="text/css">
body {
	padding-top: 80px;
}

.starter-template {
	padding: 40px 15px;
	text-align: center;
}

.slider{
    width: 500px;
    height: 500px;
    position: relative;
    margin: 0 auto;
    overflow: hidden;
}
.slider input[type=radio]{
    display: none;
}
ul.imgs{
    padding: 0;
    margin: 0;
    list-style: none;    
}
ul.imgs li{
    position: absolute;
    left: 640px;
    transition-delay: 1s;

    padding: 0;
    margin: 0;
}
.bullets{
    position: absolute;
    left: 50%;
    transform: translateX(-50%);
    bottom: 20px;
    z-index: 2;
}
.bullets label{
    display: inline-block;
    border-radius: 50%;
    background-color: rgba(0,0,0,0.55);
    width: 20px;
    height: 20px;
    cursor: pointer;
}

.slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
    background-color: #fff;
}
.slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
    background-color: #fff;
}
.slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
    background-color: #fff;
}
.slider input[type=radio]:nth-child(4):checked~.bullets>label:nth-child(4){
    background-color: #fff;
}
.slider input[type=radio]:nth-child(5):checked~.bullets>label:nth-child(5){
    background-color: #fff;
}
.slider input[type=radio]:nth-child(6):checked~.bullets>label:nth-child(6){
    background-color: #fff;
}

.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
.slider input[type=radio]:nth-child(4):checked~ul.imgs>li:nth-child(4){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
.slider input[type=radio]:nth-child(5):checked~ul.imgs>li:nth-child(5){
    left: 0;
    transition: 0.5s;
    z-index:1;
}
.slider input[type=radio]:nth-child(6):checked~ul.imgs>li:nth-child(6){
    left: 0;
    transition: 0.5s;
    z-index:1;
} 
#tendency {
	height: 150px;
}
.slide-img {
    width: 500px;
    height: 500px;
    position: relative;
    margin: 0 auto;
    overflow: hidden;
}

.img {
	width: 500px;
	height: 500px;
	background-position: center;
	background-size: cover;
}
</style>
</head>
<body>



	<div class="container" style="margin-top:70px;">
		<div class="starter-template">

			<div class="row">
				<div class="col-md-6">

					<div class="slide-img">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-bs-ride="carousel">
							<div class="carousel-indicators">
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide 1" style="background-color: black;"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="1" aria-label="Slide 2" style="background-color: black;"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="2" aria-label="Slide 3" style="background-color: black;"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="3" aria-label="Slide 4" style="background-color: black;"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="4" aria-label="Slide 5" style="background-color: black;"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="5" aria-label="Slide 6" style="background-color: black;"></button>
							</div>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_성겸.png)"
										onclick=""></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_건영.png)"
										onclick=""></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_미정.png)"
										onclick=""></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_은정.jpg)"
										onclick=""></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_정현.png)"
										onclick=""></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_재린.png)"
										onclick=""></div>
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


				<div class="col-md-6">
					<img src="<%=request.getContextPath()%>/resources/img/너성보.jfif"
						id="tendency">
					<form class="form-horizontal" action="login.do" method="post" style="margin:50px;">
						<div class="form-floating mb-3 form-group">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="spongebob" name="id"> <label
								for="floatingInput">아이디</label>
						</div>

						<div class="form-floating form-group">
							<input type="password" class="form-control" id="floatingPassword"
								placeholder="Password" name="password"> <label
								for="floatingPassword">Password</label>
						</div>
						<div class="form-group" style="margin:50px;">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-secondary">로그인</button>
								<button type="button" class="btn btn-light"
									onclick='location.href="<%=request.getContextPath()%>/member/registForm.do"'>회원가입
									하러가기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<!-- bootstrap 5.1.3 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<!-- jquery 1.11.2 -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- common.js -->
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
</body>
</html>