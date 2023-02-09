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


@WebServlet("/FoodReviewUpdate.do")
@MultipartConfig
public class FoodReviewUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String f_star = request.getParameter("f_star2");
		String f_content = request.getParameter("f_content2");
		String member_id = request.getParameter("member_id2");
		String food_code = request.getParameter("food_code2");
		String f_reviewno = request.getParameter("f_reviewno");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("f_reviewno", f_reviewno);
		map.put("f_star", f_star);
		map.put("f_content", f_content);
		map.put("member_id", member_id);
		map.put("food_code",food_code );
		
		IReviewService service = ReviewServiceImpl.getService();
		
		int result = service.food_reviewUpdate(map);
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
		
		
	}

}
