<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.TripDayVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<TripDayVO> list = (List<TripDayVO>)request.getAttribute("result");
	
	Gson gson = new Gson();
	
	String ndayListJson = gson.toJson(list);
	
	out.print(ndayListJson);
	
	out.flush();
	
	//response.sendRedirect(request.getContextPath() + "/member/admin.jsp");
// 	request.getRequestDispatcher("/member/AdminPage.do").forward(request, response);
%>