<%@page import="ddit.vo.TripVO"%>
<%@page import="ddit.trip.service.TripServiceImpl"%>
<%@page import="java.util.List"%>
<%@page import="ddit.trip.service.ITripService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../Main/headerPage.jsp"%>
<title>Insert title here</title>
<%
	String member_id = (String)session.getAttribute("SessionId");	
	ITripService service = TripServiceImpl.getService();
	List<TripVO> triplist = service.tripList(member_id);
	
	String ntrip_no = " ";
	if((String)session.getAttribute("tNo_session") != null){
		ntrip_no = (String)session.getAttribute("tNo_session");
	}
	
%>
<script>


var tNo_session = null;
$(function(){
		

			member_id = '<%=member_id%>';	
			
			member_trip();

		
			$(document).on("click",'#t_t', function(){
			

			var trip_no = $(this).parent('.idbox').find('.trip_no').attr('value');
			
			var member_id = '<%=member_id%>';
			
			location.href = "<%=request.getContextPath()%>/trip/tripinfo.jsp?trip_no="+trip_no+"&member_id="+member_id;
			
		
			})
			$('#placeManage').on('click', function() {
				placeManage();
			});
	
			// 여행지 수정
			$('#placeRegist').on('click', function() {
				$.ajax({
					url : '/ddit_MiddleProject/TripUpdate.do',
					type : 'get',
		     	    data: vdata,  
			   
					success : function(res) {
					alert(res.flag)
					
				},
				error : function(xhr) {
					alert(xhr.status);
				},
				dataType : 'json'
			})	
		
			});

			$(document).on('click', '#selectTrip', function() {					
				tNo_session = $(this).parents('.idbox').find('.trip_no').text();
				trip_session_add();	
				location.reload();
			})
				

	
});

</script>
<style>
.search{
	padding : 50px 0px;
}
.search form{
	flex-shrink: 0;
}
.listBox{
	display : flex;
	flex-direction: row;
	flex-basis: auto;
}
.filterList{
	flex-direction: column;
}
.filter{
	flex-wrap: nowrap;
	border-right: 1px solid black;
}
.manage{
	display : flex;
	padding-top: 30px;
}
.card{
 	margin : 5px;
 	height: 29rem; 	
 	
}

</style>
</head>
<body>
<div class ="data"></div>
	
<div class="container manage">
	
<!--  필터 -->
	<div class="col-2 filter">
		<ul class="nav nav-tabs justify-content-space-around filterList">
		  <li class="nav-item">		  </li>
		  <li class="nav-item">
		    <a class="nav-link " href="<%=request.getContextPath() %>/trip/tripcalendar.jsp">일정 추가</a>
		  </li>
<%-- 		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath() %>/trip/tripinfo.jsp">상세 일정</a>
		  </li> --%>
		</ul>		
	</div>


	<div class="col-9 tripManage" >
		<h3 id="testBox"> 일정 목록</h3> 
		<hr>
	    <form class="form-inline">
			<div class="col-md-2"></div>
			<div class="col-md-10">
			</div>
		</form>
		<hr>
		<div>
			<table class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col">여행번호</th>
			      <th scope="col">여행제목</th>
			      <th scope="col">여행 시작 날짜</th>
			      <th scope="col">여행 종료 날짜</th>
			      <th scope="col">지역</th>
			      <th scope="col">일정선택</th>
			    </tr>
			  </thead>
			  <tbody>
			  	
			  	 	
			  </tbody>
			</table>

		</div>
			<div class="btn-group">
			  <button type="button"  data-toggle="modal" data-target="#staticBackdrop" class="btn btn-primary">수정</button>
			  <button type="button" class="btn btn-primary" id = "d_btn">삭제</button>

<!-- 모달 -->
 <div class="modal fade" id="staticBackdrop" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="staticBackdropLabel">여행지 수정</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

    <div class="modal-body">
<!-- 폼 태그 시작 -->
      <form  >
<!-- 	여행 종류선택하기     -->
  <div class="form-group" >
    <label for="exampleFormControlInput1">여행 번호</label>
    <input type="text" class="form-control" name = "trip_no" placeholder="">
  </div>
  <div class="form-group" >
    <label for="exampleFormControlInput1">여행 제목</label>
    <input type="text" class="form-control" name = "trip_title" placeholder="">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">여행 시작날짜</label>
    <input type="date" class="form-control" name = "trip_start" placeholder="">
  </div>
    <div class="form-group">
    <label for="exampleFormControlInput1">여행 종료날짜</label>
    <input type="date" class="form-control" name = "trip_end" placeholder="">
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect2">도시</label>
    <select class="form-control" name="trip_city" id="placeType">
     						<option value="seoul">서울</option>
			     			<option value="gangwon">강원도</option>
			   	 			<option value="dajeon">대전</option>
					     	<option value="mokpo">목포</option>
					     	<option value="busan">부산</option>
					     	<option value="jeju">제주</option>
    </select>
  </div>   
  <div class="form-group">
    <label for="exampleFormControlInput1">인원</label>
    <input type="text" class="form-control" name = "trip_people" placeholder="">
  </div>
 
</form>
<!-- 폼태그 끝 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="placeRegist">등록하기</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
      </div>
      </div>
      </div>
      </div>
      <!-- 모달끝 -->
			</div>
	</div>
</div>

  <%@ include file="../Main/footer.jsp" %>
</body>
</html>