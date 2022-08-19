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

function MbtiPictureThumb(contextPath){
	for(var target of document.querySelectorAll('.mbtiPicture')){	
		var mbti = target.getAttribute('data-id');
		
		target.style.backgroundImage="url('"+contextPath+"/resources/img/mbti/"+ mbti +".jpg')";
		target.style.backgroundPosition="center";
		target.style.backgroundRepeat="no-repeat";
		target.style.backgroundSize="cover";
	}
}	
function goMainPage(path) {
	location.href = path + "/common/main.do";
}