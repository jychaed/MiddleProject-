package ddit.review.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.review.service.IReviewService;
import ddit.review.service.ReviewServiceImpl;


@WebServlet("/FoodReviewDelete.do")
public class FoodReviewDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String reviewNo = request.getParameter("reviewNo");
		
		Map<String, String> map = new HashMap<String, String>();
		
		IReviewService service = ReviewServiceImpl.getService();
		
		int result = service.food_reviewDelete(reviewNo);
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
		
		
	}

}
