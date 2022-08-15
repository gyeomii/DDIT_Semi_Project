<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script>
	alert("회원정보수정을 성공했습니다.\n 마이페이지로 이동합니다.");
	
	window.location.href = "<%=request.getContextPath()%>/member/mypage.do";
	</script>
</body>
</html>