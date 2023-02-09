package ddit.item.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.TourVO;


@WebServlet("/TourSelectOne.do")
public class TourSelectOne extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tourCode = request.getParameter("tourCode");
		
		
		IItemService service = ItemServiceImpl.getInstance();
		
		TourVO vo = service.tourSelectOne(tourCode);
		
	
		
		request.setAttribute("vo", vo);
		
		request.getRequestDispatcher("Tour/tourSelectOne.jsp").forward(request, response);
		
		
	}

}
