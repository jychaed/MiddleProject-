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


@WebServlet("/FoodWishInsert.do")
public class FoodWishInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String member_id = request.getParameter("member_id");
		String food_code = request.getParameter("food_code");
		
//		System.out.println("FoodWishInsert.do --> 찜추가member_id = " + member_id + " / 찜추가food_code = " + food_code);
		
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("food_code", food_code);
		
		IWishService service = WishServiceImpl.getService();
		
		int result = service.foodWishInsert(map);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
		
	}

}
