<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 서블릿에서 저장된 결과값 꺼내기
// Writer.java 참고
	String findId =  (String)request.getAttribute("result");
	if( findId != null){
%>
	{
		"flag"	: "<%=findId %>"
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