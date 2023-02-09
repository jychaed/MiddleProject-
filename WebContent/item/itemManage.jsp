<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.RoomVO"%>
<%@page import="ddit.vo.TourVO"%>
<%@page import="ddit.vo.FoodVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String, Object> map = (Map<String, Object>)request.getAttribute("allList");
// 	List<FoodVO> foodlist = (List<FoodVO>)map.get("foodlist");
// 	List<TourVO> tourlist = (List<TourVO>)map.get("tourlist");
// 	List<RoomVO> roomlist = (List<RoomVO>)map.get("roomlist");
	
	Gson gson = new Gson();
	
	String alllist = gson.toJson(map);
	out.print(alllist);
	
	
%>