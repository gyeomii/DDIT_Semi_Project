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
</style>
</head>
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
                     data-bs-toggle="dropdown" aria-expanded="false"> ${sessionScope.loginUser.nickname} </a>
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
						<p>${sessionScope.loginUser.nickname}</p>
						<div>
							<p><small>Your personal account</small></p>
						</div>
					</div>
			</div>
		</div>
		<div class="row">
		<div class="col-sm-2">
			   	 <div class="list-group">
			   	  <a href="<%=request.getContextPath()%>/member/mypage.do" class="list-group-item list-group-item-action">🙍‍♂‍profile</a>
				  <a href="<%=request.getContextPath()%>/member/editmemberinfo.dp" class="list-group-item list-group-item-action">🔑회원정보수정</a>
				  <a href="<%=request.getContextPath()%>/member/mypost.do" class="list-group-item list-group-item-action">✒내가 쓴 글</a>
				  <a href="<%=request.getContextPath()%>/member/tendency.do" class="list-group-item list-group-item-action active" aria-current="true">🎭너의 성향이 보여</a>
				  <a href="<%=request.getContextPath()%>/member/qna.do" class="list-group-item list-group-item-action ">📢1 : 1 문의하기</a>
				</div>
			  </div>
			<br>
				<div class="col">
						<h1>Show Ur Tendency <small class="text-muted">너의 성향이 보여</small></h1>
					  <hr>
					<div class="row g-4">
						<div class="col-md">
							<div class="form-floating">
								<select class="form-select" id="floatingSelectGrid"
									aria-label="Floating label select example" name="m">
									<option selected>대덕의 인싸? 아싸?</option>
									<option value="e">E 내가 바로 대덕의 인싸~♬</option>
									<option value="i">I 사람보단.. 노트북이 좋아..</option>
								</select> <label for="floatingSelectGrid">E(외향적)vsI(내향적)</label>
							</div>
						</div>
						<div class="col-md">
							<div class="form-floating">
								<select class="form-select" id="floatingSelectGrid"
									aria-label="Floating label select example" name="b">
									<option selected>어휴 생각하지 말자~!</option>
									<option value="s">S . . .</option>
									<option value="n">N 생각을 안 하는 생각을 하는 생각을 하는 생각을..</option>
								</select> <label for="floatingSelectGrid">S(현실적)vsN(직관적)</label>
							</div>
						</div>
						<div class="col-md">
							<div class="form-floating">
								<select class="form-select" id="floatingSelectGrid"
									aria-label="Floating label select example" name="t">
									<option selected>나 우울해서 염색을 했어ㅠㅠ</option>
									<option value="t">T 헐 대박! 무슨 색으로 했어?</option>
									<option value="f">F 왜 우울해 ㅠㅠㅠ?무슨일이야 ㅠㅠㅠ</option>
								</select> <label for="floatingSelectGrid">T(머리)vsF(가슴)</label>
							</div>
						</div>
						<div class="col-md">
							<div class="form-floating">
								<select class="form-select" id="floatingSelectGrid"
									aria-label="Floating label select example" name="i">
									<option selected>여행을 갈 때 나는?</option>
									<option value="p">P 무조건 즉흥여행이지~</option>
									<option value="j">J x시에 oo를 가서~</option>
								</select> <label for="floatingSelectGrid">P(즉흥적)vsJ(계획적)</label>
							</div>
						</div>
					</div>
			<br> <br>

			<h3>야자 잘 하고 있니?</h3>
			<div class="col-md">
				<div class="form-floating">
					<select class="form-select" id="floatingSelectGrid"
						aria-label="Floating label select example" name="yaja">
						<option selected></option>
						<option value="5">상 : 나보다 늦게 가는 사람 별로 없음</option>
						<option value="4">중상</option>
						<option value="3">보통</option>
						<option value="2">중하</option>
						<option value="1">교수님 죄송합니다...</option>
					</select> <label for="floatingSelectGrid">나의 야자점수는?</label>
				</div>
			</div>
			<br> <br>

			<h3>최애 교수님이 누구셔?</h3>
			<div class="col-md">
				<div class="form-floating">
					<select class="form-select" id="floatingSelectGrid"
						aria-label="Floating label select example" name="teacher">
						<option selected></option>
						<option value="1">김형민 교수님(mimi)</option>
						<option value="2">김정환 교수님(쵸퍼킴)</option>
						<option value="3">하재관 교수님(오라클쌤)</option>
						<option value="4">이유진 교수님(스크립트쌤)</option>
						<option value="5">송찬중 교수님(다들 오셨나요?)</option>
						<option value="6">장태권 부장님</option>
					</select> <label for="floatingSelectGrid">한 분 골라주세요</label>
				</div>
			</div>
			<br> <br>

			<h3>너의 음식취향이 궁금해~</h3>
			<br>
			<div class="row">
				<div class="col">
					<div class="row g-4">
						<div class="col-md">
							<div class="form-floating">
								<select class="form-select" id="floatingSelectGrid"
									aria-label="Floating label select example" name="hot">
									<option selected>매운 거 vs 순한 거</option>
									<option value="1">맵돌맵순이 : 응!!!!!!!</option>
									<option value="2">맵찔이 : 어..? 좋아는... 해..할껄..?</option>
								</select> <label for="floatingSelectGrid"></label>
							</div>
						</div>
						<div class="col-md">
							<div class="form-floating">
								<select class="form-select" id="floatingSelectGrid"
									aria-label="Floating label select example" name="sugar">
									<option selected>단거 vs 짠거</option>
									<option value="1">달달파</option>
									<option value="2">짭짤파</option>
								</select> <label for="floatingSelectGrid"></label>
							</div>
						</div>
						<div class="col-md">
							<div class="form-floating">
								<select class="form-select" id="floatingSelectGrid"
									aria-label="Floating label select example" name="mint">
									<option selected>민트초코.. 어떻게 생각하십니까..</option>
									<option value="1">반민초 : 치약을 왜먹어?</option>
									<option value="2">민초파 : 베라가면 무조건 민초지ㅎ</option>
								</select> <label for="floatingSelectGrid"></label>
							</div>
						</div>
						<div class="col-md">
							<div class="form-floating">
								<select class="form-select" id="floatingSelectGrid"
									aria-label="Floating label select example" name="pizza">
									<option selected>하와이안 피자 어때?</option>
									<option value="1">호! 피자는 뭔들 ~</option>
									<option value="2">불호! 따뜻한 파인애플.. 순리를 거스르는 거다..</option>
								</select> <label for="floatingSelectGrid"></label>
							</div>
						</div>
					</div>
				</div>
				</div>
					<br> <br>
					<div class="col-auto">
						<button type="submit" class="btn btn-primary mb-3" onclick="tendency_go()">저장하기</button>
					</div>
			</div>

		</div>
	</div>
<script>
function tendency_go(){
	var m = $('select[name="m"]').val();
	var b = $('select[name="b"]').val();
	var t = $('select[name="t"]').val();
	var i = $('select[name="i"]').val();
	var yaja = $('select[name="yaja"]').val();
	var teacher = $('select[name="teacher"]').val();
	var hot = $('select[name="hot"]').val();
	var sugar = $('select[name="sugar"]').val();
	var mint = $('select[name="mint"]').val();
	var pizza = $('select[name="pizza"]').val();
	
	alert("mbti : " + m + b + t + i + "\n" + yaja + teacher + hot + sugar + mint + pizza);
	
}
</script>
	<!-- /.container -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>