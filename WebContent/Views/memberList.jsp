<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<MemberVO> list = (List<MemberVO>)request.getAttribute("memberlist");
	
	Gson gson = new Gson();
	
	String memberListJson = gson.toJson(list);
	out.print(memberListJson);
	out.flush();
	//response.sendRedirect(request.getContextPath() + "/member/admin.jsp");
// 	request.getRequestDispatcher("/member/AdminPage.do").forward(request, response);
%>