<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<script>
	alert("글작성이 완료되었습니다.");
	window.opener.location.href="<%=request.getContextPath()%>/post/freeBoard.do";
	window.close();	
</script>