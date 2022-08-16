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

<title>Show Ur Tendency - Main</title>
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
	background-color: gray;
}

.background-white {
	background-color: white;
}

.starter-template {
	padding: 40px 15px;
	text-align: center;
}

.slide-img {
	padding-left: 10%;
	padding-right: 10%;
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
}

.container-fluid {
	width: 80%;
}

.line {
	
}

.borad-auther {
	width: 20%;
}

.borad-content {
	width: 70%;
}

.borad-number {
	width: 10%;
}

.populer-board {
	padding-left: 5%;
	padding-right: 5%;
}

.layout {
	margin-left: 10%;
	margin-right: 10%;
}

.col-sm-4 {
	display: flex;
	justify-content: center;
	align-items: center;
}

.img {
	width: 36vw;
	height: 20vw;
	background-position: center;
	background-size: cover;
}

.footer-layout {
	height: 8vw;
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
	margin: auto;
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

.footer-text li::after {
	padding-left: 10px;
	padding-right: 10px;
	content: "|"
}

.footer-text li:last-child::after {
	content: ""
}

.container {
	
}
</style>
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<div class="container-fluid">
			<div class="icon" title="Home Page">
				<div class="icon" onclick="goToMainPage()"
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
							data-bs-toggle="dropdown" aria-expanded="false"> ${sessionScope.loginUser.nickname} </a>
							<ul class="dropdown-menu"
								aria-labelledby="navbarScrollingDropdown">
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/member/mypage.do">마이페이지</a></li>
								<li><a class="dropdown-item" href="#">마이페이지</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/common/logout.do">로그아웃</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>


<!-- 	<div class='container'>
		<div class="row">
			<video width="40%" autoplay loop muted>
				<source src="resources/videos/Jukjae_FirstLove.mp4" type="video/mp4">
				처음
			</video>
		</div>
	</div>
 -->

	<div class="layout background-white">
		<div class="container">
			<div class="row">
				<div class="col-sm-8">
					<div class="slide-img">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-bs-ride="carousel">
							<div class="carousel-indicators">
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide 1"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="1" aria-label="Slide 2"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="2" aria-label="Slide 3"></button>
							</div>

							<div class="carousel-inner">
								<div class="carousel-item active">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/1.jpg)"></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/2.jpg)"></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/3.png)"></div>
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
				<div class="col-sm-4 line"
					style="border: solid 1px; border-color: lightgray; background-color: #F7F9FA">
					<div>회원 정보</div>
				</div>

			</div>
		</div>
		<div class="layout">
			<hr />
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-8 line populer-board">
					<div class="container">
						<table class="table">
							<thead>
								<tr>
									<th scope="col" colspan="3"><h2>공지사항</h2></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="i" begin="1" end="5">
									<tr>
										<th class="borad-number" scope="row">${i}</th>
										<td class="borad-auther">작성자</td>
										<td class="borad-content">게시글 제목</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-sm-4 line">
					<div>오늘의 생일</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-8 line populer-board">
					<div class="container">
						<table class="table">
							<thead>
								<tr>
									<th scope="col" colspan="3"><h2>인기 게시글</h2></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="i" begin="1" end="10">
									<tr>
										<th class="borad-number" scope="row">${i}</th>
										<td class="borad-auther">작성자</td>
										<td class="borad-content">게시글 제목</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-sm-4 line">
					<div>
						<canvas id="myChart"></canvas>
					</div>
				</div>
			</div>
		</div>

		<div class="layout">
			<hr>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-4 line">
					<div class="card border-primary mb-3" style="max-width: 18rem;">
						<div class="card-header">Header</div>
						<div class="card-body text-primary">
							<h5 class="card-title">Primary card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4 line">
					<div class="card border-secondary mb-3" style="max-width: 18rem;">
						<div class="card-header">Header</div>
						<div class="card-body text-secondary">
							<h5 class="card-title">Secondary card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4 line">
					<div class="card border-success mb-3" style="max-width: 18rem;">
						<div class="card-header">Header</div>
						<div class="card-body text-success">
							<h5 class="card-title">Success card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4 line">
					<div class="card border-primary mb-3" style="max-width: 18rem;">
						<div class="card-header">Header</div>
						<div class="card-body text-primary">
							<h5 class="card-title">Primary card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4 line">
					<div class="card border-secondary mb-3" style="max-width: 18rem;">
						<div class="card-header">Header</div>
						<div class="card-body text-secondary">
							<h5 class="card-title">Secondary card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4 line">
					<div class="card border-success mb-3" style="max-width: 18rem;">
						<div class="card-header">Header</div>
						<div class="card-body text-success">
							<h5 class="card-title">Success card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-4 line">
					<div class="card border-primary mb-3" style="max-width: 18rem;">
						<div class="card-header">Header</div>
						<div class="card-body text-primary">
							<h5 class="card-title">Primary card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4 line">
					<div class="card border-secondary mb-3" style="max-width: 18rem;">
						<div class="card-header">Header</div>
						<div class="card-body text-secondary">
							<h5 class="card-title">Secondary card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
				<div class="col-sm-4 line">
					<div class="card border-success mb-3" style="max-width: 18rem;">
						<div class="card-header">Header</div>
						<div class="card-body text-success">
							<h5 class="card-title">Success card title</h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="container">
		<div class="starter-template">
			<h1>Bootstrap starter template</h1>
			<p class="lead">Lorem ipsum dolor sit amet, consectetur
				adipiscing elit, sed do eiusmod tempor incididunt ut labore et
				dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
				exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit
				esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
				cupidatat non proident, sunt in culpa qui officia deserunt mollit
				anim id est laborum.</p>
		</div>

	</div>


	<footer class="footer-layout bg-dark">
		<div class="footer-fontcolor layout">
			<div title="너의 성향이 보여" class="footer-surtimg"
				style="background-image: url(resources/img/surt_text.jpg);"></div>
			<div class="footer-text">
				<ul class="footer-text">
					<li>About Us</li>
					<li>Contact</li>
					<li>Support</li>
				</ul>
			</div>
		</div>
		<br>
		<div class="footer-fontcolor layout">
			<p>Copyright ⓒ SURT</p>
		</div>
	</footer>


	<!-- /.container -->
	<script>
		const DATA_COUNT = 16;
		const labels = [ 'ENFJ', 'ENFP', 'ENTJ', 'ENTP', 'ESFJ', 'ESFP',
				'ESTJ', 'ESTP', 'INFJ', 'INFP', 'INTJ', 'INTP', 'ISFJ', 'ISFP',
				'ISTJ', 'ISTP', ];

		const data = {
			labels : labels,
			datasets : [ {
				label : 'My First dataset',
				backgroundColor : [ '#52CEB0', '#FFA348', '#3462A3', '#DD5843',
						'#FFCFCF', '#E0707E', '#587A4B', '#FF977B', '#C0D8FF',
						'#277A64', '#BAB0FF', '#7FC2F4', '#FFCC71', '#A6BF6F',
						'#DDDDDD', '#2A718C' ],
				borderColor : 'black',
				data : [ 10, 20, 20, 10, 10, 20, 30, 40, 10, 20, 10, 10, 10,
						30, 40, 50, 60, 30, 10, 20, 30 ],
			} ]
		};

		const config = {
			type : 'doughnut',
			data : data,
			options : {
				responsive : true,
				plugins : {
					legend : {
						position : false,
					},
					title : {
						display : true,
						text : '회원 MBTI 통계'
					}
				}
			},
		};
		const myChart = new Chart(document.getElementById('myChart'), config);
	</script>
	<script>
		function goToMainPage() {
			location.href = "main.do";
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