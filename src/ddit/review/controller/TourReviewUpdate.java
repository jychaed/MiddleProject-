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


@WebServlet("/TourReviewUpdate.do")
@MultipartConfig
public class TourReviewUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String t_star = request.getParameter("t_star2");
		String t_content = request.getParameter("t_content2");
		String member_id = request.getParameter("member_id2");
		String tour_code = request.getParameter("tour_code2");
		String t_reviewno = request.getParameter("t_reviewno");
		Map<String, String> map = new HashMap<>();
		
		
		map.put("t_reviewno", t_reviewno);
		map.put("t_star", t_star);
		map.put("t_content", t_content);
		map.put("member_id", member_id);
		map.put("tour_code",tour_code );
		
		IReviewService service = ReviewServiceImpl.getService();
		
		int result = service.tour_review_update(map);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
		
	
	}

}
