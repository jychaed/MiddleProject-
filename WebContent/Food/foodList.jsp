<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.FoodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <%
    	List<FoodVO> list = (List<FoodVO>) request.getAttribute("list");
    
    	Gson gson = new Gson();
    	
    	String result = gson.toJson(list);
    	
    	out.print(result);
    	
    	out.flush();
   
    
    %>
    
    
    