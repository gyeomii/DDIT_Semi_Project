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
<title>로그인</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
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
</style>
</head>
<body>


	<div class="container">
		<div class="starter-template">

			<div class="row">
				<div class="col-md-6">
	
					 <div class="slider">
						<input type="radio" name="slide" id="slide1" checked> 
						<input type="radio" name="slide" id="slide2"> 
						<input type="radio" name="slide" id="slide3"> 
						<input type="radio" name="slide" id="slide4">
						<input type="radio" name="slide" id="slide5">
						<input type="radio" name="slide" id="slide6">
						<ul id="imgholder" class="imgs">
							<li><img src="<%=request.getContextPath()%>/resources/img/건영.png"></li>
							<li><img src="<%=request.getContextPath()%>/resources/img/미정.png"></li>
							<li><img src="<%=request.getContextPath()%>/resources/img/성겸.png"></li>
							<li><img src="<%=request.getContextPath()%>/resources/img/은정.png"></li>
							<li><img src="<%=request.getContextPath()%>/resources/img/재린.png"></li>
							<li><img src="<%=request.getContextPath()%>/resources/img/정현.png"></li>
						</ul>
						<div class="bullets">
							<label for="slide1">&nbsp;</label> <label for="slide2">&nbsp;</label>
							<label for="slide3">&nbsp;</label> <label for="slide4">&nbsp;</label>
							<label for="slide5">&nbsp;</label> <label for="slide6">&nbsp;</label>
						</div>
					</div> 
				</div>


				<div class="col-md-6">
					<img src="<%=request.getContextPath()%>/resources/img/너성보.jfif" id="tendency">
					<form class="form-horizontal" action="login.do" method="post">
						<div class="form-group">
							<label for="inputId" class="col-sm-2 control-label">ID</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputId" name="id" placeholder="ID">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label>
										<input type="checkbox"> 아이디 비번을 기억할래요
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">로그인</button>
								<button type="button" class="btn btn-link" onclick='location.href="<%=request.getContextPath()%>/member/registForm.do"'>회원가입 하러가기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>