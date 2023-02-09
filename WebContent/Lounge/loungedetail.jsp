<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.LoungeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	LoungeVO vo = (LoungeVO) request.getAttribute("vo");

	Gson gson = new Gson();
	
	String vodata = gson.toJson(vo);
	
	out.print(vodata);
	
	out.flush();


%>
