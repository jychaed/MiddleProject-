<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.CustomerCenterVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<CustomerCenterVO> ccList = (List<CustomerCenterVO>) request.getAttribute("cclist");

	Gson gson = new Gson();
	String cclist = gson.toJson(ccList);
	
	out.print(cclist);
	out.flush();
	
	
	
	

%>