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
 		ul{
 			list-style:none;
 		}
 	
 		nav{
 			
 			position:fixed;
 			height:100%
 			}
 		
 		.menu {}
 		.menu li{}
 		.menu li a{
 			height:30px;
 			line-height:30px;
 			display:block;
 			padding-left:0px;
 			padding-top:20px;
 			margin-top:10px;
 			font-size:15px;
 			color:white;
 			text-decoration-line: none;
 			}
 		.menu li a:hover {color:white;}
 		
		.card-img-top{
			height: 15rem;
		}
 		
 	
 	</style>
</head>
<%@ include file="../header/header.jsp" %>
<body class="p-3 text-bg-dark">

 <div class="container">
 	<div class="row">
 	
	 	<div class="col-3">
	 		<h2 class="mt-5">프로그래밍</h2>
	 		<ul class="menu">
	 			<li><a href="#html">전체</a></li>
	 			<li><a href="#html">IT교양</a></li>
	 			<li><a href="#html">프로그래밍언어</a></li>
	 			<li><a href="#html">프론트엔드</a></li>
	 			<li><a href="#html">백엔드</a></li>
	 		</ul>
	 	</div>
 	
	 	<div class="col">
			<!-- 버튼쪽  -->
	 		<div class="row justify-content-end mt-5">
	 			<div class="col-7"></div>
	 			<div class="col-3 ">
		            <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false" style="color: white;">영상언어</a>
		            <ul class="dropdown-menu">
		              <li><a class="dropdown-item" href="#">Action</a></li>
		              <li><a class="dropdown-item" href="#">Another action</a></li>
		              <li><a class="dropdown-item" href="#">Something else here</a></li>
		            </ul>
	 			</div>
	 			<div class="col">
			 		<a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false" style="color: white;">인기순</a>
		            <ul class="dropdown-menu">
		              <li><a class="dropdown-item" href="#">Action</a></li>
		              <li><a class="dropdown-item" href="#">Another action</a></li>
		              <li><a class="dropdown-item" href="#">Something else here</a></li>
		            </ul>
	 			</div>
	 		</div>
	 			 		<!-- 판매아이템쪽 -->
	 		<div class="row">
	 		
			 		<c:forEach items="${searchData}" var="data">
			 			
			 			<div class="card col-3 mt-5 text-bg-dark" style="width: 15rem;" onclick="location.href='./subject/detail?itemid=${data.sell_number}'">		
			 			<c:if test="${not empty data}">
						  <img src="${pageContext.request.contextPath}${data.url}/${data.uuidName}" class="card-img-top" >
						  </c:if>
						  <div class="card-body">
						    <h5 class="card-title" style="font-size:15px">${data.sell_title}</h5>
						  </div> 
						</div>
			 		</c:forEach>

	 		</div>
	 		
	 		
	 	</div>
 	</div>
 

</div>  
</body>

<script>

</script>
    


</html>
