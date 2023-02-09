<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.TourReviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<%

		List<TourReviewVO> trlist = (List<TourReviewVO>)request.getAttribute("list");

		Gson gson = new Gson();
		
		String list = gson.toJson(trlist);
		
		out.print(list);
		
		out.flush();
	

%>    