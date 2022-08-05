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
					<img src="resources/img/kkk.jpg" class="rounded-circle thumb" style="margin-top : 15px; border : solid">
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
			   	  <a href="MyPage.jsp" class="list-group-item list-group-item-action" >🙍‍♂‍profile</a>
				  <a href="EditMemberInfo.jsp" class="list-group-item list-group-item-action active" aria-current="true">🔑회원정보수정</a>
				  <a href="MyPost.jsp" class="list-group-item list-group-item-action">✒내가 쓴 글</a>
				  <a href="tendency.jsp" class="list-group-item list-group-item-action">🎭너의 성향이 보여</a>
				  <a href="QnA.jsp" class="list-group-item list-group-item-action">📢1 : 1 문의하기</a>
				</div>
			  </div>
			<div class="col col-sm-6" style="margin-top: 0">
			  <h1>Edit Profile <small class="text-muted">회원정보수정</small></h1>
			  <hr>
			  <div class="mb-3">
			    <label for="formGroupExampleInput" class="form-label">아이디</label>
			    <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="ex)stray2">
			  </div>
			  <div class="mb-3">
			    <label for="formGroupExampleInput" class="form-label">이  름</label>
			    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="ex)이민호">
			  </div>
			  <div class="mb-3">
			    <label for="formGroupExampleInput2" class="form-label">닉네임</label>
			    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="ex)leeknow">
			  </div>
			  
			  <label for="formGroupExampleInput2" class="form-label">이메일</label>
			  <div class="input-group mb-3">
			    <input type="text" class="form-control" placeholder="Username" id="exampleInputEmail1" aria-label="Username">
			    <span class="input-group-text">@</span>
			    <input type="text" class="form-control" placeholder="naver.com" aria-label="Server">
			  </div>   
			
			  <div class="row">
			    <label for="formGroupExampleInput2" class="form-label">전화번호</label>
			    <div class="col">
			      <input type="text" class="form-control" placeholder="010" aria-label="phone">
			    </div>
			    <div class="col">
			      <input type="text" class="form-control" placeholder="1234" aria-label="first">
			    </div>
			    <div class="col">
			      <input type="text" class="form-control" placeholder="5678" aria-label="second">
			    </div>
			  </div>
			  <br/>
			  <div class="mb-3">
			    <label for="formGroupExampleInput" class="form-label">비밀번호</label>
			    <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="Must be 8-20 characters long.">
			  </div>
			  <div class="mb-3">
			    <label for="formGroupExampleInput" class="form-label">비밀번호 확인</label>
			    <input type="text" class="form-control" id="formGroupExampleInput3" >
			  </div> 
			  
			  <label for="formGroupExampleInput2" class="form-label">주소</label>   
			  <select class="form-select" aria-label="Default select example">
				  <option selected>주소를 선택하세요.</option>
				  <option value="1">대전광역시 동구</option>
				  <option value="2">대전광역시 중구</option>
				  <option value="3">대전광역시 대덕구</option>
				  <option value="4">대전광역시 서구</option>
				  <option value="5">대전광역시 유성구</option>
			  </select>
			  <br/>
			  <br/>
			  <br/>
			  <br/>
			  <br/>
			  <br/>
			  <br/>
			  <br/>
			  <br/>
			  </div>
				<!-- col-sm-6 -->
				<div class="col col-sm-3" style="margin: 0; text-align: center;">
					<div>
						<label>Profile Picture</label>
						<br/>
						<div>
							<img src="resources/img//kkk.jpg" width="200" height="200" class="rounded-circle" style="border : solid">
						</div>
						<br/>
						<div>
							<input type="button" class="btn btn-primary" value="Edit"/>
						</div>
					</div>
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