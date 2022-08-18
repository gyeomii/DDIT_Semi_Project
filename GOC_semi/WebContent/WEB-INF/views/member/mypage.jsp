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
   <link href="<%=request.getContextPath()%>/resources/css/mypage.css" rel="stylesheet">
</head>
<body>
<body oncontextmenu='return false'>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<div class="container-fluid">
			<div class="icon" title="Home Page">
				<div class="icon" onclick="goMainPage('<%=request.getContextPath()%>')"
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
						aria-current="page" href="<%=request.getContextPath()%>/post/noticeBoard.do">공지사항</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarScrollingDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 게시판 </a>
						<ul class="dropdown-menu"
							aria-labelledby="navbarScrollingDropdown">
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/post/freeBoard.do">자유게시판</a></li>
							<li><a class="dropdown-item" href="#">너성보</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/post/gganboo.do">깐부게시판</a></li>
							<li><a class="dropdown-item" href="#">맛집게시판</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/sikdang/list.do">식당리스트</a></li>
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
					<div class="rounded-circle manPicture"  data-id="${loginUser.user_id }" style="margin-top : 15px; border : solid; width:100px; height:100px" ></div>
					<div class="col-sm-2" id="account_area">
						<p>${loginUser.nickname}</p>
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
			   	  <a href="<%=request.getContextPath()%>/member/mypage.do" class="list-group-item list-group-item-action active" aria-current="true">🙍‍♂‍profile</a>
				  <a href="<%=request.getContextPath()%>/member/editmemberinfo.do" class="list-group-item list-group-item-action">🔑회원정보수정</a>
				  <a href="<%=request.getContextPath()%>/member/mypost.do" class="list-group-item list-group-item-action">✒내가 쓴 글</a>
				  <a href="<%=request.getContextPath()%>/member/tendency.do" class="list-group-item list-group-item-action">🎭너의 성향이 보여</a>
				  <a href="<%=request.getContextPath()%>/member/qna.do" class="list-group-item list-group-item-action ">📢1 : 1 문의하기</a>
				  <a href="<%=request.getContextPath()%>/member/qnaList.do" class="list-group-item list-group-item-action" >📢문의 내용 확인</a>				
				</div>
			  </div>
			<div class="col-sm-7" style="margin-top: 0">
				<h1>Public Profile <small class="text-muted">회원정보</small></h1>
				<hr>
				<div class="form-group" >
					<label for="inputId">ID</label>
					<input type="text" class="form-control" id="inputId" value="${loginUser.user_id}" readonly="readonly"  />
				</div>

				<div class="form-group" >
					<label for="inputName">Name</label>
					<input type="text" class="form-control" id="inputName" value="${loginUser.name}" readonly="readonly"  />
				</div>

				<div class="form-group" >
					<label for="inputNickname">Nickname</label>
					<input type="text" class="form-control" id="inputNickname" value="${loginUser.nickname}" readonly="readonly"  />
				</div>

				<div class="form-group" >
					<label for="inputEmail">E-mail</label>
					<input type="text" class="form-control" id="inputEmail" value="${loginUser.email}" readonly="readonly"  />
				</div>
				<div class="form-group" >
					<label for="inputPhone">Phone</label>
					<input type="text" class="form-control" id="inputPhone" value="${loginUser.phone}" readonly="readonly"  />
				</div>

				<div class="form-group" >
					<label for="inputAddress">Address</label>
					<input type="text" class="form-control" value="${loginUser.address}" id="inputAddress" readonly="readonly" />
				</div>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
			</div>
				<!-- col-sm-6 -->
				<div class="col-sm-3 profile-picture">
					<div>
						<label>Profile Picture</label>
						<br/>
						<div>
							<div class="rounded-circle manPicture"  data-id="${loginUser.user_id }" style="border : solid; width:200px; height:200px; margin-left:50px"></div>
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
	window.onload=function(){
		MemberPictureThumb("<%=request.getContextPath()%>");
	}
</script>

<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>
<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
<script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>