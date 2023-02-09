<%@page import="ddit.vo.TripVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.List"%>
<%@page import="ddit.vo.TripDayVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<TripVO> list = (List<TripVO>)request.getAttribute("result");
	System.out.print("dsad=" + list);	


	Gson gson = new Gson();
	
	String ndayListJson = gson.toJson(list);
	
	out.print(ndayListJson);
	
	out.flush();
	
	//response.sendRedirect(request.getContextPath() + "/member/admin.jsp");
// 	request.getRequestDispatcher("/member/AdminPage.do").forward(request, response);
%>