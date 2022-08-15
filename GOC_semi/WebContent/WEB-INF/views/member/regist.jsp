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
				<a class="navbar-brand" href="<%=request.getContextPath()%>/member/loginForm.do"><img class="icon" src="<%=request.getContextPath()%>/resources/img/icon.png"></a>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="container-fluid">
		<br/>
		<h1>회원가입</h1>
		<br/>
		<br/>
		<form role="form" class="form-horizontal" action="regist" method="post">
			<div class="sm-3">
				<label for="formGroupExampleInput" class="form-label">아이디</label>
				<div class="row">
				  <div class="col-sm-10">
					<input type="text" class="form-control" id="id" name="user_id" placeholder="ex)stray2">
				  </div>
				  <div class="col-sm-2">
					<button type="button" class="btn btn-primary" onclick="idCheck_go();">중복확인</button>
				  </div>
				</div>
			</div>
			<br>
	
			<div class="sm-3">
				<label for="formGroupExampleInput" class="form-label">이 름</label>
				<input type="text" class="form-control" id="name" name="name" placeholder="ex)이민호">
			</div>
			<br>
	
			<div class="sm-3">
				<label for="formGroupExampleInput2" class="form-label">닉네임</label>
				<div class="row">
				  <div class="col-sm-10">
					<input type="text" class="form-control" id="nickname" name="nickname" placeholder="ex)leeknow">
				  </div>
				  <div class="col-sm-2">
					<button type="button" class="btn btn-primary" onclick="nickCheck_go();">중복확인</button>
				  </div>
			</div>
			<br> <label for="formGroupExampleInput2" class="form-label">이메일</label>
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="Username" id="username" name="email">
				<span class="input-group-text">@</span>
				<input type="text" class="form-control" placeholder="naver.com" id="server" name="email">
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
					<input type="text" class="form-control" placeholder="ex)1998" id="year" name="birth">
				</div>
				<div class="col-sm-3">
					<label class="visually-hidden" for="specificSizeSelect">Preference</label>
					<select class="form-select" id="mon" name="birth">
						<option selected>월</option>
						<option value="01">1</option>
						<option value="02">2</option>
						<option value="03">3</option>
						<option value="04">4</option>
						<option value="05">5</option>
						<option value="06">6</option>
						<option value="07">7</option>
						<option value="08">8</option>
						<option value="09">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
				</div>
				<div class="col">
					<input type="text" class="form-control" placeholder="25" aria-label="day" name="birth">
				</div>
			</div>
			<br />
			<div class="sm-3">
				<label for="formGroupExampleInput" class="form-label">비밀번호</label>
				<input type="text" class="form-control" id="pwd" name="password" placeholder="-자리이상을 입력하세요.">
			</div>
			<div class="sm-3">
				<label for="formGroupExampleInput" class="form-label">비밀번호 확인</label>
				<input type="text" class="form-control" id="pwdchk">
			</div>
			<br>
			<label for="formGroupExampleInput2" class="form-label">주소</label>
			<input type="text" class="form-control" id="address" name="address" placeholder="주소를 입력하세요">
			<br>
	
			<div class="sm-3">
				<label class="form-label">성별</label><br />
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="gender" id="m" value="m">
					<label class="form-check-label" for="inlineRadio1">남성</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="gender" id="f" value="f">
					<label class="form-check-label" for="inlineRadio2">여성</label>
				</div>
			</div>
			<br>
	
			<div class="form-check">
				<input class="form-check-input" type="checkbox" id="agree" name="agree">
				<label class="form-check-label" for="gridCheck1"> 이용약관에 동의합니다. </label>
			</div>
			<br>
			<button type="button" class="btn btn-primary" id="btn_join"	onclick="regist_go();">회원가입</button>
		</form>
		</div>
		<br>
		<br>
		<br>
	</div>
<script>
var checkedID = "";
function idCheck_go(){
	//alert("idCheck btn Click");
	var input_ID = $('input[name="user_id"]');
	
	if(!input_ID.val()){
		alert("아이디를 입력하세요");
		input_ID.focus();
		return;
	}
	
	$.ajax({
		url : "idCheck.do?id=" + input_ID.val().trim(),
		method : "get",
		success : function(result){
			if(result.toUpperCase() == "DUPLICATED"){
				alert("중복된 아이디 입니다.");
				$('input[name="user_id"]').focus();
			}else{
				alert("사용가능한 아이디 입니다.");
				checkedID = input_ID.val().trim();
				$('input[name="user_id"]').val(input_ID.val().trim());
			}
		},
		error : function(error){
			alert("시스템장애로 가입이 불가합니다.");
		}
	});
}

var checkedNick = "";
function nickCheck_go(){
	//alert("idCheck btn Click");
	var input_Nick = $('input[name="nickname"]');
	
	if(!input_Nick.val()){
		alert("닉네임을 입력하세요");
		input_Nick.focus();
		return;
	}
	
	$.ajax({
		url : "nickCheck.do?nickname=" + input_Nick.val().trim(),
		method : "get",
		success : function(result){
			if(result.toUpperCase() == "DUPLICATED"){
				alert("중복된 닉네임 입니다.");
				$('input[name="nickname"]').focus();
			}else{
				alert("사용가능한 닉네임 입니다.");
				checkedNick = input_Nick.val().trim();
				$('input[name="nickname"]').val(input_Nick.val().trim());
			}
		},
		error : function(error){
			alert("시스템장애로 가입이 불가합니다.");
		}
	});
}

function regist_go(){
	
	if(!$('input[name="user_id"]').val()){
		alert("아이디 입력은 필수입니다.");
		return;
	}
	
	if($('input[name="user_id"]').val() != checkedID){
		alert("아이디 중복체크를 해주세요.");
		return;
	}
	
	if($('input[name="nickname"]').val() != checkedNick){
		alert("닉네임 중복체크를 해주세요.");
		return;
	}
	
	if(!$('input[name="password"]').val()){
		alert("패스워드는 필수입니다.");
		return;
	}
	
	if(!$('input[name="name"]').val()){
		alert("이름은 필수입니다.");
		return;
	}
	
	var form = $('form[role="form"]');
	form.attr({
		"method":"post",
		"action":"regist.do"
	});
	form.submit();
}
</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>