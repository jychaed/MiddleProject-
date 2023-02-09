<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
	String mypageCheck = null;
	mypageCheck = (String)session.getAttribute("SessionId");
	String mysession = (String)session.getAttribute("tNo_session");
	String type = null;
	if(mypageCheck != null){
		type = "";
	}else{
		type = "none";
	}
		
%>    


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HeaderPage</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=aded6ad6571a46e330f8407c432ddeb4&libraries=services"></script>

	<script src ="<%=request.getContextPath()%>/js/tour.js"></script>
	<script src ="<%=request.getContextPath()%>/js/room.js"></script>
	<script src = "<%=request.getContextPath()%>/js/js.js"></script>
	<script src = "<%=request.getContextPath()%>/js/room.js"></script>
	<script src = "<%=request.getContextPath()%>/js/trip.js"></script>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
    <script src ="<%=request.getContextPath()%>/js/jquery.serializejson.min.js"></script>

</head>

<script type="text/javascript">

	$(function(){
		
		
		//헤더 상단 이벤트 // 마이페이지 버튼 활성화
		$('.mypage').on('click', function() {
				location.href = "<%=request.getContextPath()%>/member/myPage.jsp";
		})
		
	})		
		

</script>
    
<style>
div{
/* border : 1px solid lightblue; */
}
#head{
	
}

.header{
	padding-top : 30px;
}
.header img{
	width : 20px;
	height : 20px;
}
body{
    font-family: 'IBM Plex Sans KR', sans-serif;
}

.dropli{
	position : absolute;

}
.dropli li{

}

.dropMenu ul ul{
	display : none;
}

.dropMenu:hover .dropli{
	display : block;
	

}

.leftBox {
	float : right;
}
body p {
    margin-top: 0;
    margin-bottom: 2rem;
    font-size: 20px;
    letter-spacing: -1px;
    line-height: 30px;
}
.container {
    max-width: 1024px;
}

</style>

<body>


    <div class="header" >
        <div class="container" id="head">
            <div class="row">
                <div class="col-md-2"><a href= "../Main/main.jsp" >TripFull</a>  </div>
                <div class="col-md-6">
                	<form class="d-flex">
			      		<input class="form-control mr-2" type="search" placeholder="Search" aria-label="Search">
			      		<button class="btn btn-outline-info" type="submit">Search</button>
		    		</form>
                </div>
                <div class="col-md-4 row">
	                <div class="col-sm-3"><a href="../Notice/noticeMain.jsp">공지사항</a></div>
<%if(session.getAttribute("SessionId") == null){
%>
	                <div class="col-sm-3"><a href="../member/login.jsp">로그인</a></div>
<%
}else{
%>	
	                <div class="col-sm-3"><a href="../member/logout.jsp">로그아웃</a></div>
<%
}
%>	                
	                <div class="col-sm-3"><a href="../member/regist.jsp">회원가입</a></div>
	                <div class="col-sm-3 dropMenu">
	      				<ul>
	      					<li>
	      						<a class="mypage"  style="display : <%=type %>" >
	                			<img alt="../images/사람아이콘.png" src="<%=request.getContextPath()%>/images/사람아이콘.png">
	                			</a>	
	                			<ul class="dropli">
		 							<li><a href="#">마이페이지</a></li>
		 							<li><a href="#">내 일정보기</a> </li>
		 							<li><a href="#">내 찜  보기</a></li>
		 							<li><a href="#">내 리뷰 보기</a> </li>
	 							</ul>
	                		</li>	 						
	      				</ul>
	                	
	                	
	                	
	                </div>
                </div>
            </div>
        <p style="text-align: right;  font-size: 12px;  padding-right: 70px;"> <%= sf.format(nowTime) %> </p>
        </div>
    	<hr>
    </div>
   
   
   
   
   
</body>


</html>