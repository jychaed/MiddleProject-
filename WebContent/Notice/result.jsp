<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 서블릿에서 저장된 결과값 꺼내기
// Writer.java 참고
	int res = (Integer) request.getAttribute("result");
	if(res > 0){
%>
	{
		"flag"	: "성공해따리~아싸"
	}

<%		
	}else{
%>
	{
		"flag" 	: "실패해부렀네~띠로리"
	}
	
<%		
	}
%>