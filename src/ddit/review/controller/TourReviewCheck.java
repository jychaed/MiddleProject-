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
import ddit.vo.TourReviewVO;


@WebServlet("/TourReviewCheck.do")
public class TourReviewCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String member_id = request.getParameter("member_id");
		String tour_code = request.getParameter("tour_code");
		
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("tour_code", tour_code);
		
		IReviewService service = ReviewServiceImpl.getService();
		
		TourReviewVO vo = service.tour_review_check(map);
		
		System.out.println("객체가 있나요? ="+ vo);
		
		int result = 0;
		
		if(vo == null) {
			result = 1;  // 실패
		}else {
			result = 0;  // 성공 -> 리뷰 작성 가능해야함 
		}
		
		request.setAttribute("result", result);

		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	}

}
