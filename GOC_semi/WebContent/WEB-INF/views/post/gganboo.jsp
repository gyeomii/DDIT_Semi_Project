<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="cri" value="${dataMap.pageMaker.cri }" />
<c:set var="postList" value="${dataMap.postList }" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.container-fluid {
	width: 80%;
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
<title>Show Ur Tendency - Main</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link href="<%=request.getContextPath()%>/resources/css/gganboo.css" rel="stylesheet" type="text/css" />
<style type="text/css">

</style>
</head>
<body>
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
						aria-current="page" href="<%=request.getContextPath()%>/post/noticeBoard.do"">공지사항</a></li>

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
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/sikdang/list.do">맛집게시판</a></li>
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
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/member/mypage.do">마이페이지</a></li>
								<li><hr class="dropdown-divider"></li>
								<li><a class="dropdown-item"
									href="<%=request.getContextPath()%>/common/logout.do">로그아웃</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<br />
	<div class="container">
		<div class="container-fluid">
			<div class="row">



				<div class="card card-body">
					<div class="d-flex mb-3">
						<!-- Avatar -->
						<div class="avatar avatar-xs me-2">
							<a href="#"> <img class="avatar-img rounded-circle"
								src="assets/images/avatar/03.jpg" alt="">
							</a>
						</div>
						<!-- Post input -->
						<form class="w-100" method="post" action="postinsert.do">
						
							<input class="form-control pe-4 border-0" rows="2"
								data-autoresize="" placeholder="오늘 뭐먹지~" id="content" required="required"></input>
								<button style="display: none;" type="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
						</form>
					</div>
					<!-- Share feed toolbar START -->

				</div>




			</div>
			<br />
			<c:forEach items="${postList }" var="post">
				<div class="row">
					<!-- 		///// -->
					<!--begin::Stats Widget 7-->
					<div
						class="card card-custom card-stretch card-stretch-half gutter-b">
						<!--begin::Body-->
						<div class="card-body d-flex flex-column">
							<!--begin::Info-->
							<div class="d-flex align-items-center">
								<span
									class="symbol symbol-circle symbol-light-primary symbol-60 mr-5">
									<span class="symbol-label d-flex flex-column"> <span
										class="font-weight-bolder font-size-h3">
										<fmt:formatDate value="${post.post_add_date }" pattern="dd" /></span> 
										<span class="font-weight-bold font-size-sm text-uppercase">
										<fmt:formatDate value="${post.post_add_date }" pattern="MMM" /></span>
								</span>
								</span>
								<div class="d-flex flex-column">
									<a href="#"
										class="text-dark-75 text-hover-primary font-weight-bolder font-size-h5">${post.nickname }</a>
								</div>
							</div>
							<!--end::Info-->
							<!--begin::Text-->
							<p class="pt-7 mb-1">${post.post_content }</p>
							<!--end::Text-->
						</div>
						<!--end::Body-->
						<!--begin::Footer-->
						<div
							class="card-footer d-flex align-items-center justify-content-between flex-wrap py-4">
							<div class="symbol-group symbol-hover py-1 mr-2">

								<div class="symbol symbol-35 symbol-circle">
									<img alt="Pic" src="../resources/img/pigNose_resized.png">
								</div>
								<div class="symbol symbol-35 symbol-circle">
									<img alt="Pic" src="../resources/img/pigNose_resized.png">
								</div>


							</div>
							<a href="#"
								class="btn btn-sm btn-primary font-weight-bolder px-6">나도</a>
						</div>
						<!--end::Footer-->
					</div>
					<!--end::Stats Widget 7-->

				</div>
			</c:forEach>

			<div class="row">
				<nav aria-label="Navigation">
					<ul class="pagination justify-content-center m-0">
						<li class="page-item"><a class="page-link"
							href="javascript:list_go(1);"> <i
								class="fas fa-angle-double-left"></i>
						</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:list_go('${pageMaker.prev ? pageMaker.startPage-1 : cri.page}');">
								<i class="fas fa-angle-left"></i>
						</a></li>

						<c:forEach var="pageNum" begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }">
							<li class="page-item ${cri.page == pageNum?'active':''}"><a
								class="page-link" href="javascript:list_go('${pageNum}');">${pageNum }</a>
							</li>
						</c:forEach>
						<li class="page-item"><a class="page-link"
							href="javascript:list_go('${pageMaker.next ? pageMaker.endPage+1 :cri.page}');">
								<i class="fas fa-angle-right"></i>
						</a></li>
						<li class="page-item"><a class="page-link"
							href="javascript:list_go('${pageMaker.realEndPage}');"> <i
								class="fas fa-angle-double-right"></i>
						</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/resources/js/post.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>