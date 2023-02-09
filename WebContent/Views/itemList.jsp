<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="ddit.vo.RoomVO"%>
<%@page import="ddit.vo.TourVO"%>
<%@page import="ddit.vo.FoodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String listname = (String)request.getAttribute("listname");
	
	JsonObject jsonObj = new JsonObject();
	jsonObj.addProperty("type", listname);
	Gson gson = new Gson();
	switch(listname){
	case "food" :
		List<FoodVO> foodlist = (List<FoodVO>)request.getAttribute("list");
		
		JsonElement food = gson.toJsonTree(foodlist);
		jsonObj.add("list", food);
		
		break;
	case "tour" : 
		List<TourVO> tourlist = (List<TourVO>)request.getAttribute("list");
		
		JsonElement tour = gson.toJsonTree(tourlist);
		jsonObj.add("list", tour);
		break;
	case "room" : 
		List<RoomVO> roomlist = (List<RoomVO>)request.getAttribute("list");
		
		JsonElement room = gson.toJsonTree(roomlist);
		jsonObj.add("list", room);
		break;
	}
	
	out.print(jsonObj);
	out.flush();
	

%>
