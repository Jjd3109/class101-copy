<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:url var="bs5" value="/static/bs5" />
<c:url var="jQuery" value="/static/js" />
<link rel="canonical" href="https://getbootstrap.kr/docs/5.2/examples/headers/">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">



<html>
<head>
	<title>Home</title>
	<c:url var="ckeditor" value="/static/ckeditor" />
	<script type="text/javascript" src="${ckeditor}/ckeditor.js"></script>
	
</head>
<body class="p-3 text-bg-dark">
<%@ include file="../header/header.jsp" %>
 	<input type="file" class="real-upload" accept="image/*" required multiple style="display: none;">
  <div class="upload"></div>
	  <script>
	    const realUpload = document.querySelector('.real-upload');
	    const upload = document.querySelector('.upload');
	
	    upload.addEventListener('click', () => realUpload.click());
	  </script>
 	
 	<c:url var="add" value="/subject/add" />
  	<form class="form-signin w-50 m-auto text-center" action="${sellurl}" method="post" enctype="multipart/form-data">
 	<div> 
 		<div class="image-form mb-3">
			<!-- 여기 url은 home/ 뒤에 바로 modify 가 아니라 info/ 가 붙으므로 contextPaht 경로를 앞에 붙여야 한다.  -->
			<div class="mb-3">
				<input id="formFile" type="file" name="fileUpload" class="form-control" value="이미지 선택" accept="image/png">
			</div>
		</div>
	 	<div class="form-floating">
	 		<select class="form-select" name="field">
	 			<option selected value="프로그래밍">프로그래밍</option>
	 			<option value="it">it</option>
	 			<option value="grim">그림</option>
	 		</select>
	 	</div>
 	   <div class="form-floating" >
	      <input type="text" class="form-control" id="title" name="title" style="background-color: black; color: white;" required >
	      <label for="floatingInput">제목</label>
	    </div>
	    <div class="form-floating" >
	      <textarea required class="form-control" id="content" name="content" rows="10"></textarea>
	      <label for="floatingInput">내용</label>
	    </div>
	    <div class="form-floating" >
	      <input type="number" class="form-control" id="price" name="price" style="background-color: black; color: white;" value="1000" required >
	      <label for="floatingInput">가격</label>
	    </div>
 		<div>
 		  <button type="submit" class="form-control">확인</button>
 		</div>
 	</div>
 	</form>
 		<!-- ckeditor 사용해서 내용추가 해주기... --> 
	<c:url var="upload" value="/upload/image" />
		<script type="text/javascript">
			CKEDITOR.replace("content", {
				filebrowserUploadUrl: "${upload}?type=image"
			})
		</script>
</body>

</html>
