<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/tourtest.js"></script>
<%@ include file="../Main/headerPage.jsp" %>
<style>
.search{
	padding : 50px 0px;
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
}
.dataBox{
	position : absolute;
	left : 15%;
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
</style>
<script>
$(function() {
	tourListTest(); // 카드 찍는 곳  
})
</script>
</head>
<body>
<!-- 검색부분 -->
<div class="container search fluid">
<h2>테스트</h2>
    <form class="form-inline">
		<div class="col-md-2"></div>
		<div class="col-md-4 col-auto">
		   	<input class="form-control mr-2" type="search" placeholder="Search" aria-label="Search" id="searchVal">
		   	<input type = "button" class="btn btn-outline-info" id="searchbtn" value="Search">
		</div>
		<div class="col-md-4">
	      <ul class="nav nav-tabs justify-content-space-around">
		  	<li class="nav-item dropdown">
	 	 		<select class="form-control" name="searchtype" id="searchtype">
	     			<option value="star">별점순</option>
	     			<option value="review">리뷰순</option>
	  			</select>
	  			<select class="form-control" name="searchtype" id="searchtype">
	     			<option value="star">지역별</option>
	     			<option value="review">서울</option>
	     			<option value="review">대전</option>
	     			<option value="review">제주</option>
	  			</select>
	  			<select class="form-control" name="searchtype" id="searchtype">
	     			<option value="star">이름</option>
	     			<option value="review">리뷰순</option>
	  			</select>

		  	</li>
		  </ul>	
		</div>
	</form>
</div>



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

	
<div class="dataBox"></div>


<%@ include file="../Main/footer.jsp" %>
</body>
</html>









