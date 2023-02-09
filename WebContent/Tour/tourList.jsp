<%@page import="ddit.vo.TourReviewVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.TourVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<%
		List<TourVO> tlist = (List<TourVO>)request.getAttribute("list");

		Gson gson = new Gson();
		
		String list = gson.toJson(tlist);
		
		out.print(list);
		
		out.flush();

	
%>    