<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../Main/headerPage.jsp" %>
<script src="../js/jquery.serializejson.min.js"></script>
<script src="../js/food.js"></script>
<link rel="stylesheet" href="../css/foodMain.css"/>
<style>

.acity{
	font-size: 1.5em;
	display : inline-block;
	padding: 10px 0px;
}
.card{
 	margin : 5px;
 	height: 29rem; 
 	
}

.card-img-top{
	width:  17rem;
	height:  14rem;
}

</style>



</head>
<body>
	
	<!-- 검색창 영역 -->

		<div class="container search">
			<form class="form-inline">
				<div class="col-md-3">
					<h3>&nbsp;&nbsp;&nbsp;&nbsp;맛집</h3>
				</div>
				<div class="col-md-4 col-auto">
					<input class="form-control mr-2" type="search" placeholder="Search"
						aria-label="Search" id="searchVal"> <input type="button"
						class="btn btn-outline-info" id="searchbtn" value="Search">
				</div>
				<div class="col-md-4"></div>
			</form>
			<hr>
		</div>




	<div class="container fluid list">
		<!--  필터 -->
		<div class="col-2 filter flex-direction-row">
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

		<!-- 내용 영역 -->
		<div class="col-11 contentArea"></div>
	</div>
	<script>

	// 맛집 리스트 출력
	foodList();
	
	// 맛집 이름 검색
	searchFood();

	
	
	// 맛집 상세보기
	function detailFood(a) {
	
			var food_code = $(a).find('#food_code').text(); // 코드
// 			alert(food_code);
			
			location.href = "<%=request.getContextPath() %>/Food/foodDetail.jsp?food_code=" + food_code;
	
	}

	
	
	</script>


	
<%@ include file="../Main/footer.jsp" %>
</body>
</html>