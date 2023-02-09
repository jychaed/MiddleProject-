package ddit.review.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.TourReviewVO;


@WebServlet("/TourReviewList.do")
public class TourReviewList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String tour_code = request.getParameter("tour_code");

		IItemService service = ItemServiceImpl.getInstance();
		
		List<TourReviewVO> list = service.tourReviewList(tour_code);		

		request.setAttribute("list", list);
		
		request.getRequestDispatcher("Tour/tourReviewList.jsp").forward(request, response);
		
		
	}

}
