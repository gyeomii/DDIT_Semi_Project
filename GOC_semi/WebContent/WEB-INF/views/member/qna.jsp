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
#account_area{
  margin-top : 15px
}
.profile-picture{
  margin: 0;
  text-align: center;
}
</style>
</head>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
      <div class="container-fluid">
         <div class="icon">
            <a class="navbar-brand" href="<%=request.getContextPath()%>/member/main.do"><img class="icon"
               src="<%=request.getContextPath()%>/resources/img/icon.png"></a>
         </div>
         <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarScroll"
            aria-controls="navbarScroll" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
               style="-bs-scroll-height: 100px; margin-left : 0">
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
            <div class="icon2">
				<a class="navbar-brand" href="#"><img class="icon2"
					src="<%=request.getContextPath()%>/resources/img/궁금해.jpeg"></a>
			</div>
            <div class="d-flex">
               <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
                  style="-bs-scroll-height: 100px;">
                  <li class="nav-item dropdown"><a
                     class="nav-link dropdown-toggle" href="#"
                     id="navbarScrollingDropdown" role="button"
                     data-bs-toggle="dropdown" aria-expanded="false"> 회원닉네임 </a>
                     <ul class="dropdown-menu"
                        aria-labelledby="navbarScrollingDropdown">
                        <li><a class="dropdown-item" href="<%=request.getContextPath()%>/member/mypage.do">마이페이지</a></li>
                        <li><a class="dropdown-item" href="#">마이페이지</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="<%=request.getContextPath()%>/member/login.do">로그아웃</a></li>
                     </ul></li>
               </ul>
            </div>
         </div>
      </div>
   </nav>


	<div class="container">
		<div class="container-fluid" style="margin-left: 10px">
			<div class="row" style="display : flex; padding-bottom : 20px;">
					<img src="<%=request.getContextPath()%>/resources/img/kkk.jpg" class="rounded-circle thumb" style="margin-top : 15px; border : solid">
					<div class="col col-sm-2" id="account_area">
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
			   	  <a href="<%=request.getContextPath()%>/member/mypage.do" class="list-group-item list-group-item-action">🙍‍♂‍profile</a>
				  <a href="<%=request.getContextPath()%>/member/editmemberinfo.do" class="list-group-item list-group-item-action">🔑회원정보수정</a>
				  <a href="<%=request.getContextPath()%>/member/mypost.do" class="list-group-item list-group-item-action">✒내가 쓴 글</a>
				  <a href="<%=request.getContextPath()%>/member/tendency.do" class="list-group-item list-group-item-action">🎭너의 성향이 보여</a>
				  <a href="<%=request.getContextPath()%>/member/qna.do" class="list-group-item list-group-item-action active" aria-current="true">📢1 : 1 문의하기</a>
				</div>
			  </div>
			<div class="col-sm-10" style="margin-top: 0">
				<h1>1 : 1 문의하기 <small class="text-muted">Q & A</small></h1>
				<hr>
			
				<div class="input-group mb-3">
				  <label class="input-group-text" for="inputGroupSelect01">문의유형</label>
				  <select class="form-select" id="inputGroupSelect01" name="qType">
				    <option selected></option>
				    <option value="a">건의사항</option>
				    <option value="b">사용자 신고</option>
				    <option value="c">버그 제보</option>
				    <option value="none">추가사항은 DM으로 문의해주세요🙏</option>
				  </select>
				 <input type="text" class="form-control" aria-label="title" placeholder="제목" name="title">
				</div>
				
				<div class="input-group">
				  <span class="input-group-text">문의 내용</span>
				  <textarea class="form-control" aria-label="content" style="resize: none;" rows="10" name="content"></textarea>
				</div>
				<hr>
				<div class="input-group mb-3">
				  <div class="input-group-text">
				    <input class="form-check-input mt-0" type="checkbox" value="0" aria-label="Checkbox" name="chk">
				  </div>
				  <div class="form-control" aria-label="Text input with checkbox">(필수) 개인정보 수집, 이용동의 <a href="#">전문보기</a></div>
				  <button class="btn btn-outline-secondary btn-warning" id="regist" type="button" onclick="qna_go()" style="color : white">문의 등록</button>
				</div>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
			  </div>
			</div>
		</div>
<script>
	$(document).ready(function(){
		$("input:checkbox").on('click', function(){
			if($(this).is(':checked')){
				$("button[id='regist']").attr('disabled', false);
			}else{
				$("button[id='regist']").attr('disabled', true);		
			}
		});
	});

	function qna_go(){
		var qType = $('select[name="qType"]').val();
		var title = $('input[name="title"]').val();
		var content = $('textarea[name="content"]').val();
		
		alert(qType + title + content);
	}
</script>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>

</body>
</html>