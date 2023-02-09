<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>
    
<%


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
<title>여행으로 가득 채우다, 트리풀</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=aded6ad6571a46e330f8407c432ddeb4&libraries=services"></script>
  <style>
    .customoverlay {position:relative;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;}
.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay a {display:block;text-decoration:none;color:#000;text-align:center;border-radius:6px;font-size:14px;font-weight:bold;overflow:hidden;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.customoverlay .title {display:block;text-align:center;background:#fff;margin-right:35px;padding:10px 15px;font-size:14px;font-weight:bold;}
.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
  
  .hideMap{
  
  	display : none;
  	
  }
  
  </style>
    

<!-- 	<script src = "../js/js.js"></script> -->
	<script src ="<%=request.getContextPath()%>/js/tour.js"></script>
	<script src = "<%=request.getContextPath()%>/js/js.js"></script>
	<script src = "<%=request.getContextPath()%>/js/room.js"></script>
	<script src = "<%=request.getContextPath()%>/js/trip.js"></script>
	<script src = "<%=request.getContextPath()%>/js/lounge.js"></script>
	<script src = "<%=request.getContextPath()%>/js/trip.js"></script>
	<script src = "<%=request.getContextPath()%>/js/moment.js"></script>

	

    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">

    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <script src ="<%=request.getContextPath()%>/js/jquery.serializejson.min.js"></script>

</head>



<script type="text/javascript">

var map;
var mapContainer;
var mapContainerArr = [];
var mapArr = [];
var mapValueArr = [];
var hideMapArr = [];
var member_id = '<%=mypageCheck%>';
var trip_no = '<%=mysession%>';


timereset = function() {
	var date = new Date();
	var hour = date.getHours();
	var minute = date.getMinutes();
	var second = date.getSeconds();;

	var time = "현재시간 : " + hour+"시 "+minute+"분 "+second+"초";
	
	
	return time;
}
	
	scrollToTop = function(){
		window.scrollTo(0,0);
	}

	$(function(){
		
		
		time = timereset();
		
		$('#clock').html(time);
		
		setInterval(function() {
			
			time = timereset();
			
			$('#clock').html(time);
			
		}, 1000);
		
		
		
		$('#sessionCheck').on('click', function(){	
			alert(<%=mysession%>)
		})
		
		
		$('.nav-link').on('click', function(){

			a = $(this).text();
			
			if("관광" == a){
					location.href = 
					<%if(session.getAttribute("SessionId") == null){
					%>
					"<%= request.getContextPath()%>/member/login.jsp";
					<%
					}else{
					%>	
					"<%= request.getContextPath()%>/Tour/tourMain.jsp";
					<%
					}
					%>
			}else if("숙소" == a){
				location.href = 
					<%if(session.getAttribute("SessionId") == null){
					%>
					"<%= request.getContextPath()%>/member/login.jsp";
					<%
					}else{
					%>	
					"<%= request.getContextPath()%>/Room/roomitem.jsp";
					<%
					}
					%>
								
			}else if("맛집" == a){
				location.href = 
								<%if(session.getAttribute("SessionId") == null){
									%>
									"<%= request.getContextPath()%>/member/login.jsp";
									<%
									}else{
									%>	
									"<%= request.getContextPath()%>/Food/foodMain.jsp";		
									<%
									}
									%>
 			}else if("라운지" == a){
 				location.href = 	<%if(session.getAttribute("SessionId") == null){
									%>
									"<%= request.getContextPath()%>/member/login.jsp";
									<%
									}else{
									%>	
									"<%= request.getContextPath()%>/Lounge/loungeMain.jsp";
									<%
									}
									%>
 			}else if("내 일정" == a){
 				location.href = 	<%if(session.getAttribute("SessionId") == null){
					%>
					"<%= request.getContextPath()%>/member/login.jsp";
					<%
					}else{
					%>	
					"<%= request.getContextPath()%>/trip/m_TripList.jsp";
					<%
					}
					%>
 			}else if("현재 진행중인 일정" == a){
 					location.href = 	<%if(session.getAttribute("SessionId") == null){
					%>
					"<%= request.getContextPath()%>/member/login.jsp";
					<%
					}else{
					%>	
					"<%= request.getContextPath()%>/trip/m_TripList.jsp";
					<%
					}
					%>
 			}
 							
		})
		
		
		//헤더 상단 이벤트 // 마이페이지 버튼 활성화
		$('.mypage').on('click', function() {
				location.href = "<%=request.getContextPath()%>/member/myPage.jsp";
		})
	
	
		//<input type="button" value="일정추가 " id = "addtrip" class ="btn btn-primary stretched-link" data-toggle="modal" data-target="#addTrip">
		//data : {'trip_no' : number, "member_id" : id},
		// 모달 이벤트 
		
// 		$(document).on('click','#addtripbtn', function() {
// 			$('.modalDataBox').empty();		
// 			modal_trip_list(this);	
// 		})
		
		$(document).on('click','#addtripbtn', function() {
			$('.modalDataBox').empty();

			
			
			hideMapArr = ["hideMap", "hideMap", "hideMap", "hideMap", "hideMap"];
			mapValueArr = ["지도보기", "지도보기", "지도보기", "지도보기", "지도보기"];
			
			var arr = modal_trip_list(hideMapArr, mapValueArr);   // [ [map], [map] ], [ [map], [map] ] ] 이런구조임
			
			mapArr = showRouteMap(arr);
			
		})
		
		$('#addTrip').on('shown.bs.modal', function(e) {


			for(let i = 0; i < mapArr.length; i++){
				
				if(mapArr[i] != null){
					console.log(mapContainerArr[i])
					
					mapContainerArr[i].style.width = "466px";
					mapContainerArr[i].style.height = "200px";
					mapArr[i].relayout();
				}else {
					continue;
				}
				
			}
				
			
		})

		
			
		
		
		$(document).on('click', '.addDaydetail', function() {
			
			// 장소를 추가하기전에 이미 등록한 장소인지 확인 ntrip_no와 해당 주소를 비교
			detail_addr = $('.addr').attr('id');
			ntrip_no = $(this).attr('id');
			detail_name = $('.name').attr('id');
			ypoint = $('.ypoint').attr('id');
			xpoint = $('.xpoint').attr('id');
			
			
			if(checkArea()){	
				insertDetailDay(this);
			}else {
				return false;
			}

				
		})
		
		$(document).on('click', '.deleteDetail', function(){
			
			detailday_code = $(this).parent('.detailDataBox').find('#detailday_code').val();
			detailDayaDelite(this);
		})
		
		
		//맵 열고 닫는 버튼
		$(document).on('click', '.hideOffbtn', function() {
				hideOffbtnMap(this);	
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
    
    
    background-color : ;
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





.boxbox2 {

	border : 1px solid black;
}

.detailBox{
	border : 1px solid black;
}
.nav {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
    justify-content: center;
    }
h3{
	padding:15px;
}

.scrollupBtn{

	position : fixed;
	
	bottom : 10%; 
	right : 10%;
	font-size : 1.5em;
	
	z-index : 1;
}
    
/*안녕~~~*/
</style>
<body>
<div class="off_canvars_overlay">
</div>
    <div class="header" >
        <div class="container" id="head">
            <div class="row">
                <div class="col-md-2"><a class = "hometag"  style = "font-size: 30px; "href= "<%=request.getContextPath() %>/Main/main.jsp" >TRIPFULL</a>  </div>
                <div class="col-md-7">
                </div>
        			 <div class="col-md-3 row">
                  

                  
                   <%if(session.getAttribute("SessionId") == null){ %> 
                   <div class="col-sm-4"><a href = "<%=request.getContextPath() %>/member/login.jsp">공지사항</a></div>
                   <% }else{ %>
                  <div class="col-sm-4"><a href = "<%=request.getContextPath() %>/Notice/noticeMain.jsp">공지사항</a></div>
                   <% } %>


<%if(session.getAttribute("SessionId") == null){
%>
                   <div class="col-sm-4"><a href="<%=request.getContextPath() %>/member/login.jsp">로그인</a></div>
	                <div class="col-sm-4"><a href="<%=request.getContextPath() %>/member/regist.jsp">회원가입</a></div>
<%
}else{
%>   
                   <div class="col-sm-4"><a href="<%=request.getContextPath() %>/member/logout.jsp">로그아웃</a></div>
<%
}
%>                   
	                <div class="col-sm-4 dropMenu">
	      				<ul>
	      					<li>
	      						<a class="mypage"  style="display : <%=type %>" >
	                			<img alt="<%=request.getContextPath() %>/images/사람아이콘.png" src="<%=request.getContextPath()%>/images/사람아이콘.png">
	                			</a>	
	                			<!-- <ul class="dropli">
		 							<li><a href="#">마이페이지</a></li>
		 							<li><a href="#">내 일정보기</a> </li>
		 							<li><a href="#">내 찜  보기</a></li>
		 							<li><a href="#">내 리뷰 보기</a> </li>
	 							</ul> -->
	                		</li>	 						
	      				</ul>
	                	
	                	
	                	
	                </div>
                </div>
            </div>
          </div>
    
    </div>
    
    
    

	<div class="container nav-tabs">
		<div class="row "> &nbsp;</div>
	</div>


	<div class="container nav-tabs">
		<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">	
			<ul class="nav  justify-content-space-around lineAdd">

			  <li class="nav-item">
			    <a class="nav-link" href="javascript:void(0)">숙소</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="javascript:void(0)">관광</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="javascript:void(0)">맛집</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="javascript:void(0)">라운지</a>
			    </li>
			  <li class="nav-item">
			    <a class="nav-link" href="javascript:void(0)">내 일정</a>
			  </li>
				<%if("admin".equals((String)session.getAttribute("SessionId"))){
%> 
		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath()%>/AdminPage.do">관리하기</a>
		  </li>
<%
} 
 %>	

		  </ul>
			
		</div>
		<div class="col-md-3">
			<ul>
				<li class="nav-item">
			   	 <a class= "nav-link" id ="clock" style="display:inline-block ; text-align: right;  font-size: 15px; "> </a>
			   	 <input type="date" class="form-control" id="trip_start" name="trip_start" required="" style="
    width: 46px;
    border: none;
    display: inline-block;
    background-color : #F6FAFC;
">
			   	
			  </li>
			 </ul>
		</div>
		</div>
		
	</div>

<!-- 	<div class="scrollupBtn "><input type="button" onclick="scrollToTop(); return false;" value = "TOP"></div> -->
	<div class="scrollupBtn "><a onclick="scrollToTop(); return false;">TOP</a></div>
	
	<!--  모달모다로달 -->
	<!-- 여행지 수정 모달 -->
<div class="modal fade" id="addTrip" data-keyboard="true" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="staticBackdropLabel">일정추가</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<!-- 폼 태그 시작 -->
      <form  enctype="multipart/form-data">
<!-- 	여행 종류선택하기     -->


  <div class="modalDataBox">
    
  </div>

</form>
<!-- 폼태그 끝 -->
      </div>
      <div class="modal-footer">
        <input type="hidden" class="btn btn-primary" id="placeRegist2">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">나가기</button>
      </div>
    </div>
  </div>
</div>
<!--  모달 끝  -->
	

	
</body>

</html>