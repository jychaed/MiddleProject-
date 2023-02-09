<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="../js/food.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 쓰기</title>

	<%
		String member_id = request.getParameter("member_id");
		String food_code = request.getParameter("food_code");
	
	%>
	
	
<style>

* {
	border-size : boxsizing;
}


h2 {
	text-align : center;
}

.tour-Review-Box{

	

	position : relative;
	left : 50%;
	transform : translateX(-50%);

	width: 500px;
	height : 650px;
	
	border : 1px solid black;
}


.tour-Reiew-Header {
	width : 100%;
	height : 100px;
	
	border : 1px solid black; 
}

</style>	
	
</head>
<body>

	<form action="<%=request.getContextPath()%>/FoodReviewInsert.do" method="post">
		<input value="<%=food_code %>" name="food_code">
		<input value="<%=member_id %>" name="member_id">
		
		<div class="food_reviewBox"> 
			<div class="food_reviewBox_header">
				작성자<input type="text" value="<%=member_id%>">
			</div>

			내용
			<textarea rows="5" cols="50" name="food_reviewBox_content"></textarea>

			별점
			<div>
				<input type="radio" name="star" value="1">★ 
				<input type="radio" name="star" value="2">★★ 
				<input type="radio" name="star" value="3">★★★ 
				<input type="radio" name="star" value="4">★★★★ 
				<input type="radio" name="star" value="5">★★★★★
			</div>

			<input type="submit" value="등록하기"> 
			<input type ="button" value ="돌아가기" onclick="location.href='<%=request.getContextPath()%>/Food/foodDetail.jsp?food_code=<%=food_code %>'">
		</div>

	</form>
<%@ include file="../Main/footer.jsp" %>

</body>
</html>