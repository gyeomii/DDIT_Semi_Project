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
	alert("ȸ������������ �����߽��ϴ�.\n ������������ �̵��մϴ�.");
	
	window.location.href = "<%=request.getContextPath()%>/member/mypage.do";
	</script>
</body>
</html>