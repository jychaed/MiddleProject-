<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<NoticeVO> noticeList = (List<NoticeVO>) request.getAttribute("noticeList");

	Gson gson = new Gson();
	String nlist = gson.toJson(noticeList);
	
	out.print(nlist);
	out.flush();
	
	
	
	

%>
