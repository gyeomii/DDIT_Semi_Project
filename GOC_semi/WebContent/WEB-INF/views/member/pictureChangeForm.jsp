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
<link href="<%=request.getContextPath()%>/resources/css/mypage.css" rel="stylesheet">
<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>
</head>
<body oncontextmenu='return false'>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
		<div class="container-fluid">
			<div class="icon" title="Home Page" style="width:8vw; height:8vw">
				<div class="icon" onclick="goMainPage('<%=request.getContextPath()%>')"
					style="width:8vw; height:8vw; background-image: url(<%=request.getContextPath()%>/resources/img/icon.png);"></div>
			</div>
		</div>
	</nav>


	<div class="container">
		<div class="container-fluid">
			<div style="text-align: center;">
				<div id="pictureView" class="manPicture" data-id="${loginUser.user_id }"style="border: 1px solid green; height: 400px; width: 400px; margin: 0 auto;"></div>
				<div class="input-group">
					<label for="inputFile" class=" btn btn-warning">파일선택</label>
					<input id="inputFileName" class="form-control" type="text" name="tempPicture" disabled />
					<span class="input-group-append">
						<button type="button" class="btn btn-info" onclick="upload_go();">업로드</button>
					</span>
				</div>
			</div>
		</div>
	</div>
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
<form role="imageForm" action="picture.do" method="post" enctype="multipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" style="display:none;" onchange="picture_go();" />
	<input id="oldFile" type="hidden" name="oldPicture" value="${loginUser.picture }" />
	<input type="hidden" name="id" value="${loginUser.user_id}"/> 
</form>

<script>
window.onload = function(){	
	MemberPictureThumb('<%=request.getContextPath()%>');
}
</script>

<script>
function picture_go(){
	//alert("file change");
	var form = $('form[role="imageForm"]');
	var picture = form.find('[name=pictureFile]')[0];
	
   //이미지 확장자 jpg 확인
   var fileFormat = picture.value.substr(picture.value.lastIndexOf(".")+1).toUpperCase();
	if(!(fileFormat=="JPG" || fileFormat=="JPEG")){
   		alert("이미지는 jpg/jpeg 형식만 가능합니다.");
   		picture.value="";      
   		return;
	} 

	//이미지 파일 용량 체크
   if(picture.files[0].size>1024*1024*1){
      alert("사진 용량은 1MB 이하만 가능합니다.");
      picture.value="";
      return;
   };
   
	
	//alert(picture.value);
	//업로드 확인변수 초기화 (사진변경)
	document.getElementById('inputFileName').value=picture.value;
	
	if (picture.files && picture.files[0]) {
	  var reader = new FileReader();
	  reader.onload = function (e) {
		  $('div#pictureView').css({
		     'background-image':'url('+e.target.result+')',
		     'background-position':'center',
		     'background-size':'cover',
		     'background-repeat':'no-repeat'
		  });
		}
		  
	 reader.readAsDataURL(picture.files[0]);
   }
}

function upload_go(){
	// 유효성 검사
	if(!$('input[name="pictureFile"]').val()){
		alert("사진을 선택하세요.");
		$('input[name="pictureFile"]').click();
		return;
	}
	
	var form = $('form[role="imageForm"]');
	
	form.submit();		
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