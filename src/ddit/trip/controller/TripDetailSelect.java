package ddit.trip.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.trip.service.ITripDetailService;
import ddit.trip.service.TripDetailServiceImpl;
import ddit.vo.TripDetailVO;


@WebServlet("/TripDetailSelect.do")
public class TripDetailSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String ntrip_no = request.getParameter("ntrip_no");
		
		ITripDetailService service = TripDetailServiceImpl.getService();
		
		
		List<TripDetailVO> list = service.tripDetailSelect(ntrip_no);
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("Views/TripDetailList.jsp").forward(request, response);
		
	}




}
