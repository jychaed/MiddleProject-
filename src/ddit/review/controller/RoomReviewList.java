package ddit.review.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.review.service.IReviewService;
import ddit.review.service.ReviewServiceImpl;
import ddit.vo.RoomReviewListVO;
import ddit.vo.RoomReviewVO;

@WebServlet("/RoomReviewList.do")
public class RoomReviewList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		IReviewService  service  = ReviewServiceImpl.getService();
		String roomCode = request.getParameter("roomcode");
		System.out.println(roomCode);
		List<RoomReviewListVO> list = service.room_review_selectAll(roomCode);
		System.out.println(list);
//		r_review.r_review_list
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("Review/room_reviewlist.jsp").forward(request, response);
		
	}

}
