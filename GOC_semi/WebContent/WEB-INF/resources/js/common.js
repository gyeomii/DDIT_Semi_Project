// NAV. Icon Click to Mainpage
function goToMainPage() {
	location.href = "main.do";
}
function goMainPage(path) {
	location.href = path + "/common/main.do";
}
function goTologinPage() {
	location.href = "login.do";
}
// UserInfo Id Click to MyPage
function goToMyPage() {
	// 마이페지이 경로 수정
// location.href = "MyPage.do";
}

// 사용자 사진 출력
function MemberPictureThumb(contextPath){
	 for(var target of document.querySelectorAll('.manPicture')){	
		 var id = target.getAttribute('data-id');
		 
		 target.style.backgroundImage="url('"+contextPath+"/common/getPicture.do?id="+id+"')";
		 target.style.backgroundPosition="center";
		 target.style.backgroundRepeat="no-repeat";
		 target.style.backgroundSize="cover";
	}
}	



// 팝업창들 뛰우기
// 새로운 Window창을 Open할 경우 사용되는 함수 ( arg : 주소 , 창타이틀 , 넓이 , 길이 )
function OpenWindow(UrlStr, WinTitle, WinWidth, WinHeight) {
	winleft = (screen.width - WinWidth) / 2;
	wintop = (screen.height - WinHeight) / 2;
	var win = window.open(UrlStr , WinTitle , "scrollbars=yes,width="+ WinWidth +", " 
							+"height="+ WinHeight +", top="+ wintop +", left=" 
							+ winleft +", resizable=yes, status=yes"  );
	win.focus() ; 
}

// 팝업창 닫기
function CloseWindow(){
	
	window.opener.location.reload(true);		
	window.close();
}
$(function(){
	  $('.tabcontent > div').hide();
	  $('.tabnav a').click(function () {
	    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
	    $('.tabnav a').removeClass('active');
	    $(this).addClass('active');
	    return false;
	  }).filter(':eq(0)').click();
	  });