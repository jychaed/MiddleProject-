<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<%
	int res = (Integer) request.getAttribute("count");

	if(res > 0){
%>
	{
		"flag" : "<%=res %>"
	}	
<%		
	}else {
%>
	{
		"flag" : "실패"
	}

<%		
	}
%>    