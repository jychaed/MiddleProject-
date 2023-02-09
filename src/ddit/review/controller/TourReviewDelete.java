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
import ddit.wish.service.IWishService;

@WebServlet("/TourReviewDelete.do")
public class TourReviewDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String reviewNo = request.getParameter("reviewNo");
	
		Map<String, String> map = new HashMap<>();
		
		IReviewService service = ReviewServiceImpl.getService();
		
		int result = service.tour_review_delete(reviewNo);
		
		System.out.println("result == " + result);
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
	}

}
