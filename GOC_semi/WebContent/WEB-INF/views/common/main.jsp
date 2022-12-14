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
</head>

<body oncontextmenu='return false'>
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
						href="<%=request.getContextPath()%>/post/noticeBoard.do"">????????????</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarScrollingDropdown" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> ????????? </a>
						<ul class="dropdown-menu"
							aria-labelledby="navbarScrollingDropdown">
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/post/freeBoard.do">???????????????</a></li>
							<li><a class="dropdown-item" href="#">?????????</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/post/gganboo.do">???????????????</a></li>
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/sikdang/list.do">???????????????</a></li>
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
									href="<%=request.getContextPath()%>/member/mypage.do">???????????????</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item"
									href="<%=request.getContextPath()%>/common/logout.do">????????????</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<div class="layout background-white"
		style="min-width: 750px; height: 100%;">
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
										style="cursor: pointer; background-image: url(<%=request.getContextPath()%>/resources/img/main_banner_1.jpg)"
										onclick="location.href='<%=request.getContextPath()%>/member/tendency.do'"></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="cursor: pointer; background-image: url(<%=request.getContextPath()%>/resources/img/main_banner_2.jpg)"
										onclick="location.href='<%=request.getContextPath()%>/member/tendency.do'"></div>
								</div>
								<div class="carousel-item">
									<div class="img"
										style="cursor: pointer; background-image: url(<%=request.getContextPath()%>/resources/img/main_banner_3.png)"
										onclick="location.href='<%=request.getContextPath()%>/member/tendency.do'"></div>
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
					<div class="container" style="padding: 0px">
						<div class="row" style="margin: 5% 0% 1% 0%;">
							<div class="col-sm-12">
								<div class="row">
									<div class="col-sm-3" style="padding: 0px;">
										<div class="manPicture" data-id="${loginUser.user_id }"
											style="box-shadow: 0 0 16px rgb(221, 221, 221); border: 2px solid #fff; display: block; width: 4vw; height: 4vw; min-width: 50px; min-height: 50px; margin: 0 auto; border-radius: 50%;">
										</div>
									</div>
									<div class="col-sm-9" style="min-width: 210px;">
										<div class="row">
											<div title="?????????" class="col-sm-6"
												style="margin-top: 1%; font-weight: bold; font-size: 15px; cursor: pointer; justify-content: left;"
												onclick="location.href='<%=request.getContextPath()%>/member/mypage.do'">${loginUser.nickname }</div>
											<div class="col-sm-6" style="padding-right: 10px;">
												<button type="button" id="logout"
													onclick="location.href='<%=request.getContextPath()%>/common/logout.do'">????????????</button>
											</div>
										</div>
										<div class="row">
											<div title="?????????" class="col-sm-12"
												style="margin-top: 1%; font-size: 12px;">${loginUser.email }</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row"
							style="position: relative; height: 180px; margin-top: 5px;">
							<div class="col-sm-12"
								style="margin-left: auto; bottom: 0; border: 1px solid #E4E8EB; height: 38px; padding: 0px;">
								<div style="top: 0; width: 100%; height: 100%;; left: 0;"
									class="btn-group" role="group"
									aria-label="Basic outlined example">
									<button type="button" class="mylist">?????????</button>
									<button type="button" class="mylist">?????????</button>
									<button type="button" class="mylist">??????</button>
									<button type="button" class="mylist">??????</button>
								</div>
							</div>
							<div
								style="padding: 0px; background-color: #ebebeb; position: absolute; bottom: 0; height: 80%; width: 100%; left: 0;">
								<div class="main" style="height: 100%;">
									<div class="card" style="height: 100%;">
										<div class="board">
											<c:if test="${empty myPostList}">
												<div style="text-align: center; padding: 60px 0;">????????????
													????????????.</div>
											</c:if>
											<c:forEach items="${myPostList }" var="posts" begin="0"
												end="3">
												<a class="list"
													href="<%=request.getContextPath()%>/post/postContent.do?id=${posts.post_id }">
													<time>
														<fmt:formatDate pattern="MM-dd"
															value="${posts.post_mod_date}" />
													</time>
													<p>${posts.title}</p>
													<hr>
												</a>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="middleHrDiv">
			<hr class="middleHr" />
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-8 populer-board">
					<div class="container">
						<table class="table">
							<thead>
								<tr>
									<th scope="col" colspan="3"><h2>????????????</h2></th>
								</tr>
							</thead>
							<thead>
								<tr>
									<th class="borad-number" scope="row">??????</th>
									<td class="borad-auther">?????????</td>
									<td class="borad-title">??????</td>
									<td class="borad-time">??????</td>
									<td class="borad-hit">??????</td>
									<td class="borad-liked">??????</td>
								</tr>
							</thead>
							<tbody>
								<!--???????????? ???????????? ?????? ?????? -->
								<c:forEach items="${noticePostList }" var="noticePosts"
									varStatus="status" begin="0" end="4">
									<tr>
										<th class="borad-number" scope="row">${status.count}</th>
										<td class="borad-auther">${noticePosts.nickname }</td>
										<td class="borad-title"><a
											href="<%=request.getContextPath()%>/post/postContent.do?id=${noticePosts.post_id }">${noticePosts.title}</a></td>
										<td class="borad-time"><fmt:formatDate pattern="MM-dd"
												value="${noticePosts.post_mod_date}" /></td>
										<td class="borad-hit">${noticePosts.hit_count }</td>
										<td class="borad-liked">${noticePosts.liked }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-sm-4 weather" style="">
					<iframe width="100%" height="100%"
						src="https://forecast.io/embed/#lat=36.325029&lon=127.408951&name=?????? ?????? ?????????&color=#ffc261&font=arial&units=si"
						frameborder="0"></iframe>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-8 populer-board">
					<div class="container">
						<table class="table">
							<thead>
								<tr>
									<th scope="col" colspan="3"><h2>?????? ?????????</h2></th>
								</tr>
							</thead>
							<thead>
								<tr>
									<th class="borad-number" scope="row">??????</th>
									<td class="borad-auther">?????????</td>
									<td class="borad-title">??????</td>
									<td class="borad-time">?????????</td>
									<td class="borad-hit">??????</td>
									<td class="borad-liked">??????</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${postList }" var="posts" varStatus="status"
									begin="0" end="9">
									<tr>
										<th class="borad-number" scope="row">${status.count}</th>
										<td class="borad-auther">${posts.nickname }</td>
										<td class="borad-title"><a
											href="<%=request.getContextPath()%>/post/postContent.do?id=${posts.post_id }">${posts.title}</a></td>
										<td class="borad-time sub"><fmt:formatDate
												pattern="MM-dd" value="${posts.post_mod_date}" /></td>
										<td class="borad-hit">${posts.hit_count }</td>
										<td class="borad-liked">${posts.liked }</td>
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
			<div class="main" style="min-width: 715px;">
				<div class="card">
					<div class="board">
						<h3>
							<a href="<%=request.getContextPath()%>/post/noticeBoard.do"">????????????
							</a>
						</h3>
						<c:forEach items="${noticePostList }" var="noticePosts" begin="0"
							end="4">
							<a class="list"
								href="<%=request.getContextPath()%>/post/postContent.do?id=${noticePosts.post_id }">
								<time>
									<fmt:formatDate pattern="MM-dd"
										value="${noticePosts.post_mod_date}" />
								</time>
								<p>${noticePosts.title}</p>
								<hr>
							</a>
						</c:forEach>
					</div>
				</div>
				<div class="card">
					<div class="board">
						<h3>
							<a href="<%=request.getContextPath()%>/post/freeBoard.do"">???????????????
							</a>
						</h3>
						<c:forEach items="${freePostList }" var="freePosts" begin="0"
							end="4">
							<a class="list"
								href="<%=request.getContextPath()%>/post/postContent.do?id=${freePosts.post_id }">
								<time>
									<fmt:formatDate pattern="MM-dd"
										value="${freePosts.post_mod_date}" />
								</time>
								<p>${freePosts.title}</p>
								<hr>
							</a>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>



	<script>
function timeChange(e){
	        //??????????????? ?????????
	        var now = new Date(); 
	        console.log(now);
	        
	        //?????? ?????? 
	        var writeDay = new Date(dd);
	     	//?????? ??????????????? ????????? ??????????????? ????????? ?????? ??????..
	        
	        
	     	var minus;
	        //?????? ????????? ??????????????? ?????? ?????? 
	        if(now.getFullYear() > writeDay.getFullYear()){
	            minus= now.getFullYear()-writeDay.getFullYear();
	            //????????? ????????? ????????? ??????
	            document.querySelectorAll(".sub").innerHTML = minus+"??? ???";
	            console.log(minus+"??? ???");
	        }else if(now.getMonth() > writeDay.getMonth()){
	        //????????? ?????? ?????? ?????? ???????????? ??????
	            minus= now.getMonth()-writeDay.getMonth();
	            document.getElementsByClassName("sub").innerHTML = minus+"??? ???";
	            console.log(minus+"??? ???");
	        }else if(now.getDate() > writeDay.getDate()){
	       	//?????? ?????? ?????? ?????? ??????
	            minus= now.getDate()-writeDay.getDate();
	            document.getElementsByClassName("sub").innerHTML = minus+"??? ???";
	            console.log(minus+"??? ???");
	        }else if(now.getDate() == writeDay.getDate()){
	        //????????? ???????????? 
	            var nowTime = now.getTime();
	            var writeTime = writeDay.getTime();
	            if(nowTime>writeTime){
	            //????????? ??????
	                sec =parseInt(nowTime - writeTime) / 1000;
	                day  = parseInt(sec/60/60/24);
	                sec = (sec - (day * 60 * 60 * 24));
	                hour = parseInt(sec/60/60);
	                sec = (sec - (hour*60*60));
	                min = parseInt(sec/60);
	                sec = parseInt(sec-(min*60));
	                if(hour>0){
	                //??????????????????
	                    document.getElementsByClassName("sub").innerHTML = hour+"?????? ???";
	                    console.log(hour+"?????? ???");
	                }else if(min>0){
	                //???????????????
	                    document.getElementsByClassName("sub").innerHTML = min+"??? ???";
	                    console.log(min+"??? ???");
	                }else if(sec>0){
	                //??????????????? ??????
	                    document.getElementsByClassName("sub").innerHTML = sec+"??? ???";
	                    console.log(sec+"??? ???");
	                }
	            }
	        }}
	</script>

	<!-- MBIT ?????? ???????????? -->
	<script>
		const DATA_COUNT = 16;
		const labels = [ 'ENFJ', 'ENFP', 'ENTJ', 'ENTP',
						 'ESFJ', 'ESFP', 'ESTJ', 'ESTP',
						 'INFJ', 'INFP', 'INTJ', 'INTP',
						 'ISFJ', 'ISFP', 'ISTJ', 'ISTP',];

		const data = {
			labels : labels,
			datasets : [ {
				label : 'My First dataset',

				backgroundColor : [ '#52CEB0', '#FFA348', '#3462A3', '#DD5843',
						'#FFCFCF', '#E0707E', '#587A4B', '#FF977B', '#C0D8FF',
						'#277A64', '#BAB0FF', '#7FC2F4', '#FFCC71', '#A6BF6F',
						'#DDDDDD', '#2A718C'],
				borderColor : 'black',

				data : [${mbti.ENFJ}, ${mbti.ENFP}, ${mbti.ENTJ}, ${mbti.ENTP}, 
						${mbti.ESFJ}, ${mbti.ESFP}, ${mbti.ESTJ}, ${mbti.ESTP},
						${mbti.INFJ}, ${mbti.INFP}, ${mbti.INTJ}, ${mbti.INTP},
						${mbti.ISFJ}, ${mbti.ISFP}, ${mbti.ISTJ}, ${mbti.ISTP},
					   ],
				
			} ]
		};

		const config = {
			type : 'doughnut',
			data : data,
			options : {
				maintainAspectRatio: false,
				plugins : {
					legend : {
						position : false,
					},
					title : {
						display : true,
						text : '?????? MBTI ??????'
					}
				}
			},
		};
		const myChart = new Chart(document.getElementById('myChart'), config);
	</script>

	<!-- footer -->
	<footer class="footer-layout bg-dark"
		style="padding: 5px; min-width: 888px;">
		<div class="footer-fontcolor layout" style="text-align: center;">
			<div title="?????? ????????? ??????" class="footer-surtimg"
				style="background-image: url(<%=request.getContextPath()%>/resources/img/surt_text.jpg);"></div>
			<div class="footer-fontcolor layout">
				<div id="footer-list">
					<ul class="footer-text">
						<li><a href="<%=request.getContextPath()%>/common/aboutUs.do">About
								Us</a></li>
						<li><a href="<%=request.getContextPath()%>/common/aboutUs.do">Contact</a></li>
						<li><a href="<%=request.getContextPath()%>/common/aboutUs.do">Support</a></li>
					</ul>
				</div>
				Copyright ??? SURT
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