<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String FindPass =  (String)request.getAttribute("result");
	if( FindPass != null){
%>
	{
		"flag"	: "<%=FindPass %>"
	}

<%		
	}else{
%>
	{
		"flag" 	: "실패"
	}
	
<%		
	}
%>