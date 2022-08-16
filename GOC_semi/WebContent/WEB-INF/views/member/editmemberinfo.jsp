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
<title>Show Ur Tendency - MyPage | Profile</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <link href="<%=request.getContextPath()%>/resources/css/mypage.css" rel="stylesheet">
</head>

<body oncontextmenu='return false'>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<div class="container-fluid">
			<div class="icon" title="Home Page">
				<div class="icon" onclick="goMainPage('<%=request.getContextPath() %>')"
					style="background-image: url(<%=request.getContextPath()%>/resources/img/icon.png);"></div>
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarScroll"
				aria-controls="navbarScroll" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarScroll">
				<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
					style="-bs-scroll-height: 100px;">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">공지사항</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarScrollingDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 게시판 </a>
						<ul class="dropdown-menu"
							aria-labelledby="navbarScrollingDropdown">
							<li><a class="dropdown-item" href="#">자유게시판</a></li>
							<li><a class="dropdown-item" href="#">너성보</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">깐부게시판</a></li>
							<li><a class="dropdown-item" href="#">맛집게시판</a></li>
						</ul></li>
				</ul>
				<div class="d-flex">
					<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
						style="-bs-scroll-height: 100px;">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarScrollingDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: bold;"> ${loginUser.user_id} </a>
							<ul class="dropdown-menu"
								aria-labelledby="navbarScrollingDropdown">
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/member/mypage.do">마이페이지</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/common/logout.do">로그아웃</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>


	<div class="container">
		<div class="container-fluid" style="margin-left: 10px">
			<div class="row" style="display : flex; padding-bottom : 20px;">
					<img src="<%=request.getContextPath()%>/resources/img/kkk.jpg" class="rounded-circle thumb" style="margin-top : 15px; border : solid">
					<div class="col col-sm-2" id="account_area">
						<p>${sessionScope.loginUser.nickname}</p>
						<div>
							<p><small>Your personal account</small></p>
						</div>
					</div>
			</div>
		</div>
		<!-- container-fluid -->
		<div class="row">
			<div class="col-sm-2">
			  <div class="list-group">
		   	  	<a href="<%=request.getContextPath()%>/member/mypage.do" class="list-group-item list-group-item-action">🙍‍♂‍profile</a>
			  	<a href="<%=request.getContextPath()%>/member/editmemberinfo.do" class="list-group-item list-group-item-action active" aria-current="true">🔑회원정보수정</a>
			  	<a href="<%=request.getContextPath()%>/member/mypost.do" class="list-group-item list-group-item-action">✒내가 쓴 글</a>
			  	<a href="<%=request.getContextPath()%>/member/tendency.do" class="list-group-item list-group-item-action">🎭너의 성향이 보여</a>
			  	<a href="<%=request.getContextPath()%>/member/qna.do" class="list-group-item list-group-item-action ">📢1 : 1 문의하기</a>
			  </div>
			</div>
			  
			<div class="col-sm-7" style="margin-top: 0">
				<form role="form" class="form-horizontal" action="update" method="post">
				  <h1>Edit Profile <small class="text-muted">회원정보수정</small></h1>
				  <hr>
				  <div class="sm-3">
				    <label for="formGroupExampleInput" class="form-label">아이디</label>
				    <input type="text" class="form-control" id="inputId" placeholder="ex)stray2" name="user_id" value=${sessionScope.loginUser.user_id} readonly>
				  </div>
				  <div class="sm-3">
				    <label for="formGroupExampleInput" class="form-label">이  름</label>
				    <input type="text" class="form-control" id="inputName" placeholder="ex)이민호" name="name" value=${sessionScope.loginUser.name}>
				  </div>
				  <div class="sm-3">
				  	<div class="row">
					    <label for="formGroupExampleInput2" class="form-label">닉네임</label>
				  		<div class="col-sm-10">
						    <input type="text" class="form-control" id="inputNick" placeholder="ex)leeknow" name="nickname" value=${sessionScope.loginUser.nickname}>
				  		</div>
				  		<div class="col-sm-2">
				  			<button type="button" class="btn btn-primary" onclick="nickCheck_go();">중복확인</button>
				  		</div>
				  	</div>
				  </div>
				  
				  <label for="formGroupExampleInput2" class="form-label">이메일</label>
				  <div class="input-group sm-3">
				    <input type="text" class="form-control" placeholder="Username" id="inputEmail1" aria-label="Username" name="email">
				    <span class="input-group-text">@</span>
				    <input type="text" class="form-control" placeholder="naver.com" id="inputEmail2" aria-label="Server" name="email">
				  </div>   
				
				  <div class="row">
				    <label for="formGroupExampleInput2" class="form-label">전화번호</label>
				    <div class="col">
				      <input type="text" class="form-control" placeholder="010" aria-label="phone" id="tel1" name="phone">
				    </div>
				    <div class="col">
				      <input type="text" class="form-control" placeholder="1234" aria-label="first" id="tel2" name="phone">
				    </div>
				    <div class="col">
				      <input type="text" class="form-control" placeholder="5678" aria-label="second" id="tel3" name="phone">
				    </div>
				  </div>
				  <br/>
				  <div class="sm-3">
				    <label for="formGroupExampleInput" class="form-label">비밀번호</label>
				    <input type="text" class="form-control pw" id="inputPw" placeholder="Must be 8-20 characters long." name="password">
				  </div>
				  <div class="sm-3">
				    <label for="formGroupExampleInput" class="form-label">비밀번호 확인</label>
				    <input type="text" class="form-control pw" id="inputPwChk" >
				    <span id="alert-success" style="display: none; color: #00CD2E; font-weight: bold;">비밀번호가 일치합니다.</span>
	    			<span id="alert-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호가 일치하지 않습니다.</span>
				  </div> 
				  
				  <label for="formGroupExampleInput2" class="form-label">주소</label>   
				  <input type="text" class="form-control" id="formGroupExampleInput2" name="address" placeholder="주소를 입력하세요" value=${sessionScope.loginUser.address}>
				  <br/>
				  <Button type="button" class="btn btn-primary" onclick="update_go()">정보 수정</Button>
				  <br/>
				  <br/>
				  <br/>
				  <br/>
				  <br/>
				  <br/>
				  <br/>
				  <br/>
				</form>
		    </div>
					<!-- col-sm-6 -->
				<div class="col-sm-3 profile-picture">
					<div>
						<label>Profile Picture</label>
						<br/>
						<div>
							<img src="<%=request.getContextPath()%>/resources/img//kkk.jpg" width="200" height="200" class="rounded-circle" style="border : solid">
						</div>
						<br/>
						<div>
							<button type="button" class="btn btn-primary" onclick="upload_go()">사진 변경</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<!-- footer -->
	<footer class="footer-layout bg-dark" style="padding: 5px;">
		<div class="footer-fontcolor layout" style="text-align: center;">
			<div title="너의 성향이 보여" class="footer-surtimg"
				style="background-image: url(<%=request.getContextPath()%>/resources/img/surt_text.jpg);"></div>
			<div class="footer-fontcolor layout">
				<div id="footer-list">
					<ul class="footer-text">
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact</a></li>
						<li><a href="#">Support</a></li>
					</ul>
				</div>
				Copyright ⓒ SURT
			</div>
		</div>
	</footer>
<script>
var originNick = "${sessionScope.loginUser.nickname}";

$('.pw').focusout(function () {
	var pw = $("#inputPw").val();
	var pwChk = $("#inputPwChk").val();

    if ( pw != '' && pwChk == '' ) {
        null;
    } else if (pw != "" || pwChk != "") {
        if (pw == pwChk) {
        	$("#alert-success").css('display', 'inline-block');
            $("#alert-danger").css('display', 'none');
        } else {
        	$("#alert-success").css('display', 'none');
            $("#alert-danger").css('display', 'inline-block');
        }
    }
});
</script>
<script>
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
			if(result.toUpperCase() == "DUPLICATED" && input_Nick.val() != originNick){
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

function update_go(){
	if($('input[name="nickname"]').val() != originNick){
		if($('input[name="nickname"]').val() != checkedNick){
			alert("닉네임 중복체크를 해주세요.");
			return;
		}
	}
	var form = $('form[role="form"]');
	form.attr({
		"method":"post",
		"action":"update.do"
	});
	form.submit();
}
</script>
<script>
	function upload_go(){
		alert("서버문제로 현재 수정이 불가합니다.\n문의는 DM으로 부탁드려요.🙏");
	}
</script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>