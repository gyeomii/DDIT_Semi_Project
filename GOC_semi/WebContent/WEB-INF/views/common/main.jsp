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

<link href="<%=request.getContextPath()%>/resources/css/main.css" rel="stylesheet">
</head>

<body oncontextmenu='return false'>
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
	<div class="layout background-white">
		<br>
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
										style="background-image: url(<%=request.getContextPath()%>/resources/img/1.jpg)" onclick=""></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/2.jpg)" onclick=""></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="background-image: url(<%=request.getContextPath()%>/resources/img/3.png)" onclick=""></div>
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

				<div class="col-sm-4"
					style="border: solid 1px; border-color: lightgray; background-color: #F7F9FA">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="row">
									<div class="col-sm-3">
										<div class="manPicture" data-id="${loginUser.user_id }"
											style="box-shadow: 0 0 16px rgb(221, 221, 221); border: 2px solid #fff; display: block; width: 4vw; height: 4vw; margin: 0 auto; border-radius: 50%;">
										</div>
									</div>
									<div class="col-sm-9">
										<div class="row">
											<div class="col-sm-4"
												style="margin-top: 1%; font-weight: bold; font-size: 15px; cursor: pointer;"
												onclick="goToMyPage()">${loginUser.user_id }</div>
											<div class="col-sm-8">
												<button type="button" id="logout" onclick="location.href='<%=request.getContextPath()%>/common/logout.do'" style="font-size:10px;">로그아웃</button>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-4" style="margin-left: 3%; margin-top: 1%;font-size: 12px;">${loginUser.email }</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layout">
			<hr />
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-8 populer-board">
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
				<div class="col-sm-4">
					<div>오늘의 생일</div>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-8 populer-board">
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
				<div class="col-sm-4 ">
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
			<div class="main">
				<c:forEach begin="1" end="8">
					<div class="card">
						<div class="board">
							<h3>
								<a href="#">게시판명</a>
							</h3>
							<c:forEach var="i" begin="1" end="5">
								<a class="list" href="#">
									<time>${i } 분 전</time>
									<p>test${i }</p>
									<hr>
								</a>
							</c:forEach>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>





	<!-- MBIT 통계 스트립트 -->
	<script>
		const DATA_COUNT = 16;
		const labels = [ 'ENFJ', 'ENFP', 'ENTJ', 'ENTP',
						 'ESFJ', 'ESFP', 'ESTJ', 'ESTP',
						 'INFJ', 'INFP', 'INTJ', 'INTP',
						 'ISFJ', 'ISFP', 'ISTJ', 'ISTP', ];

		const data = {
			labels : labels,
			datasets : [ {
				label : 'My First dataset',

				backgroundColor : [ '#52CEB0', '#FFA348', '#3462A3', '#DD5843',
						'#FFCFCF', '#E0707E', '#587A4B', '#FF977B', '#C0D8FF',
						'#277A64', '#BAB0FF', '#7FC2F4', '#FFCC71', '#A6BF6F',
						'#DDDDDD', '#2A718C' ],
				borderColor : 'black',

// 				data : [${mbti.enfj}, ${mbti.enfp}, ${mbti.entj}, ${mbti.entp}, 
// 						${mbti.esfj}, ${mbti.esfp}, ${mbti.estj}, ${mbti.estp},
// 						${mbti.infj}, ${mbti.infp}, ${mbti.intj}, ${mbti.intp},
// 						${mbti.isfj}, ${mbti.isfp}, ${mbti.istj}, ${mbti.istp},
// 					   ],
				
				data : [ 10, 20, 20, 10, 10, 20, 30, 40, 10, 20, 10, 10, 10,
						30, 40, 50 ],
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