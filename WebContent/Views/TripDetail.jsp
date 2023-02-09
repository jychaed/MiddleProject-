<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.TripDetailVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
<%
	TripDetailVO vo = (TripDetailVO)request.getAttribute("vo");
	
	Gson gson = new Gson();

	String tripDetailvo = gson.toJson(vo);
		
	out.print(tripDetailvo);
		
	out.flush();
%>