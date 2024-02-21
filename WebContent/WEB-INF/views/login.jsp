<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Material Login Form</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<!-- Mixins-->
<!-- Pen Title-->
<div class="pen-title">
  <h1>Material Login Form</h1><span>Pen <i class='fa fa-code'></i> by <a href='http://andytran.me'>Andy Tran</a></span>
</div>
<div class="rerun"><a href="">Rerun Pen</a></div>
<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <form>
      <div class="input-container">
        <input type="text" id="login-id" name="memberId" required="required"/>
        <label for="login-id">ID</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="login-pw" name="passwd" required="required"/>
        <label for="login-pw">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Go</span></button>
      </div>
      <div class="footer"><a href="#">Forgot your password?</a></div>
    </form>
  </div>
  <div class="card alt">
    <div class="toggle"></div>
    <h1 class="title">Register
      <div class="close"></div>
    </h1>
    <form action="<c:url value='/join.do'/>" method="post" onsubmit="return formCheck(this)">
      <div class="input-container">
        <input type="text" id="reg-id" name="memberId" required="required"/>
        <label for="reg-id">ID</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="reg-pw" name="passwd" required="required"/>
        <label for="reg-pw">Password</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="reg-pw-repeat" required="required"/>
        <label for="reg-pw-repeat">Repeat Password</label>
        <div class="bar"></div>
        <span id="pw-msg"></span>
      </div>
      <div class="input-container">
        <input type="email" id="reg-email" name="email" required="required"/>
        <label for="reg-email">Email</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="text" id="reg-name" name="memberName" required="required"/>
        <label for="reg-name">Name</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="text" id="reg-nickname" name="nickname" required="required"/>
        <label for="reg-nickname">Nickname</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Next</span></button>
      </div>
      <script>
      	// 비밀번호와 비밀번호 확인 불일치 시 가입 막기
      	function formCheck(frm) {
      		var msg = "";
      		var pw = document.querySelector("#reg-pw");
      		var repeatPw = document.querySelector("#reg-pw-repeat");
      		if(pw.value != repeatPw.value) {
      			msg = "비밀번호가 일치하지 않습니다.";
      			var pwMsg = document.querySelector("#pw-msg");
      			pwMsg.innerHTML = msg;
      			return false;
      		}
      		return true;
      	}
      </script>
    </form>
  </div>
</div>
<!-- Portfolio--><a id="portfolio" href="http://andytran.me/" title="View my portfolio!"><i class="fa fa-link"></i></a>
<!-- CodePen--><a id="codepen" href="https://codepen.io/andytran/" title="Follow me!"><i class="fa fa-codepen"></i></a>
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script  src="${pageContext.request.contextPath}/resources/js/script.js"></script>

</body>
</html>