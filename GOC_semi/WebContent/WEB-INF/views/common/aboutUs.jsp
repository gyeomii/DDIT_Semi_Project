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

<c:set var="postList" value="${postAllPopularList.postList }" />
<c:set var="noticePostList" value="${postAllNoticeList.noticeList }" />
<c:set var="freePostList" value="${postAllFreeList.freeList }" />
<c:set var="myPostList" value="${myAllPostList.myPostList }" />

<title>Show Ur Tendency - Main</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<link href="<%=request.getContextPath()%>/resources/css/main.css"
	rel="stylesheet">

<style type="text/css">
.img {
	width: 400px;
	height: 400px;
}
</style>
</head>

<body oncontextmenu='return false' style="background-color: #4A4F5A">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top"
		style="min-width: 888px;">
		<div class="container-fluid">
			<div class="icon" title="Home Page">
				<div class="icon"
					onclick="location.href='<%=request.getContextPath()%>/index.jsp'"
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
						aria-current="page"
						href="<%=request.getContextPath()%>/post/noticeBoard.do"">공지사항</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarScrollingDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 게시판 </a>
						<ul class="dropdown-menu"
							aria-labelledby="navbarScrollingDropdown">
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/post/freeBoard.do">자유게시판</a></li>
							<li><a class="dropdown-item" href="#">너성보</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/post/gganboo.do">깐부게시판</a></li>
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/sikdang/list.do">맛집게시판</a></li>
						</ul></li>
				</ul>
				<div class="d-flex">
					<ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
						style="-bs-scroll-height: 100px;">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							id="navbarScrollingDropdown" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="font-weight: bold;"> ${loginUser.user_id} </a>
							<ul class="dropdown-menu"
								aria-labelledby="navbarScrollingDropdown">
								<li><a class="dropdown-item"
									href="<%=request.getContextPath()%>/member/mypage.do">마이페이지</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item"
									href="<%=request.getContextPath()%>/common/logout.do">로그아웃</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-sm-4 team-img">
				<div class="img"
					style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_성겸.png)"
					onclick=""></div>
			</div>
			<div class="col-sm-4 team-img">
				<div class="img"
					style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_건영.png)"
					onclick=""></div>
			</div>
			<div class="col-sm-4 team-img">
				<div class="img"
					style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_미정.png)"
					onclick=""></div>
			</div>
		</div>
		<hr style="background-color: white; height: 2px;">
		<div class="row">
			<div class="col-sm-4 team-img">
				<div class="img"
					style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_은정.jpg)"
					onclick=""></div>
			</div>
			<div class="col-sm-4 team-img">
				<div class="img"
					style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_정현.png)"
					onclick=""></div>
			</div>
			<div class="col-sm-4 team-img">
				<div class="img"
					style="background-image: url(<%=request.getContextPath()%>/resources/img/loginForm/loginForm_face_재린.png)"
					onclick=""></div>
			</div>
		</div>
	</div>


	<!-- footer -->
	<footer class="footer-layout bg-dark"
		style="padding: 5px; min-width: 888px;">
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