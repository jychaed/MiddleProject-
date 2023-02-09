<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
.list{
	display : flex;
}
.card{
 	margin : 5px;
}
</style>
<body>
<%@ include file="../Main/headerPage.jsp" %>

<!-- 검색부분 -->
<div class="container search ">
    <form class="form-inline">
		<div class="col-md-2"></div>
		<div class="col-md-4 col-auto">
		   	<input class="form-control mr-2" type="search" placeholder="Search" aria-label="Search">
		   	<button class="btn btn-outline-info" type="submit">Search</button>
		</div>
		<div class="col-md-4">
	      <ul class="nav nav-tabs justify-content-space-around">
		  	<li class="nav-item dropdown">
	 	 		<select class="form-control" name="searchtype" id="searchtype">
	     			<option value="star">별점순</option>
	     			<option value="review">리뷰순</option>
	  			</select>
		  	</li>
		  </ul>	
		</div>
	</form>
</div>


<div class="container list">
<!--  필터 -->
	<div class="col-2 filter">
		<ul class="nav nav-tabs justify-content-space-around filterList">
		  <li class="nav-item">
		    <a class="nav-link " href="#">가격필터</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link " href="#">위치</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" href="#">리뷰순</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link ">별점순</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link ">지역</a>
		  </li>
		</ul>		
	</div>
<!-- 아이템 출력부분 -->
	<div class="col-9 listBox" >
		  <div class="card" >
		    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
		    <div class="card-body">
		      <h4 class="card-title">John Doe</h4>
		      <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
		      <a href="#" class="btn btn-primary">상세보기</a>
		    </div>
		  </div>
		  
		  <div class="card">
		    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
		    <div class="card-body">
		      <h4 class="card-title">John Doe</h4>
		      <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
		      <a href="#" class="btn btn-primary">상세보기</a>
		    </div>
		  </div>
		  
		  <div class="card">
		    <img class="card-img-top" src="img_avatar1.png" alt="Card image" style="width:100%">
		    <div class="card-body">
		      <h4 class="card-title">John Doe</h4>
		      <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
		      <a href="#" class="btn btn-primary">상세보기</a>
		    </div>
		  </div>
		</div>
	</div>


</body>
</html>