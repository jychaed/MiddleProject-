package ddit.trip.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddit.trip.service.ITripService;
import ddit.trip.service.TripServiceImpl;
import ddit.vo.TripVO;

/**
 * Servlet implementation class TripUpdate
 */
@WebServlet("/TripUpdate.do")
public class TripUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		/*
		 * update trip set trip_title = #trip_title#, trip_start = #trip_start#,
		 * trip_end = #trip_end#, trip_city = #trip_city#, trip_people = #trip_people#
		 * where member_id = #member_id#
		 */
		HttpSession session = request.getSession();
		String memVo = (String) session.getAttribute("SessionId");
		String trip_no = request.getParameter("trip_no");
		String trip_title = request.getParameter("trip_title");
		String trip_start = request.getParameter("trip_start");
		String trip_end = request.getParameter("trip_end");
		String trip_city = request.getParameter("trip_city");
		int trip_people = Integer.parseInt(request.getParameter("trip_people"));
		
		TripVO tripVo = new TripVO();
		tripVo.setMember_id(memVo);
		tripVo.setTrip_no(trip_no);
		tripVo.setTrip_title(trip_title);
		tripVo.setTrip_start(trip_start);
		tripVo.setTrip_end(trip_end);
		tripVo.setTrip_city(trip_city);
		tripVo.setTrip_people(trip_people);
		
		ITripService service = TripServiceImpl.getService();
		int result = service.updateTrip(tripVo);
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("/Views/successCheck.jsp").forward(request, response);
	}


}
