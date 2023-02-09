package ddit.trip.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.trip.service.ITripDetailService;
import ddit.trip.service.TripDetailServiceImpl;
import ddit.vo.TripDetailVO;


@WebServlet("/TripMaxCount.do")
public class TripMaxCount extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String trip_no = request.getParameter("trip_no");
		System.out.println(trip_no);
		
		TripDetailVO vo = new TripDetailVO();
		
		ITripDetailService service = TripDetailServiceImpl.getService();
		
		int count = service.searchMaxCount(trip_no);
		
		System.out.println("결과값 출력 = " + count);
		
		request.setAttribute("count", count);
		
		request.getRequestDispatcher("Views/CountCheck.jsp").forward(request, response);
		
	}

}
