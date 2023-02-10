<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
</head>
 <%@ include file="../header/header.jsp" %>
<body class="text-bg-dark"> 


<div class="form-signin w-50 m-auto text-center" style="border: 1px solid white">
  <c:url var="loginurl" value="/login" />
  <form class="form-signin w-50 m-auto text-center" action="${loginurl}" method="post">
    <h1 class="h3 mt-5 mb-3 fw-normal">로그인</h1>

    <div class="form-floating" >
      <input type="email" class="form-control" id="floatingInput" name="email" placeholder="name@example.com" style="background-color: black; color: white;">
      <label for="floatingInput">Email address</label>
    </div>
    <div class="form-floating mt-2" >
      <input type="password" class="form-control" id="floatingPassword"  name="pw"placeholder="Password" style="background-color: black; color: white;">
      <label for="floatingPassword">Password</label>
    </div>
    <c:if test="${not empty fail}">
    <div class="form-floating mt-2">
    	아이디나 비밀번호가 다릅니다.
    </div>
    </c:if>
     <div class="mb-3 mt-3 row">
  		<div class="col">이메일 찾기</div>
  		<div class="col-1">/</div>
  		<div class="col">비밀번호 찾기</div>
  	</div>
	
	<div class="mb-3 mt-5">
    <button class="w-100 btn btn-lg btn btn-outline-secondary" type="submit">로그인</button>
    </div>
    
    <div class="mb-3 mt-5">
    <button type="button" class="w-100 btn btn-lg btn btn-outline-secondary" onclick="location.href='login/sign'">이메일로 가입하기</button>
    </div>
  	
  	<div class="mb-3">
		<button type="button" class="form-control mw-100" style="background-color: #FEE500; height:3rem;"
		onclick="location.href='login/kakao'">
		<img alt="카카오로 가입하기" src="static/img/naver/kakao.png">
		</button>
	</div>
	<div class="mb-5">
		<button type="button" class="form-control mw-100" style="background-color: rgb(3, 199, 90); height: 3rem"
		onclick="location.href='login/naver'">
		<img  alt="네이버로 가입하기" src="static/img/naver/naverbtn1.png">		
		 </button>
	</div>

  </form>
</div>

  
</body>
</html>
