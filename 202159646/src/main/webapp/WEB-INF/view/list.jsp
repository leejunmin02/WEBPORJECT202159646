<%@page import="cs.dit.board.BoardDao"%>
<%@page import="cs.dit.board.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<br>
		<h2 class="text-center font-weight-bold">게시판 목록</h2>
		<br>
		<table class="table table-hover">
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>파일명</th>
			</tr>

			<c:forEach var='dto' items='${dtos}'>
				<tr>
					<td>${dto.bcode }</a></td>
					<td><a href="updateForm.do?bcode=${dto.bcode}">${dto.title}</a></td>
					<td>${dto.writer}</td>
					<td><fmt:formatDate value="${dto.regDate}" /></td>
					<td><a download href="/board-student/uploadfiles/${dto.filename}">${dto.filename}</a></td>
				</tr>
			</c:forEach>
		</table>
		<br> <input type="button" value="홈으로"onclick="location.href='index.do'"> 
				 <input type="button" value="게시글 등록" onclick="location.href='insertForm.do'">
				 </div>
		<br>		 
	 <div class="d-flex justify-content-center">
		<ul class="pagination">
		<!-- 페이지 네비게이션의 첫 부분 : Previous -->
  	<c:if test="${startNum <= 1}">
  		<li class="page-item"><a class="page-link" style="color: gray" onclick="alert('첫 페이지입니다.')" href="#">Previous</a></li>
  	</c:if>
  	<c:if test="${startNum > 1}">
  		<li class="page-item"><a class="page-link" href="list.do?p=${startNum-1}">Previous</a></li>
  	</c:if>
  	<!-- 페이지 네비게이션 부분 -->
  	<c:forEach var = "i" begin="0" end="${numOfPages-1}" step="1">
	  	<c:if test="${startNum + i <= lastNum }">	
	  		<c:if test="${startNum+i == p }">
	  		<li class="page-item active"><a class="page-link" href="list.do?p=${startNum+i}">${startNum+i}</a></li>
	  	</c:if>
	  	<c:if test="${startNum+i != p }">
	  		<li class="page-item"><a class="page-link" href="list.do?p=${startNum+i}">${startNum+i}</a></li>
	  	</c:if>
	  	</c:if>
  	</c:forEach>
  <!-- 페이지 네이션의 마지막 부분 -->
  	<c:if test="${startNum + numOfPages > lastNum }">
  		<li class="page-item"><a class="page-link" style="color: gray" onclick="alert('다음페이지가 없습니다.')" href="#">Next</a></li>
  	</c:if>
  	<c:if test="${startNum + numOfPages <= lastNum }">
  	<li class="page-item"><a class="page-link" href="list.do?p=${startNum + nunOfPages}">Next</a></li>
  		
  	</c:if>
  	
   </ul>
	</div>
</body>
</html>