package ddit.item.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;


@WebServlet("/FoodWish.do")
public class FoodWish extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String member_id = request.getParameter("member_id");
		String food_code = request.getParameter("food_code");
//		System.out.println("servlet 1 : " + member_id);
//		System.out.println("servlet 2: " + food_code);
		
		IItemService service = ItemServiceImpl.getInstance();
		
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("food_code", food_code);
		
//		System.out.println("map memberid: " + map.get("member_id"));
//		System.out.println("map foodcode: " + map.get("food_code"));
		
		int result = service.foodWish(map);
		
//		System.out.println("찜 등록 확인 : " + result);
//		
		request.setAttribute("result", result);
//		
		request.getRequestDispatcher("/Views/successCheck.jsp").forward(request, response);
	
		
	}

}
