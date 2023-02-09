<%@page import="ddit.item.service.ItemServiceImpl"%>
<%@page import="ddit.item.service.IItemService"%>
<%@page import="ddit.vo.TourVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Main/headerPage.jsp" %>


<%
	String tour_code = (String)request.getParameter("tour_code");
	IItemService service = ItemServiceImpl.getInstance();
	
	TourVO vo = service.tourSelectOne(tour_code);
	String member_id = "";
	
	String alert = (String)request.getAttribute("alert");
	String wishCheck = (String)request.getAttribute("wishCheck");

	
	//다른거
	if(alert == "true"){
		alert = "on";	
	}else{
		alert = "off";
	}
	
	if(session.getAttribute("SessionId") != null){
		member_id = (String)session.getAttribute("SessionId");
    } 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src ="<%=request.getContextPath()%>/js/mapView.js"></script>
<title>관광지 상세 설명 페이지</title>
<script>
var member_id = '<%=member_id%>';
var tour_code = '<%=tour_code%>';
var reviewNo = "";

$(function() {
	
	// 지도 출력하기
	ypoint = $('.ypoint').attr('id')
	xpoint = $('.xpoint').attr('id')
	
	showMap(ypoint, xpoint);
	$(document).on('click', '.showMap',function() {
	//alert('지도 봅니다잉' + '위도' + ypoint + '경도' + xpoint)
		showMap(ypoint, xpoint);
	})
	
	
	init(member_id, tour_code); // 기본값 세팅 메서드   댓글출력, 찜확인, 리뷰확인

	
	//클릭 이벤트  찜하기, 리뷰하기
	$('.wish').on('click', function() {	
		tour_Check_Wish(member_id, tour_code);	
	})
	
	// 리뷰 삭제하기
	$(document).on('click', '.deleteReply', function() {
		reviewNo = $(this).parents('.replyDiv').find('.reviewNo').text();
		tour_review_delete();	
	})

	//리뷰 수정하기
	$(document).on('click', '.updateReply', function() {
		reviewNo = $(this).parents('.replyDiv').find('.reviewNo').text();
		$(document).on('click', '#placeRegist2', function() {	
			tour_review_update(reviewNo);	
		})
	})
	
	
	$(document).on('click', '.replyId', function() {
		
		b = $(this).text();
		a = '<%=member_id%>';
	
		// 클릭한 이 본인 리플인지 체크 => member_id가 같은지 비교
		if(a==b){
				$('#staticBackdropLabel').text("리뷰 수정하기");
				if($(this).parents('.replyDiv').find('.delUpbtn').hasClass("divOnOff")){
					$(this).parents('.replyDiv').find('.delUpbtn').removeClass('divOnOff');
				}else {				
					$(this).parents('.replyDiv').find('.delUpbtn').addClass('divOnOff');
				}
		}else{
				alert("본인 게시글이 아닙니다.");		
		}
	})

	
	// 리뷰하기       show.bs.modal은 모달창이 실행되기 전에 실행되는 함수
	$('#staticBackdrop').on('show.bs.modal', function(e) {
		
			// 중복 검사   tour_review_check 메서드는 true와 false를 반환하는 메서드임 
			// 이미 리뷰를 작성했으면 true반환 리뷰를 작성하지 않았으면 false 반환
		if(tour_review_check()){
			alert("이미 리뷰를 작성 하셨습니다.")
			$(e).modal('hide');				
		}else{
			$('#staticBackdropLabel').text("리뷰 등록");
			$('#placeRegist').on('click', function(){
				tour_review_insert();					
			})
		}
	})
})



</script>
<style>

.replyId:hover{
	color : red;
}

.divOnOff{
	display : none;
}
.tourTitle{
	display : flex ; 
	flex-direction : row; 
	justify-content: space-between; 
	align-items: center;
}	
</style>



</head>
<body>

<!-- 여행지 등록 모달 -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="staticBackdropLabel">리뷰 등록</h3>
        <button type="button" class="close btn btn-primary" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<!-- 폼 태그 시작 -->
      <form  enctype="multipart/form-data">
<!-- 	여행 종류선택하기     -->

	<input type="hidden" name="member_id" value="<%=member_id %>">
	<input type="hidden" name="tour_code" value="<%=tour_code %>">
  <div class="form-group">
    <label for="exampleFormControlInput1">리뷰내용</label>
    <textarea class="form-control" name="t_content" placeholder="리뷰 내용을 작성해 보아요."></textarea>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect2">별점</label>
    <select class="form-control" name="t_star" id="placeType">
      <option value = "5">★★★★★</option>
      <option value = "4">★★★★</option>
      <option value = "3">★★★</option>
      <option value = "2">★★</option>
      <option value = "1">★</option>
      
    </select>
  </div>   
   <div class="form-group">
    <label for="exampleFormControlFile1">사진 등록</label>
    <input type="file" class="t_pic" id="exampleFormControlFile1" name = "placePhoto" >
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
<!--  모달 끝  -->
<!--  --------------------------------------------------------------------------------------------------------- -->


<!-- 여행지 수정 모달 -->
<div class="modal fade" id="staticBackdrop2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="staticBackdropLabel">리뷰 수정</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<!-- 폼 태그 시작 -->
      <form  enctype="multipart/form-data">
<!-- 	여행 종류선택하기     -->



	<input type="hidden" name="member_id2" value="<%=member_id %>">
	<input type="hidden" name="tour_code2" value="<%=tour_code %>">
  <div class="form-group">
    <label for="exampleFormControlInput1">리뷰내용</label>
    <textarea class="form-control" name="t_content2" placeholder="리뷰 내용을  수정해 봅시다."></textarea>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect2">별점</label>
    <select class="form-control" name="t_star2" id="placeType2">
      <option value = "5">★★★★★</option>
      <option value = "4">★★★★</option>
      <option value = "3">★★★</option>
      <option value = "2">★★</option>
      <option value = "1">★</option>
      
    </select>
  </div>   
   <div class="form-group">
    <label for="exampleFormControlFile1">사진 등록</label>
    <input type="file" class="t_pic2" id="exampleFormControlFile1" name = "placePhoto" >
  </div>
</form>
<!-- 폼태그 끝 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="placeRegist2">수정하기</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>
<!--  모달 끝  -->
<!-- ---------------------수정모달창-------------------------- -->


<input class="dataStore"  type="hidden" value="1">
	
	<table style="visibility: hidden;">
		<tr>
			<td class="title">코드</td>
			<td id="code"><%=vo.getTour_code()%></td>
		</tr>
	</table>

<div class="container">
	<div class="row">
		<div class='col-8 offset-sm-1 divDetail'> <!-- 상세정보, 리뷰 출력할 곳  -->
			<div class = "detail">  <!--  상세정보 찍기 -->
				<div class = "tourTitle " style="display : flex ; flex-direction : row; justify-content: space-between; align-items: center;">
						<h1><p class="name"  id="<%=vo.getTour_name()%>"><%=vo.getTour_name()%></p></h1> 					
				<!-- style="display : flex ; flex-direction : row; justify-content: space-between; align-items: center;"  roomtitle에 주ㅕ야할 스타일 -->
				</div>
				<hr>
				<div class="tourInfo">
				<h4>관광지 정보</h4>
				<br>
				<p class="avgstar" id="<%=vo.getTour_avgstar()%>">평균 별점 : <%=vo.getTour_avgstar()%>점</p>	
				<p class="city" id="<%=vo.getTour_city() %>" style="display: none">지역 : <%=vo.getTour_city() %> </p>
				<p class="addr" id="<%=vo.getTour_addr() %>">주소 : <%=vo.getTour_addr() %> </p>
				<p class="tel" id="<%=vo.getTour_tel() %>">전화번호 : <%=vo.getTour_tel() %></p>
				<p class="ypoint" id="<%=vo.getTour_ypoint() %>" style="display: none">위도 : <%=vo.getTour_ypoint() %></p>
<%-- 				<p class="ypoint" id="<%=vo.getTour_ypoint() %>" >위도 : <%=vo.getTour_ypoint() %></p> --%>
				<p class="xpoint" id="<%=vo.getTour_xpoint() %>" style="display: none">경도 : <%=vo.getTour_xpoint() %></p>
<%-- 				<p class="xpoint" id="<%=vo.getTour_xpoint() %>" >경도 : <%=vo.getTour_xpoint() %></p> --%>
			 	<br><hr>
				</div>
				<br>
				<img src="/ddit_MiddleProject/ImageView.do?placeCode=<%=vo.getTour_code() %>" width="300" height="300" class="card-img-top" alt="...">
				<br><br>
				<hr>
				<br>
				<div id="map" style="width:100%;height:350px;"></div>
				<br>
				<hr>
				<br>
			</div>
			<div class = "option">  <!--  일정추가 찜하기버튼 -->
				<input type="hidden" value="true" class="alert_on">
				<input type="button" value="찜하기" class="wish btn btn-outline-danger" >
				<input type="button" value="리뷰하기" class="tourReview btn btn-primary" data-toggle="modal" data-target="#staticBackdrop" > 
				<input type="button" value="일정추가 " id="addtripbtn" class="btn btn-primary stretched-link" data-toggle="modal" data-target="#addTrip">
			</div>
			<br>
			<hr>
			<h4>리뷰</h4>
			<br>
			<div class="reviewBox"> <!--  리뷰 찍기 -->
			</div>
		</div>
	</div>
</div>	
<%@ include file="../Main/footer.jsp" %>

</body>
</html>