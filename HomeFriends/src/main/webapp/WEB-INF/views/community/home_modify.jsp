<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- 부트스트랩 -->
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />
	
	<title>홈 스토리 수정 - Home Friends</title>
	
	
	<!-- 부트스트랩 -->
	<!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	-->
	
	
	<link href="/controller/css/header.css" rel="stylesheet">
	<link href="/controller/css/nav.css" rel="stylesheet">
	<link href="/controller/css/community/home_insert.css" rel="stylesheet">
	<link href="/controller/css/footer.css" rel="stylesheet">
	<script src="/controller/js/jquery-3.6.0.min.js"></script>
	<script src="/controller/js/header.js"></script>
	<script src="/controller/js/nav.js"></script>
	<script src="/controller/js/footer.js"></script>
	<script src="/controller/js/community/home_modify.js"></script>
	
	
	<!-- 썸머노트 -->
	<script src="/controller/js/summernote/summernote-lite.js"></script>
	<script src="/controller/js/summernote/lang/summernote-ko-KR.js"></script>
	<link rel="stylesheet" href="/controller/css/summernote/summernote-lite.css">
	

</head>
<body>
	<%@ include file="../header.jsp" %>
	<%@ include file="../nav.jsp" %>

	<!-- 본문 영역 -->
	<section>
		<div class="row MainImg">
			<img src="/controller/upload/${vo.img_system }">
		</div>
		<form id="updateFrm" name="updateFrm" action="home_modify.do" method="post" enctype="multipart/form-data">
			<input type="hidden" id="cbidx" name="cbidx" value="${vo.cbidx }">
			<input type="hidden" name="img_origin" id="img_origin" value="${vo.img_origin }">
			<input type="hidden" name="img_system" id="img_system" value="${vo.img_system }">
			<div id="titleArea">
				<input type="text" id="title" name="title" value="${vo.title }">
				<div id="titleInfo">필수 입력 항목입니다.</div>
			</div>
			
			<textarea id="summernote" name="content">${vo.content }</textarea>
			<div id="contentInfo">필수 입력 항목입니다.</div>
			
			<div id="butttonArea">
				<input type="button" id="submitButton" value="수정" onclick="submitFn()">
				<input type="button" id="calcelButton" value="취소" onclick="location.href='home_view.do?cbidx='+${vo.cbidx}">
			</div>
		</form>
		
	</section>
	
	<%@ include file="../footer.jsp" %>
	
</body>
</html>
