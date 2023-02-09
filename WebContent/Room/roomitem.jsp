<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소메인 :트리플</title>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Anton' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Neucha' rel='stylesheet' type='text/css'>
</head>
<%@ include file="../Main/headerPage.jsp"%>
<style>
.search{
	padding-top : 50px;
}

.search form {
	flex-shrink: 0;
}

.listBox {
	display: flex;
	flex-direction: row;
	flex-basis: auto;
}

.filterList {
	flex-direction: column;
}

.filter {
	flex-wrap: nowrap;
}

.list {
	display: flex;
}

.card {
	margin: 5px;
	height: 28rem;
}
.card-body {
	margin-padding: 0px;
}
 .card-img-top{
	width:  17rem;
	height:  14rem;
} 

.acity {
	font-size: 1.5em;
	display: inline-block;
	padding: 10px 0px;
}
</style>
<script type="text/javascript">
$(function(){
	listRoom();	
	
	$('#searchbtn').on('click',function(){
		search = $('#search').val();
		searchRoom(search);
	})
	
 	$('.acity').on('click', function(){
		colname =  $(this).parent().attr('value');
		sortRoom(colname);
	}) 
 	
	// 숙소 리스트 뿌리기
})

</script>
<body>



<!-- 검색부분 -->
<div class="container search ">
    <form class="form-inline" onsubmit="return false;">
		<div class="col-md-3"><h3>&nbsp;&nbsp;&nbsp;&nbsp;숙소</h3></div>
		<div class="col-md-7 col-auto">
		   	<input id = "search" class="form-control mr-2" type="search" placeholder="Search" aria-label="Search">
		   	<button id = "searchbtn" class="btn btn-outline-info" type="submit">Search</button>
		</div>
		<div class="col-md-3">
		</div>
	</form>
<hr>
</div>

<!-- 왼쪽 필터링 -->
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


</body>
<%@ include file="../Main/footer.jsp" %>
</html>