<%@page import="ddit.item.service.ItemServiceImpl"%>
<%@page import="ddit.item.service.IItemService"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.FoodVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Main/headerPage.jsp" %>

<%
	String food_code = (String) request.getParameter("food_code");
	
	System.out.print(food_code);
	
	IItemService service = ItemServiceImpl.getInstance();
	
	FoodVO vo = service.food_selectOne(food_code);
	
	String member_id = "";
	String alert = (String)request.getAttribute("alert");
	
	
	// 뭘까 이게...?
	if(alert == "true"){
		alert = "on";	
	}else{
		alert = "off";
	}
	
	
	// 로그인 세션 조건문
	if(session.getAttribute("SessionId") != null) {
		member_id = (String) session.getAttribute("SessionId");
	} 
	
	
	
%>

<!DOCTYPE html>
<html>
<script src="<%=request.getContextPath()%>/js/food.js"></script>
<script src="<%=request.getContextPath()%>/js/mapView.js"></script>
<head>
<meta charset="UTF-8">
<title>맛집 상세정보</title>

<style>
.detailTitle{
	width : 80%;
	position : relative;
	top : 5%;
	left : 20%;
}

.detailTable{
	width : 80%;
	position : relative;
	top : 8%;
	left : 20%;	
}

table{
	border : 2px solid black;
}

.detailTable th, td{
	padding : 10px;
}

.detailBtns{
	width : 80%;
	position : relative;
	top : 12%;
	left : 20%;	
}

.detailReview{
	width : 80%;
	position : relative;
	top : 20%;
	left : 20%;	
}

</style>

<script>

	var food_code = '<%=food_code%>';
	var member_id = '<%=member_id%>';
	var reviewNo = "";

	$(function() {
		
		// 지도 출력하기
		ypoint = $('.ypoint').attr('id');
		xpoint = $('.xpoint').attr('id');
		
		// alert('지도 봅니다잉' + '위도' + ypoint + '경도' + xpoint);
		
		showMap(ypoint, xpoint);
		$(document).on('click', '.showMap',function() {
			showMap(ypoint, xpoint);
		})
// 변수 초기화 -->이거하면 클릭이 안 됨;
// 		init(member_id, food_code);
		
		
// 리뷰 리스트 출력
		foodReviewList(food_code);
		
		
// 찜하기
		$('#wish').on('click', function() {
// 			alert("찜할 거야~");
			
			foodWish(member_id, food_code);
		})
		
		
// 리뷰 쓰기
		$('#staticBackdrop').on('show.bs.modal', function(b) {
			
			
// 			alert(foodReviewCheck());
			
			if(foodReviewCheck()) {  // 반환값 = true : 리뷰 작성 불가
				
				alert("이미 작성한 리뷰가 있습니다.");
				
				$(b).modal('hide');
		
			} else {  // 반환값 = false : 리뷰 작성 가능
				$('#staticBackdropLabel').text('리뷰 등록');
				
			}
			
		})
		
			// 엥 이거 밖에 써도 된대... 이유는... 나중에 알아보자^^
		$('#placeRegist').on('click', function() {
					foodReviewInsert();
					
					alert("리뷰 작성이 완료되었습니다.");
				})
		
				
				
				
		
// 내가 쓴 리뷰인지 확인하기
		$(document).on('click', '.reviewDiv', function() {
			
			a = '<%=member_id%>';  // member_id와
			b = $(this).text();	   // replyId의 값을 받아서
			
			if(a == b) {  // 비교하세용.
				$('#staticBackdropLabel').text("리뷰 수정");
			
				if($(this).parents('.reviewDiv').find('.delUpbtn').hasClass('divOnOff')) { 
					$(this).parents('.reviewDiv').find('.delUpbtn').removeClass('divOnOff');
				} else {
					$(this).parents('.reviewDiv').find('.delUpbtn').addClass('divOnOff');
				}
				
			} else {
				alert("수정 권한이 없습니다.")
			}

		})
		
		
		
		
// 리뷰 수정하기
		$(document).on('click', '.updateReview', function() {
			reviewNo = $(this).parents('.reviewDiv').find('.reviewNo').text();
			
			$(document).on('click', '#placeRegist2', function() {
				
				food_reviewUpdate(reviewNo);
			})
		})
		
		
		
		
// 리뷰 삭제하기
		$(document).on('click', '.deleteReview', function() {
			reviewNo = $(this).parents('.reviewDiv').find('.reviewNo').text();
			
			food_reviewDelete(reviewNo);
		})
		
		

	}) // function
	
</script>


</head>

<body>

<!-- 여행지 등록 모달 -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="staticBackdropLabel">리뷰 등록</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
<!-- 폼 태그 시작 -->
      <form  enctype="multipart/form-data">
<!-- 	여행 종류 선택하기     -->

	<input type="hidden" name="member_id" value="<%=member_id%>">
	<input type="hidden" name="food_code" value="<%=food_code%>">
  <div class="form-group">
    <label for="exampleFormControlInput1">리뷰 내용</label>
    <textarea class="form-control" name="f_content" placeholder="리뷰 내용을 작성해 BoA요."></textarea>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect2">별점</label>
    <select class="form-control" name="f_star" id="placeType">
      <option value = "5">★★★★★</option>
      <option value = "4">★★★★</option>
      <option value = "3">★★★</option>
      <option value = "2">★★</option>
      <option value = "1">★</option>
      
    </select>
  </div>   
   <div class="form-group">
    <label for="exampleFormControlFile1">사진 첨부</label>
    <input type="file" class="f_pic" id="exampleFormControlFile1" name="placePhoto">
  </div>
</form>
<!-- 폼태그 끝 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="placeRegist">등록</button>
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
<!-- 여행 종류선택하기 -->

	<input type="hidden" name="member_id2" value="<%=member_id %>">
	<input type="hidden" name="food_code2" value="<%=food_code %>">
  <div class="form-group">
    <label for="exampleFormControlInput1">리뷰 내용</label>
    <textarea class="form-control" name="f_content2" placeholder="리뷰 내용을 수정해 BoA영"></textarea>
  </div>
  <div class="form-group">
    <label for="exampleFormControlSelect2">별점</label>
    <select class="form-control" name="f_star2" id="placeType2">
      <option value = "5">★★★★★</option>
      <option value = "4">★★★★</option>
      <option value = "3">★★★</option>
      <option value = "2">★★</option>
      <option value = "1">★</option>
      
    </select>
  </div>   
   <div class="form-group">
    <label for="exampleFormControlFile1">사진 등록</label>
    <input type="file" class="f_pic2" id="exampleFormControlFile1" name = "placePhoto" >
  </div>
</form>
<!-- 폼태그 끝 -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="placeRegist2">수정</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>
<!--  모달 끝  -->
<!-- ---------------------수정모달창-------------------------- -->



<input class="dataStore"  hidden value="1">
<table style="visibility: hidden;">
		<tr>
			<td class="title">코드</td>
			<td id="code"><%=vo.getFood_code()%></td>
		</tr>
	</table>

<div class="container">
	<div class="row">
		<div class='col-8 offset-sm-1 divDetail'>
			
			<div class = "detail"> 
				<!-- 타이틀 영역 -->
				<div class = "tourTitle" >
					<h1><p class="name" id="<%=vo.getFood_name()%>"><%=vo.getFood_name()%></p></h1><br>
			<!-- style="display : flex ; flex-direction : row; justify-content: space-between; align-items: center;" -->
<!-- 					<button type="button" class="btn btn-primary btn-sm showMap" >위치 보기</button>					 -->
				</div>
				<hr>
				<!-- 상세정보 영역 -->
				<div class="tourInfo">
				<h4>맛집 정보</h4>
				<br>
				<p class="avgstar" id="<%=vo.getFood_avgstar()%>"><img src=""> 평균 별점 : <%=vo.getFood_avgstar()%>점</p>	
				<p class="city" id="<%=vo.getFood_city() %>" style="display: none">지역 : <%=vo.getFood_city() %> </p>
				<p class="addr" id="<%=vo.getFood_addr() %>">주소 : <%=vo.getFood_addr() %> </p>
				<p class="tel" id="<%=vo.getFood_tel() %>">전화번호 : <%=vo.getFood_tel() %></p>
<%-- 				<p class="ypoint" id="<%=vo.getTour_ypoint() %>" style="display: none">위도 : <%=vo.getTour_ypoint() %></p> --%>
				<p class="ypoint" id="<%=vo.getFood_ypoint() %>" style="display: none" >위도 : <%=vo.getFood_ypoint() %></p>
<%-- 				<p class="xpoint" id="<%=vo.getTour_xpoint() %>" style="display: none">경도 : <%=vo.getTour_xpoint() %></p> --%>
				<p class="xpoint" id="<%=vo.getFood_xpoint() %>" style="display: none">경도 : <%=vo.getFood_xpoint() %></p>
			 	<br><hr>
				</div>
				<br>
				<img src="/ddit_MiddleProject/ImageView.do?placeCode=<%=vo.getFood_code() %>" width="300" height="300" class="card-img-top" alt="...">
				<br><br>
				<hr>
				<br>
				<div id="map" style="width:100%;height:350px;"></div>
				<br>
				<hr>
				<br>
			</div>
			<!-- 옵션영역 -->
			<div class = "option">  
<!-- 				<input type="hidden" value="true" class="alert_on"> -->
				<input type="button" value="찜하기" id="wish" class="wish btn btn-outline-danger" data-target="#wish">
				<input type="button" value="리뷰하기" id="foodReview" data-toggle="modal" data-target="#staticBackdrop" class ="btn btn-primary stretched-link" data-toggle="modal" data-target="foodReview"> 
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
</div>	



<!-- 	<div class="detailTitle"> -->
<!-- 		<h2>맛집 상세정보</h2> -->
<!-- 	</div> -->
	
<!-- 	<div class="detailTable"> -->
<!-- 		<table border='1'> -->
<!-- 			<tr> -->
<!-- 				<th>상호명</th> -->
<!-- 				<th>별점</th> -->
<!-- 				<th>주소</th> -->
<!-- 				<th>전화번호</th> -->
<!-- 				<th>설명</th> -->
<!-- 			</tr> -->
<!-- 			<tr> -->
<%-- 				<td><%=vo.getFood_name()%></td> --%>
<%-- 				<td><%=vo.getFood_avgstar()%></td> --%>
<%-- 				<td><%=vo.getFood_addr()%></td> --%>
<%-- 				<td><%=vo.getFood_tel()%></td> --%>
<!-- 				<td>맛집 좋아~</td> -->
<!-- 			</tr> -->
<!-- 		</table> -->
<!-- 	</div> -->
	
<!-- 	<div class="detailBtns"> -->
<!-- 		<input type="button" value="찜하기" class="wish">  -->
<!-- 		<input type="button" value="리뷰 쓰기" class="foodReview" data-toggle="modal" data-target="#staticBackdrop"> -->
<!-- 		<input type="button" value="내 일정에 추가" id="addtrip"  class="insertTourDay"> -->
<%-- 		<input type="hidden" value="<%=member_id %>" id="member_id"> --%>
<%-- 		<input type="hidden" value="<%=food_code %>" id="food_code"> --%>
<!-- 	</div> -->

<!-- 	<div class="detailReview"> -->
<!-- 		<div class="reviewBox"></div> -->
<!-- 	</div> -->

<%@ include file="../Main/footer.jsp" %>
</body>
</html>




