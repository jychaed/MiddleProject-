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

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.review.service.IReviewService;
import ddit.review.service.ReviewServiceImpl;
import ddit.vo.RoomReviewVO;
import ddit.vo.TourVO;

@WebServlet("/RoomReviewInsert.do")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10, 
		maxFileSize = 1024 * 1024 * 30,
		maxRequestSize = 1024 * 1024 * 100
	)
public class RoomReviewInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("여기오냐?");

		String r_content = request.getParameter("r_content");
		System.out.println("r_content = " + r_content);
		String roomres_no =request.getParameter("roomres_no");
		System.out.println("roomres_no = " + roomres_no);
		
		int r_star =	Integer.parseInt(request.getParameter("r_star"));
		System.out.println("r_star = " + r_star);
		
		String member_id = request.getParameter("member_id");
		System.out.println("member_id = " + member_id);
		
		String r_pic = request.getParameter("r_pic");
		System.out.println("r_pic = " + r_pic);
		
		
	
		

		RoomReviewVO vo = new RoomReviewVO();
		vo.setR_content(r_content);
		vo.setRoomres_no(roomres_no);
		vo.setR_star(r_star);
		vo.setMember_id(member_id);
		vo.setR_pic(r_pic);
			
		IReviewService service = ReviewServiceImpl.getService();
		int result = service.room_review_insert(vo);
		
		
		
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
		
	}

}
