<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>

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
<body class="text-bg-dark">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
 <%@ include file="../header/header.jsp" %>
<div class="form-signin w-50 m-auto " style="border: 1px solid white">
  <div class="container form-signin w-50 m-auto ">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto text-left">
       
        <h5 class="mb-3 mt-5">회원가입</h5>
       
        <c:url var="signUrl" value="/login/sign" />
        <form action="${signUrl}" method="post" novalidate >
        
          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control mt-3" id="email" name="email" placeholder="you@example.com" maxlength="30" style="background-color: black; color: white; line-height: 2rem;" required>
          	<span class="mt-2" id="crEmail" style="display:none; color:antiquewhite">사용할수 있어용</span>
          	<span class="mt-2" id="falseEmail" style="display:none; color:red">동일한 아이디가 있어요</span>
         	<span class="mt-2" id="ableEmail" style="display:none; color:red">이메일 형식이 아니에요</span>
          </div>
          
          
          <div class="mb-3">
          	<label for="password">비밀번호</label>
          	<input type="password" class="form-control mt-3" id="pw" name="pw"  placeholder="*********" style="background-color: black; color: white; line-height: 2rem;">
         	<div class="mt-2" id="crpw" style="font-size: small; color:antiquewhite;">영문 대·소문자/숫자/특수문자 중 2가지 이상 조합, 8자~20자 </div>
         	<span class="mt-2" id="dont" style="display:none; color:red;">비밀번호가 틀립니다.</span>
         
          </div>
          
          <div class="mb-3">
          	<label for="password">비밀번호확인</label>
          	<input type="password" class="form-control mt-3" id="correctPw" placeholder="*********"  style="background-color: black; color: white; line-height: 2rem;">
          </div>
          
          
           <div class="row">
            <div class="mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control mt-3" id="name" name="name" required style="background-color: black; color: white; line-height: 2rem;" >
            </div>
          </div>
          
          <div class="row">
            <div class="mb-3">
              <label for="nickname">닉네임</label>
              <input type="text" class="form-control mt-3" id="nickname" name="nickname" required style="background-color: black; color: white; line-height: 2rem;">
            <span class="mt-2" id="crnickname" style="display:none; color:antiquewhite">사용할수 있어용</span>
          	<span class="mt-2" id="falsenickname" style="display:none; color:red">동일한 아이디가 있어요</span>
          
            
            </div>
          </div>


          <div class="mb-4"></div>
          <button class="btn btn-warning mb-5 w-100" type="submit">가입 완료</button>
        </form>
      </div>
	</div>
</div>
</div>

<script>
	//이메일 형식이 맞는지 안맞는지
	function CheckEmail(str){                                                 

     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

     if(!reg_email.test(str)) {                            
          return false;         
     }                            
     else {                       
          return true;         
     }                            

	 }        
	
	//이메일중복확인
	$("#email").change(function(){
		 var email = $('#email').val(); 
		 
			if(!CheckEmail(email))	{
				$('#email').focus();
				$("#ableEmail").css("display", "block");
				return;
			}       
		
		$.ajax({
            url:'sign/idCheck',
            type:'post',
            data:{email: email},
            dataType: "json",
            success:function(data){ 
            	if(data.code === "success"){
            		//데이터중복확인 결과 성공
            		$("#crEmail").css("display", "block");
            		$("#falseEmail").css("display", "none");
            		$("#ableEmail").css("display", "none");
            		
            	}
            	if(data.code === "false"){
            		//데이터 중복확인 결과 실패
            		$("#crEmail").css("display", "none");
            		$("#falseEmail").css("display", "block");
            		$("#ableEmail").css("display", "none");
            		
            		$('#email').focus();
            		//form태그막기
            		$("form").submit(function(){
            			
            			return false;
            		})
            	}
       			 },
			});
	
	});
	
	//비밀번호 8~20자리 비밀번호 특수문자 로직
	
	$("#pw").change(function(){
		var passwordRule = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/;

		if(!passwordRule.test($('#pw').val().trim())){
			//작동시킬 로직
			$("#crpw").css("color", "red");
			
			}
	
	
	})
	
	//닉네임중복확인
	$("#nickname").change(function(){
		 var nickname = $('#nickname').val(); 
		 
		
		$.ajax({
            url:'sign/nicknameCheck',
            type:'post',
            data:{nickname: nickname},
            dataType: "json",
            success:function(data){ 
            	if(data.code === "success"){
            		//데이터중복확인 결과 성공
            		$("#crnickname").css("display", "block");
            		$("#falsenickname").css("display", "none");
            		
            	}
            	if(data.code === "false"){
            		//데이터 중복확인 결과 실패
            		$("#crnickname").css("display", "none");
            		$("#falsenickname").css("display", "block");
            		
            		$("form").submit(function(){
            			
            			return false;
            		})
            	}
       			 },
			});
	
	});
	
	
	$("form").submit(function() {
		
		  //비밀번호가 다를시에 
		  if($("#pw").val() !== $("#correctPw").val()){
			  alert('비밀번호가 다릅니다');
			  
			  $("#dont").css("display", "block");
			  return false;
		  }

		});
</script>
  
</body>

</html>
