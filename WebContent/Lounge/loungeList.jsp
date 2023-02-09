<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.LoungeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<LoungeVO> list = (List<LoungeVO>)request.getAttribute("loungelist");
	
	Gson gson = new Gson();
	
	String loungeListJson = gson.toJson(list);
	out.print(loungeListJson);
	out.flush();
%>