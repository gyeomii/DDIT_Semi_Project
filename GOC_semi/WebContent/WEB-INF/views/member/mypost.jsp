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

<c:set var="postList" value="${myAllPostList.myPostList }" />

<title>Show Ur Tendency - MyPage | Profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="<%=request.getContextPath()%>/resources/css/mypage.css"
	rel="stylesheet">
</head>
<body oncontextmenu='return false'>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<div class="container-fluid">
			<div class="icon" title="Home Page">
				<div class="icon"
					onclick="goMainPage('<%=request.getContextPath()%>')"
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
						href="<%=request.getContextPath()%>/post/noticeBoard.do">공지사항</a></li>

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
							<li><a class="dropdown-item" href="#">맛집게시판</a></li>
							<li><a class="dropdown-item"
								href="<%=request.getContextPath()%>/sikdang/list.do">식당리스트</a></li>
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
		<div class="container-fluid" style="margin-left: 10px">
			<div class="row" style="display: flex; padding-bottom: 20px;">
				<div class="rounded-circle manPicture"  data-id="${loginUser.user_id }" style="margin-top : 15px; border : solid; width:100px; height:100px" ></div>
				<div class="col-sm-2" id="account_area">
					<p>${sessionScope.loginUser.nickname}</p>
					<div>
						<p>
							<small>${sessionScope.loginUser.email}</small>
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- container-fluid -->
		<div class="row">
			<div class="col-sm-2">
				<div class="list-group">
					<a href="<%=request.getContextPath()%>/member/mypage.do"
						class="list-group-item list-group-item-action">🙍‍♂‍profile</a> <a
						href="<%=request.getContextPath()%>/member/editmemberinfo.do"
						class="list-group-item list-group-item-action">🔑회원정보수정</a> <a
						href="<%=request.getContextPath()%>/member/mypost.do"
						class="list-group-item list-group-item-action active"
						aria-current="true">✒내가 쓴 글</a> <a
						href="<%=request.getContextPath()%>/member/tendency.do"
						class="list-group-item list-group-item-action">🎭너의 성향이 보여</a> <a
						href="<%=request.getContextPath()%>/member/qna.do"
						class="list-group-item list-group-item-action ">📢1 : 1 문의하기</a> <a
						href="<%=request.getContextPath()%>/member/qnaList.do"
						class="list-group-item list-group-item-action">📢문의 내용 확인</a>
				</div>
			</div>
			<div class="col-sm-10" style="margin-top: 0">
				<h1>
					내가 쓴 글 <small class="text-muted">my post</small>
				</h1>
				<hr>
				<div class="input-group mb-3">
					<label class="input-group-text" for="inputGroupSelect01">검색조건</label>
					<select class="form-select" id="inputGroupSelect01"
						name="searchType">
						<option selected></option>
						<option value="t">제목</option>
						<option value="w">작성자</option>
						<option value="a">제목 + 작성자</option>
					</select> <input type="text" class="form-control" aria-label="title"
						name="keyword" placeholder="검색내용">
					<button class="btn btn-outline-secondary" type="button"
						onclick="search_go()">검색</button>
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">게시판</th>
							<th scope="col">제목</th>
							<th scope="col">작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${postList }" var="posts" varStatus="status">
							<c:set var="category" value="${posts.category }" />
							<tr id="post">
								<th scope="row">${status.count }</th>
								<td>
									<c:choose>
										<c:when test="${category eq 1 }">공지사항</c:when>
										<c:when test="${category eq 2 }">자유게시판</c:when>
										<c:when test="${category eq 3 }">깐부게시판</c:when>
									</c:choose> 
								</td>
								<td><a>${posts.title }</a></td>
								<td><fmt:formatDate pattern="MM-dd" value="${posts.post_mod_date}"/></td>
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
				<c:if test="${empty postList}">
					<div style="text-align: center; padding: 60px 0;">게시글이 없습니다.</div>
				</c:if>
				<br /> <br /> <br /> <br /> <br />
			</div>
		</div>
	</div>
	<!-- footer -->
	<footer class="footer-layout bg-dark" style="padding: 5px;">
		<div class="footer-fontcolor" style="text-align: center;">
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
	//검색버튼
	function search_go(){
		var searchType = $('select[name="searchType"]').val();
		var keyword = $('input[name="keyword"]').val();
		alert("searchType : " + searchType + "\nkeyword : " + keyword);
		alert("서버문제로 현재 검색이 불가합니다.\n문의는 DM으로 부탁드려요.🙏");
	}
</script>

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