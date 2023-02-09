<%@page import="ddit.vo.TourVO"%>
<%@page import="ddit.item.service.ItemServiceImpl"%>
<%@page import="ddit.item.service.IItemService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/tour.js"></script>
</head>



<style>
.search{
	padding-top : 50px;
}
.search form{
	flex-shrink: 0;
}
.listBox{
/* 	display : flex; */
/* 	flex-direction: row; */
/* 	flex-basis: auto; */
}
.filterList{
	flex-direction: column;
}
.filter{
/* 	border-right: 1px solid black; */
}
.list{
	display : flex;
}
.card{
 	margin : 5px;
 	height: 29rem; 
 	
 	
}
.card-img-top{
	width:  17rem;
	height:  14rem;
}

.dataBox{
	position : absolute;
}

h2{
	position : relative;
}

.trbox {
	height : 350px;
}

.filterBox{
	
	width : 200px;
	float : left;
}

.areaTool {
	display : flex;
}

.tagvar{
	position : relative;
	left : 65%;
}

.tagvar a {
	padding : 20px;
}
.acity{
	font-size: 1.5em;
	display : inline-block;
	padding: 10px 0px;
}
</style>
<body>
<%@ include file="../Main/headerPage.jsp" %>

<script>

$(function() {
	
	str = "관광";
	
	// 관광지 목록 출력
	tourList();
	
	// 상세보기 클릭시 상세화면 출력
	$(document).on('click', '#rtbtn', function() {
		tourList();
	})
	
	// 검색하기
	$('#searchbtn').on('click', function(){
		var search = $('#searchVal').val();
		searchTour(search);

	})
	
	// 정렬(이름, 별점, 가격)
// 	$(document).on('click', '.tourname', function() {

// 		sortT = $(this).attr('name');
// 		sortDataList(sortT);
		
// 	})
	
	
})	


function detailTour(a) {
	var tourCode = $(a).find('#tourCode').text(); // 코드
		
	location.href = "<%= request.getContextPath()%>/Tour/tourDetail.jsp?tour_code="+tourCode;
	
	//selectOne(tourCode);
}


</script>

<!-- 검색부분 -->
<div class="container search ">
    <form class="form-inline">
		<div class="col-md-3"><h3>&nbsp;&nbsp;&nbsp;&nbsp;관광</h3></div>
		<div class="col-md-4 col-auto">
		   	<input class="form-control mr-2" type="search" placeholder="Search" aria-label="Search" id="searchVal">
		   	<input type = "button" class="btn btn-outline-info" id="searchbtn" value="Search">
		</div>
		<div class="col-md-4">
		</div>
	</form>
<hr>	
</div>

<!--  왼쪽 필터링 -->
	<div class="filterBox" style="display : none;">
		<div class=" filter">
				<ul class="nav nav-tabs justify-content-space-around filterList">
					  <li class="nav-item">
					    <a class="nav-link " href="#">가격필터</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link area" href="#">위치</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link" href="#">리뷰순</a>
					  </li>
					  <li class="nav-item">
					    <a class="nav-link " href="#">별점순</a>
					  </li>
					  <li class="nav-item">
						<a class="nav-link area">지역</a> 
						<ul>
							<li><a href="#">제주도</a></li>
							<li><a href="#">서울</a></li>
							<li><a href="#">대전</a></li>
							<li><a href="#">대구</a></li>
							<li><a href="#">부산</a></li>
						</ul>						
					  </li>
				</ul>		
		</div>

	 </div>





	
<div class="container list">
<!--  필터 -->
	<div class="col-2 filter">
		<ul class="nav nav-tabs justify-content-space-around filterList">
		  <li class="nav-item" value="room_price">
		    <a class="acity" href="#">가격필터</a>
		  </li>
		  <li class="nav-item" value="room_addr">
		    <a class="acity" href="#">위치</a>
		  </li>
		  <li class="nav-item" value="room_avgstar">
		    <a class="acity">별점순</a>
		  </li>
		  <li class="filter_city" value="room_city">
		    <a class="acity"  >지역</a>
		  </li>
		  <li class="filter_city" value="room_name">
		    <a class="acity"  >이름</a>
		  </li>
		</ul>		
	</div>
<!-- 아이템 출력부분 -->
	<div class ="dataBox col-lg-11"></div>



	

</div>


<%@ include file="../Main/footer.jsp" %>


</body>
</html>