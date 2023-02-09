<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 서블릿에서 저장된 결과값 꺼내기
// Writer.java 참고
	String idCheck =  (String)request.getAttribute("idCheck");
	if(!idCheck.equals("null")){
%>
	{
		"flag"	: "아이디가 중복됩니다, 다른 아이디를 입력해 주세요 "
	}

<%		
	}else{
%>
	{
		"flag" 	: "사용 가능한 아이디 입니다. "
	}
	
<%		
	}
%>