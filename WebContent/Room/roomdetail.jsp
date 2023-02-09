<%@page import="ddit.item.service.ItemServiceImpl"%>
<%@page import="ddit.item.service.IItemService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#footera{
	margin-top : 5%;
	}
</style>
</head>
<%@ include file="../Main/headerPage.jsp"%>
<script src="<%=request.getContextPath()%>/js/review.js"></script>
<script src="<%=request.getContextPath()%>/js/mapView.js"></script>
<script type="text/javascript">

<%request.setCharacterEncoding("UTF-8");

String roomcode = request.getParameter("id");
//db연결처리 

String member_id = "";

if (session.getAttribute("SessionId") != null) {
	member_id = (String) session.getAttribute("SessionId");
}%>


$(function(){
	roomcode= '<%=roomcode%>'
	member_id= '<%=member_id%>'
	rooom_wish_button(member_id, roomcode );
	
// 	room_reservation(roomcode,member_id)
	// 예약하기 버튼 누르면 실행하는 함수
	$('#reservation').on('click' , function(){
		
		startday = $('#startday').val();
		endday = $('#endday').val();
		console.log(startday, endday)
		if(startday == "" || endday == ""){
			alert('숙소 일정을 선택해 주세요');
			return false;
		}
		
		$.ajax({
			url : '/ddit_MiddleProject/RoomRes.do',
			data : {"roomcode": roomcode , "member_id":  member_id,  "startday": startday , "endday" : endday},
			type :'post',
			success : function(res){
				alert("예약이 완료되었습니다");
				
			},
			error :function(xhr){
				alert(xhr.status)
			},
			dataType : 'json'
		})
	})
	
	// 상세 페이지 출력하기
	room_selectOne(roomcode);
	//별점정보 최신화
	//room_avgstar_update(roomcode);
	
	// 해당 숙소 리뷰 출력하기
	room_review_list(roomcode);
	
	// 찜버튼 누르면 실행되는 이벤트
	$('.wish').on('click', function() {
		roomcheckWish(member_id, roomcode);	
// 		console.log(wv);
	})

	
// 	$('.roomReview').on('click', function() {
<%-- 		location.href = "<%=request.getContextPath()%>/Room/roomReviewForm.jsp?member_id="+member_id+"&roomcode="+roomcode; --%>
// 	})
	
	
	// 지도 출력하기
// 	xpoint = $('.xpoint').attr('id');
// 	ypoint = $('.ypoint').attr('id');
// 	alert('지도 봅니다잉' + '위도' + ypoint + '경도' + xpoint);
// 	showMap(ypoint, xpoint);
	//	$(document).on('click', '.showMap', function() {
	//		xpoint = $('.xpoint').attr('id');
	//		ypoint = $('.ypoint').attr('id');
	//		showMap(ypoint, xpoint);
	//	})
	
	
})

</script>
<style>
.divDetail {
	border-right: 1px solid lightgray;
	padding-right: 50px;
}

input[type=Date] {
	display: inline;
}

table {
	visibility: hidden;
}
</style>
<body>

	<table>
		<tr>
			<td class="title">코드</td>
			<td id="code"><%=roomcode%></td>
		</tr>
	</table>



	<div class="container">
		<div class="row">
			<div class='col-6 offset-sm-1 divDetail' style=" margin-right: 42px;  padding-right: 0px; margin-left: 37.5;">
				<div class="detail"></div>
				<div class="option">
					<input type="button" value="" class="wish btn btn-primary ">&nbsp;&nbsp; <input type="button" value="일정추가 " id="addtripbtn" class="btn btn-primary stretched-link" data-toggle="modal" data-target="#addTrip">
				</div>	
				<hr>
			<h5>리뷰</h5>			
				<hr>	
				<div class="dataBox"></div>	
			</div>		
		<div class='col-3 offset-sm-1' >
		<form onsubmit="return false;">
		    <div class="form-group" >
			    <label for="startday">출발</label>
				<input type="date" class="form-control" id="startday" name="member_birth" required>
		    </div>
		    <div class="form-group">
			    <label for="endday">도착</label>
				<input type="date" class="form-control" id="endday" name="member_birth" required>
		    </div>
			<button type="button" class="btn btn-primary " id="reservation">예약하기</button>
		 </form> 
		 </div>
		</div>
	</div>

<div id = "footera">
	<%@ include file="../Main/footer.jsp" %>
</div>


</body>
</html>