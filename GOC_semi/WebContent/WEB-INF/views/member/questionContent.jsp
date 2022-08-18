<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Show Ur Tendency - Main</title>
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
	width: 4vw;
	height: 4vw;
	margin-right: 20px;
	background-position: center;
	background-size: cover;
	cursor: pointer;
}
/* 메인 컨테이너 좌우정렬 */
.container-fluid { 
	width: 80%;
}
/* 게시판 배너 */
.free_borad_main_title{
	border: solid 1px black;
	text-align: center;
	height: 150px;
	
}

/* 글쓰기 보드 */
#writer_board{
	border: solid 1px black;
	border-radius : 1em;
	padding: 30px;
	padding-left: 80px;
	
}

/* 글쓰기 */
#writer_board_writer{
	font-weight : 800;
	font-size : 20px;
	text-align: center;
	padding: 10px;
	border: solid 2px black;
	border-radius : 1em;
	margin-bottom: 10px;
}

/* 글쓰기 제목-제목 */
#writer_board_title_1{
	border: solid 2px black;
	margin-bottom: 10px;
	margin-left : 15px;
	text-align: center;
	font-size : 15px;
	font-weight : 600;

}
/* 글쓰기 제목 - 입력 */
.title_input{
	width: 100%;
	
}

#writer_board_post_1{
	margin-bottom: 10px;
}

#writer_board_post_board{
	height: 500px;
	
}



/* 글쓰기 내용 - 내용 */
#writer_board_post{
	border: solid 2px black;
	margin-bottom: 10px;
	margin-left : 15px;
	text-align: center;
	font-size : 15px;
	font-weight : 600;
	
}
/* 글쓰기 내용 - 입력 */
.post_input{
	width: 100%;
	height: 100%;
	
}

/* 글쓰기 파일 - 파일 */
#writer_board_file{
	border: solid 2px black;
	margin-bottom: 10px;
	margin-left : 15px;
	text-align: center;
	font-size : 15px;
	font-weight : 600;
}

/* 사이드 게시판 */
.side_board_pannel{
	
	border: 3px solid black;
	border-radius : 1em;
	padding: 10px;
	background-color: #F2EDD5;
}

/* 사이드 메뉴 게시판이름*/
.side_board_pannel_bigName{
	font-size: 20px;
	font-weight: 800;
}

/* 사이드 메뉴 제목*/
.title_herf_path_cut{
	
	text-decoration: none;
	font-weight: 400;
	font-size : 1em;
	color: black;
	text-align : left; 
	overflow:hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
    -webkit-line-clamp: 1 ;
    -webkit-box-orient: vertical;
    width: auto;
}
/* 사이드 메뉴 글 게시판 위치*/
/* .side_board_pannel_boardName{
	
	border-radius : 1em;
	color: white;
	background-color : #4988BF;
	font-size: 1em;
	position : absolute;
	font-weight: 600;
	width: auto; */
	
}

.col-sm-2#numbering{
	position: absolute;
}

.footer-fontcolor {
	color: white;
}

.footer-surtimg {
	width: 19vw;
	height: 6vw;
	background-position: center;
	background-size: cover;
	margin: auto;
}

.footer-text {
	display: inline-block;
}

.footer-fontcolor>ul>li {
	color: white;
	list-style: none;
	padding-left: 0px;
}

ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

li {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	border: 0;
	float: left;
	text-align: center;
}

ul.footer-text > li > a {
	text-decoration: none;
	color: white;
}

.footer-text li::after {
	padding-left: 10px;
	padding-right: 10px;
	content: "|"
}

.footer-text li:last-child::after {
	content: ""
}
</style>
</head>
<body>
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
		<div class="starter-template">
			<div class="free_borad_main_title">
	 			<div class="free_borad_main_title_border">
					<h4>문의 사항</h4>
				</div>
			</div>
		</div>
		<div class="row" >
			<div class="col-sm-9" id="writer_board">	
				<div class="row" >
					<!-- 메인 게시판 -->
					<div>
						<div class="col-sm-11" id="writer_board_writer"> 글쓰기</div>
					</div>
					<div class="row" >
						<div class="col-sm-2" id="writer_board_title_1"> 제목</div>
						<div class="col-sm-9" >
							<div>${question.question_title }</div>
						</div>
					</div>
					<div class="row" >
						<div class="col-sm-2" id="writer_board_title_1"> 문의 유형</div>
						<div class="col-sm-9" >
							<div>${question.question_type }</div>
						</div>
					</div>
					<div class="row" >
						<div class="col-sm-2" id="writer_board_title_1"> 등록 날짜</div>
						<div class="col-sm-9" >
							<div><fmt:formatDate value="${question.question_regdate }" pattern="yyyy/MM/dd" /></div>
						</div>
					</div>
					<div class="row" id="writer_board_post_board">
						<div class="col-sm-2" id="writer_board_post"> 내용</div>
						<div class="col-sm-9" id="writer_board_post_1">
							<div>${question.question_content }</div>
						</div>
					</div>					
				</div>	
			</div>
			<!-- 사이드 구분 -->
			<div class="col-sm-3">			
				<div class="side_board_pannel">
					<span class="side_board_pannel_bigName">공지사항</span>
					<hr>
					<div class="side_board_pannel_list" >
							<div class="row">
								
								<div> 
									<span class="side_board_pannel_post">
										<a class="title_herf_path_cut" href="#">※공지사항입니다. 부디읽어주시길 바랍니다. 다같이 행복해</a></span>
								</div>
							</div>
					</div>
				</div>
				<br/>
				<div class="side_board_pannel">
					<span class="side_board_pannel_bigName">추천글</span>
					<hr>
					<div class="side_board_pannel_list" >
							<div class="row">
								<div>
									<span class="side_board_pannel_post">
										<a class="title_herf_path_cut" href="#">★점심추천 가게위치들 모음집</a></span>
								</div>
								
							</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
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
		
	<script src="<%=request.getContextPath()%>/resources/js/post.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>