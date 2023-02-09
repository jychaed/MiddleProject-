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
import ddit.vo.FoodReviewVO;


@WebServlet("/FoodReviewCheck.do")
public class FoodReviewCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String member_id = request.getParameter("member_id");
		String food_code = request.getParameter("food_code");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("food_code", food_code);
		
		System.out.println("멤아이디 : " + member_id + "/ 푸드코드 : " + food_code);
		
		IReviewService service = ReviewServiceImpl.getService();
		
		FoodReviewVO vo = service.food_reviewCheck(map);
		
		System.out.println("객체 여부 : " + vo);
		
		int result = 0;
		
		if(vo == null) {
			result = 1;   // 실패 --> 리뷰 작성 불가
		} else {
			result = 0;   // 성공 --> 리뷰 작성 가능
		}
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);

		
	}

}
