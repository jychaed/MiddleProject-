<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 </title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	<script src = "<%=request.getContextPath() %>/js/js.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/basicStyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
</head>
<style>
h2{
	padding-top : 25%;
	padding-bottom : 5%;
	text-align : center;
}
.loginFind ul{
	display : flex;
	flex-direction: row;
	justify-content: space-evenly;
	
}
ul{
	list-style: none;
}
.login{
	width : 70%;
	margin-left : 15%;
}
</style>
<script>
$(function(){
// 	$('.login').on('submit', function() {
		
// 	})	
})
</script>
<body>
<%
String errMsg = (String)request.getAttribute("loginErrMsg");
String loginMsg = (errMsg == null) ? "" : errMsg; 
if(session.getAttribute("SessionId") == null){
%>		
<div class="container">
	<h2> TRIPFULL </h2>
	<div class = "loginForm">
	<ul>
		<li>
			<div class = "login">
			<form action= "<%=request.getContextPath() %>/loginCheck.do" method="post">
				<input type="text" class="form-control" id="loginId" placeholder="example@naver.com" name="loginId" required>
				<input type="password" class="form-control" id="loginPwd" placeholder="비밀번호 입력" name="loginPwd" required>
				<p class="display-6"><%= loginMsg %></p>
				<button type="submit" class="btn btn-primary btn-block" id="login">로그인</button>
			</form>
			</div>
		</li>
	</ul>
	</div><br>
	<div class ="loginFind">
		<ul>
		<li><a href="findId.jsp">아이디 찾기</a></li>
		<li><a href="findpass.jsp">비밀번호 찾기</a></li>
		<li><a href="regist.jsp">회원가입</a></li>
		</ul><br><br><br><br>
	</div>
</div>
<%
}else{
%>
<script type="text/javascript">
	location.href = "<%=request.getContextPath()%>/main.do";
</script>
<%
}
%>
</body>
</html>	



