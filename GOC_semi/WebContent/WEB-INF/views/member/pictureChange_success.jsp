<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<script>
alert("사진변경에 성공했습니다.\n 마이페이지로 이동합니다.");
window.opener.location.href = "<%= request.getContextPath()%>/member/editmemberinfo.do";
window.close();
</script>
</body>
</html>