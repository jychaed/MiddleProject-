<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.TripVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<% 
	List<TripVO> list = (List<TripVO>)request.getAttribute("result");
	
	Gson gson = new Gson();
	
	String update = gson.toJson(list);
	
	out.print(update);
	
	out.flush();
	%>
	
