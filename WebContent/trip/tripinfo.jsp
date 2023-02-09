<%@page import="ddit.vo.TripDayVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <%@ include file="../Main/headerPage.jsp"%>
  <%
		String trip_no =  request.getParameter("trip_no");

  
  		String member_id = (String)session.getAttribute("SessionId");
  %>
  <script>
  $(function(){
			var trip_no = '<%=trip_no%>'
			var member_id = '<%=member_id %>'
	
			
			member_trip_list(trip_no, member_id);
			
  })
  
  </script>

</head>
<body>
	 <div class="container p-3 my-3 border">
	
	<h3></h3>
	<div class="jumbotron">
 		 <p></p>
	</div>
	
	<div class='result1'></div>
 
</div> 



<%@ include file="../Main/footer.jsp" %>
</body>
</html>