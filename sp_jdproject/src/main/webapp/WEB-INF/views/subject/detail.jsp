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
	
 	<style>
 		.image-box{
 			width: 100%;
		    height: 50%;
		    overflow:hidden;
		    margin:0 auto;
		    background-size: cover;
		   
		    
 		}
 	
 		.image-thumbnail {
		    width:100%;
		    height:100%;
		    object-fit:cover;
		}
 	
 	</style>
</head>
<body class="p-3 text-bg-dark">
<%@ include file="../header/header.jsp" %>
 <div class="container">
 	<!-- 메인 사진 보여주기 -->
 	<div class="image-box mt-5">
 	 <img class="image-thumbnail" src="${pageContext.request.contextPath}${data.url}/${data.uuidName}">
 	</div>
 	<!--  제목 + 바로시작하기-->
	<div class="mt-5">
	</div>
</div>  
</body>

<script>

</script>
    


</html>
