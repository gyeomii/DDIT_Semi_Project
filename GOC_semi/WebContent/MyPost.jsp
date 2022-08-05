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
.thumb{
 width : 80px;
 height : 80px 
}
a{
text-decoration: none;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
         <div class="icon">
            <a class="navbar-brand" href="#"><img class="icon"
               src="resources/img/icon.png"></a>
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
                     data-bs-toggle="dropdown" aria-expanded="false"> 회원닉네임 </a>
                     <ul class="dropdown-menu"
                        aria-labelledby="navbarScrollingDropdown">
                        <li><a class="dropdown-item" href="#">마이페이지</a></li>
                        <li><a class="dropdown-item" href="#">마이페이지</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">로그아웃</a></li>
                     </ul></li>
               </ul>
            </div>
         </div>
      </div>
   </nav>


	<div class="container">
		<div class="container-fluid" style="margin-left: 10px">
			<div class="row" style="display : flex; padding-bottom : 20px;">
					<img src="image.png" class="rounded-circle thumb" style="margin-top : 15px; border : solid">
					<div class="col col-sm-2" style="margin-top : 15px;">
						<p>Gyeomii</p>
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
			   	  <a href="MyPage.jsp" class="list-group-item list-group-item-action ">🙍‍♂‍profile</a>
				  <a href="EditMemberInfo.jsp" class="list-group-item list-group-item-action">🔑회원정보수정</a>
				  <a href="MyPost.jsp" class="list-group-item list-group-item-action active" aria-current="true">✒내가 쓴 글</a>
				  <a href="#" class="list-group-item list-group-item-action">🎭너의 성향이 보여</a>
				  <a href="QnA.jsp" class="list-group-item list-group-item-action">📢1 : 1 문의하기</a>
				</div>
			  </div>
			<div class="col col-sm-8" style="margin-top: 0">
				<h1>내가 쓴 글 <small class="text-muted">my post</small></h1>
				<hr>
				<div class="input-group mb-3">
				  <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">검색 조건</button>
				  <ul class="dropdown-menu">
				    <li><a class="dropdown-item" href="#">제목</a></li>
				    <li><a class="dropdown-item" href="#">내용</a></li>
				    <li><a class="dropdown-item" href="#">제목 + 내용</a></li>
				  </ul>
				  <input type="text" class="form-control" aria-label="title" placeholder="검색내용">
				  <button class="btn btn-outline-secondary" type="button" id="button-addon2">검색</button>
				</div>
				<table class="table">
				  <thead>
				    <tr>
				      <th scope="col">번호</th>
				      <th scope="col">제목</th>
				      <th scope="col"></th>
				      <th scope="col">작성일</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td colspan="2"><a href=#>아아 배고프다</a></td>
				      <td>2022.01.01</td>
				    </tr>
				    <tr>
				      <th scope="row">2</th>
				      <td colspan="2"><a href=#>아아 집가고싶다</a></td>
				      <td>2022.01.02</td>
				    </tr>
				    <tr>
				      <th scope="row">3</th>
				      <td colspan="2"><a href=#>아아 마시고싶다</a></td>
				      <td>2022.01.03</td>
				    </tr>
				    <tr>
				      <th scope="row">4</th>
				      <td colspan="2"><a href=#>으아아아아아</a></td>
				      <td>2022.01.04</td>
				    </tr>
				    <tr>
				      <th scope="row">5</th>
				      <td colspan="2"><a href=#>오오오오오</a></td>
				      <td>2022.01.05</td>
				    </tr>
				    <tr>
				      <th scope="row">6</th>
				      <td colspan="2"><a href=#>우우우우ㅜ우</a></td>
				      <td>2022.01.06</td>
				    </tr>
				    <tr>
				      <th scope="row">7</th>
				      <td colspan="2"><a href=#>야스</a></td>
				      <td>2022.01.06</td>
				    </tr>
				  </tbody>
				</table>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
			</div>
			</div>
		</div>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>