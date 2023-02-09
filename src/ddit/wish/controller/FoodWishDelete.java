package ddit.wish.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.wish.service.IWishService;
import ddit.wish.service.WishServiceImpl;

@WebServlet("/FoodWishDelete.do")
public class FoodWishDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String member_id = request.getParameter("member_id");
		String food_code = request.getParameter("food_code");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("food_code", food_code);
		
		IWishService service = WishServiceImpl.getService();
		
		int result = service.foodWishDelete(map);
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
	
	
	}

}
