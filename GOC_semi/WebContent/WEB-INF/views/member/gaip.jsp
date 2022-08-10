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

<title>join us</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style type="text/css">
.starter-template {
	padding: 40px 15px;
	text-align: center;
}

.slide-img {
	max-width: 40%;
	min-width: 40%;
	min-height: 30%;
	max-height: 30%;
	margin: 0 auto;
}

.carousel-control-prev-icon {
	color: black;
}

.icon {
	width: 80px;
	height: 20%;
	margin-right: 20px;
}

.container-fluid {
	width: 80%;
}
</style>

</head>
<body>
	<script type="text/javascript">
		/* 
		function fun() {  
			
			  var id = document.getElementById("id").value;
			  var name = document.getElementById("name").value;
			  var nickname = document.getElementById("nickname").value;
			  
		 	  var username = document.getElementById("username").value;
			  var server = document.getElementById("server").value;
			  
			  var p1 = document.getElementById("mid").value 
			  var p2 = document.getElementById("end").value;
			  
			  var year = documet.getElementById("year").value;
			  var mon = documet.getElementById("mon").value;
			  var day = documet.getElementById("day").value;
			  
			
			  
			   alert ("id : " + id);
			    alert ("name : " + name);
			   alert ("nickname : " + nickname);
			   alert ("email : " + username +"@"+server);  
			   alert ("phone : 010 - " + p1 + " - " + p2);
			
			   
		 }  
		 */
	</script>



	<nav class="navbar navbar-expand-lg navbar-dark bg-dark stiky-top">
		<div class="container-fluid">
			<div class="icon">
				<a class="navbar-brand" href="<%=request.getContextPath()%>/member/login.do"><img class="icon" src="<%=request.getContextPath()%>/resources/img/icon.png"></a>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="container-fluid">
			<p>
			<h1>회원가입</h1>
			<p>
				<br>
			<div class="sm-3">
				<label for="formGroupExampleInput" class="form-label">아이디</label>
				<input type="text" class="form-control" id="id" placeholder="ex)stray2">
			</div>
			<br>
	
			<div class="sm-3">
				<label for="formGroupExampleInput" class="form-label">이 름</label>
				<input type="text" class="form-control" id="name" placeholder="ex)이민호">
			</div>
			<br>
	
			<div class="sm-3">
				<label for="formGroupExampleInput2" class="form-label">닉네임</label>
				<input type="text" class="form-control" id="nickname" placeholder="ex)leeknow">
			</div>
			<br> <label for="formGroupExampleInput2" class="form-label">이메일</label>
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="Username" id="username">
				<span class="input-group-text">@</span>
				<input type="text" class="form-control" placeholder="naver.com" id="server">
			</div>
	
			<div class="row">
				<label for="formGroupExampleInput2" class="form-label">전화번호</label>
				<div class="col">
					<input type="text" class="form-control" name="phone" placeholder="010">
				</div>
				<div class="col">
					<input type="text" class="form-control" name="phone" placeholder="1234" id="mid">
				</div>
				<div class="col">
					<input type="text" class="form-control" name="phone" placeholder="5678" id="end">
				</div>
			</div>
			<br />
	
	
			<div class="row">
				<label for="formGroupExampleInput2" class="form-label">생년월일</label>
				<div class="col">
					<input type="text" class="form-control" placeholder="ex)1998" id="year">
				</div>
				<div class="col-sm-3">
					<label class="visually-hidden" for="specificSizeSelect">Preference</label>
					<select class="form-select" id="mon" name="birth">
						<option selected>월</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
				</div>
				<div class="col">
					<input type="text" class="form-control" placeholder="25" aria-label="day">
				</div>
			</div>
			<br />
			<div class="sm-3">
				<label for="formGroupExampleInput" class="form-label">비밀번호</label>
				<input type="text" class="form-control" id="pwd" placeholder="-자리이상을 입력하세요.">
			</div>
			<div class="sm-3">
				<label for="formGroupExampleInput" class="form-label">비밀번호 확인</label>
				<input type="text" class="form-control" id="pwdchk">
			</div>
			<br>
			<label for="formGroupExampleInput2" class="form-label">주소</label>
			<select class="form-select" id="add">
				<option selected>주소를 선택하세요.</option>
				<option value="1">대전광역시 동구</option>
				<option value="2">대전광역시 중구</option>
				<option value="3">대전광역시 대덕구</option>
				<option value="4">대전광역시 서구</option>
				<option value="5">대전광역시 유성구</option>
			</select> 
			<br>
	
			<div class="sm-3">
				<label class="form-label">성별</label><br />
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="m" value="m">
					<label class="form-check-label" for="inlineRadio1">남성</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="f" value="f">
					<label class="form-check-label" for="inlineRadio2">여성</label>
				</div>
			</div>
			<br>
	
			<div class="form-check">
				<input class="form-check-input" type="checkbox" id="agree">
				<label class="form-check-label" for="gridCheck1"> 이용약관에 동의합니다. </label>
			</div>
			<br>
			<button type="submit" class="btn btn-primary" id="btn_join"	onclick="fun();">회원가입</button>
		</div>
		<br>
		<br>
		<br>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>