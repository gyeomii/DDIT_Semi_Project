<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<script>
	alert("게시글 등록에 실패했습니다.\n게시판으로 이동합니다.");
	window.location.href="<%=request.getContextPath()%>/post/freeBoard.do";
</script>