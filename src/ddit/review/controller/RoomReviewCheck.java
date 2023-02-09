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
import ddit.vo.RoomReviewVO;
import ddit.vo.TourReviewVO;


@WebServlet("/RoomReviewCheck.do")
public class RoomReviewCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String member_id = request.getParameter("member_id");
		String roomres_no = request.getParameter("roomres_no");
		
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("roomres_no", roomres_no);
		
		IReviewService service = ReviewServiceImpl.getService();
		
		RoomReviewVO vo = service.room_review_check(map);
		
		System.out.println("객체가 있나요? ="+ vo);
		
		int result = 0;
		
		if(vo == null) {
			result = 1;  // 실패 -> 이미 작성한 리뷰 있음 
		}else {
			result = 0;  // 성공 -> 리뷰 작성 가능해야함 
		}
		
		request.setAttribute("result", result);

		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	}

}
