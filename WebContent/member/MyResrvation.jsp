<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.RoomResVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
   //서블릿에서 저장
   List<RoomResVO> list =(List<RoomResVO>) request.getAttribute("list");
   System.out.print(list);	
   Gson gson =new Gson();
   String result = gson.toJson(list);
   System.out.print(result);
   
   out.print(result);
   out.flush();
 %>