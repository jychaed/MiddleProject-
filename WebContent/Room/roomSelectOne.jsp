<%@page import="ddit.vo.RoomVO"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<%

	RoomVO vo = (RoomVO)request.getAttribute("vo");
	
	Gson gson = new Gson();
	
	String vodata = gson.toJson(vo);
	
	out.print(vodata);
	
	out.flush();
%>    