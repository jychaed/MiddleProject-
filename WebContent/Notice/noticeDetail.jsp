<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	NoticeVO noticeVo = (NoticeVO)request.getAttribute("noticedetail");
	Gson gson = new Gson();
	String nDetail = gson.toJson(noticeVo);
	
	out.print(nDetail);
	out.flush();
	
%>