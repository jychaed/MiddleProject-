package ddit.item.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;

import ddit.vo.TourVO;


@WebServlet("/TourSort.do")
public class TourSort extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String sortType = request.getParameter("sortType");
		
		String please[] = request.getParameterValues("dataList");
		
		
		JsonParser jsonParser = new JsonParser();
        
		
		
		Object obj;
		try {
			obj = jsonParser.parse(please[0]);
			
			JsonObject  jsonObj = (JsonObject) obj;
			 //print
			 System.out.println(jsonObj.get("tour_name")); //sim
			 System.out.println(jsonObj.get("tour_addr")); //simpw
			 System.out.println(jsonObj.get("tour_tel")); // {"sex":"male","age":50}
			 
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        //4. To JsonObject
       
        
	
		
		
	}

}
