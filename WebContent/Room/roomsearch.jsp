<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>roomsearch</title>
<%@ include file="../Main/headerPage.jsp"%>
<link rel="stylesheet" href="../css/roomsearch.css" />

</head>

<body>

	<div class="contents">
		<div class="resultArea">
			<div class="RAsearchbox">
				<input type="text" placeholder="어디로 떠나시나요?"> <input type="button" value="검색">
			</div>
			<div class="RAfilter">
				체크인 날짜<input type="date" value="체크인"> 체크아웃 날짜<input type="date" value="체크아웃">&nbsp; <input type="text" value="인원">
			</div>
		</div>

		<hr id="hr1">

		<div class="listArea">
			<div class="roomFilter">
				<!-- 테이블로 해도 괜찮을 듯 -->
				<table>
					<tbody>
						<tr>
							<td>가격</td>
							<br>
							<td>숨김</td>
						</tr>
						<tr>
							<td>평점</td>
							<br>
							<td>숨김</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="resultList">
				<ul class="list1">
					<div class="roomMainImg">
						<a href="roomdetail.jsp"> <img alt="" src="../images/gray.jpg">
						</a>
					</div>
					<a href="roomdetail.jsp">
						<div class="roomMainInfo">
							<br> <span id="roomName">그랜드 하얏트 제주</span> <span id="roomStar">★ 4.7</span><br>
							<br> <span>최저가&nbsp;</span><span id="roomPrice">150,000</span><span>원</span> <a href="roomReservation.jsp"><button type="submit">&nbsp;예약하기&nbsp;</button></a>
						</div>
					</a>
				</ul>
				<ul class="list2">
					<div class="roomMainImg">
						<a href="roomdetail.jsp"> <img alt="" src="../images/gray.jpg">
						</a>
					</div>
					<a href="roomdetail.jsp">
						<div class="roomMainInfo">

							<br> <span id="roomName">그랜드 하얏트 제주</span> <span id="roomStar">★ 4.7</span><br>
							<br> <span>최저가&nbsp;</span><span id="roomPrice">150,000</span><span>원</span> <a href="roomReservation.jsp"><button type="submit">&nbsp;예약하기&nbsp;</button></a>
						</div>
					</a>
				</ul>
			</div>

		</div>



	</div>
<%@ include file="../Main/footer.jsp" %>

</body>
</html>