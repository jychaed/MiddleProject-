<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.RoomVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//servlet에서 저장된 결과값 꺼내기 
	
	 List<RoomVO> list =(List<RoomVO>) request.getAttribute("list");
	
	 
	
%>    
    
    
[
	<%
		for(int i=0; i<list.size(); i++){
			RoomVO vo= list.get(i);
			if(i >0 ) out.print(",");
	%>
			{	
				"id"	:	"<%=  vo.getRoom_code() %>" ,
				"name"	:	"<%=  vo.getRoom_name() %>",
				"addr" 	:	"<%= vo.getRoom_addr() %>",
				"xpoint" 	:	"<%= vo.getRoom_xpoint() %>",
				"ypoint" 	:	"<%= vo.getRoom_ypoint() %>",
				"tel" 	:	"<%= vo.getRoom_tel() %>",
				"city" 	:	"<%= vo.getRoom_city() %>",
				"price" 	:	"<%= vo.getRoom_price() %>",
				"avgstar" 	:	"<%= vo.getRoom_avgstar() %>",
				"image" 	:	"<%= vo.getRoom_image() %>"
				
				
			
			}
			
			
	<%  } %>
]  






