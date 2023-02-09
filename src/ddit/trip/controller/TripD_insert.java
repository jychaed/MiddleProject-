package ddit.trip.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddit.trip.service.ITripDetailService;
import ddit.trip.service.TripDetailServiceImpl;
import ddit.vo.TripDetailVO;

/**
 * Servlet implementation class TripD_insert
 */
@WebServlet("/TripD_insert.do")
public class TripD_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String memVo = (String) session.getAttribute("SessionId");
		String ntrip_no = request.getParameter("ntrip_no");
		String trip_dday = request.getParameter("trip_dday");
		String detailname = request.getParameter("detailname");
		String detail_addr = request.getParameter("detail_add");
		String detail_xpoint = request.getParameter("detail_xpoint");
		String detail_ypoint = request.getParameter("detail_ypoint"); 
		String detail_routeno  = request.getParameter("detail_routeno");
		
		TripDetailVO tripdetailvo = new TripDetailVO();
		tripdetailvo.setDetailname(detailname);
		tripdetailvo.setDetail_addr(detail_addr);
		tripdetailvo.setDetail_xpoint(detail_xpoint);
		tripdetailvo.setDetail_ypoint(detail_ypoint);
		tripdetailvo.setDetail_routeno(detail_routeno);
		
		ITripDetailService service = TripDetailServiceImpl.getService();
		int result = service.insertDetail(tripdetailvo);
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
		
	}
	


}
