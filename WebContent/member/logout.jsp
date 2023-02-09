<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.removeAttribute("SessionName");
session.removeAttribute("SessionId");

response.sendRedirect(request.getContextPath() + "/Main/main.jsp");


%>