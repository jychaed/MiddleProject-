package ddit.review.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.review.service.IReviewService;
import ddit.review.service.ReviewServiceImpl;


@WebServlet("/FoodReviewInsert.do")
@MultipartConfig
public class FoodReviewInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String f_content = request.getParameter("f_content");
		String food_code = request.getParameter("food_code");
		String f_star = request.getParameter("f_star");
		String member_id = request.getParameter("member_id");
		
		System.out.println("f_content = " + f_content);
		System.out.println("food_code = " + food_code);
		System.out.println("f_star = " + f_star);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("f_content", f_content);
		map.put("food_code", food_code);
		map.put("f_star", f_star);
		map.put("member_id", member_id);
		
		IReviewService service = ReviewServiceImpl.getService();
		
		int result = service.food_reviewInsert(map);
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	}

}
