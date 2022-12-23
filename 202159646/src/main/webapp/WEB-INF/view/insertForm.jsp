<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
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
		<h2 class="text-center font-weight-bold">게시글 등록</h2>
		<hr />
		<form action="insert.do" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="subject">제목 :</label> <input type="text"
					class="form-control" id="title" name="title">
			</div>
			<div class="form-group">
				<label for="content">내용 :</label><br>
				<textarea rows="10" cols="80" name="content" id="content"></textarea>
			</div>
			<div class="form-group">
				<label for="writer">작성자 :</label> <input type="text"
					class="form-control" id="writer" name="writer">
			</div>
			<div class="form-group">
				<label for="filename">파일명 :</label> 
				<input type="file" class="form-control" id="filename" name="filename">
			</div>

			<div class="text-center">
				<button type="submit" class="btn btn-secondary">등록</button>
			</div>
		</form>
	</div>
</body>
</html>