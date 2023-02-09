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
import ddit.vo.MemberVO;
import ddit.vo.TripVO;

/**
 * Servlet implementation class Tripinsert
 */
@WebServlet("/Tripinsert.do")
public class Tripinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/**
	 *  
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json; charset=utf-8");		
//		insert into trip(trip_no, member_id, trip_title, trip_start, trip_end, trip_city, trip_people) 
//			 values(#trip_no#, #member_id#, #trip_title#, 
//			 #trip_start#, #trip_end#, 
//		#trip_city#, #trip_people#)
		HttpSession session = request.getSession();
		String memVo = (String) session.getAttribute("SessionId");
//		System.out.println(memVo);
		String trip_title = request.getParameter("trip_title");
		String trip_start = request.getParameter("trip_start");
		String trip_end = request.getParameter("trip_end");
		String trip_city = request.getParameter("trip_city");
		int trip_people = Integer.parseInt(request.getParameter("trip_people"));
		
		TripVO tripVo = new TripVO();
		tripVo.setMember_id(memVo);
		tripVo.setTrip_title(trip_title);
		tripVo.setTrip_start(trip_start);
		tripVo.setTrip_end(trip_end);
		tripVo.setTrip_city(trip_city);
		tripVo.setTrip_people(trip_people);
		
		ITripService service = TripServiceImpl.getService();
		int result = service.insertTrip(tripVo);
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	}


	

}
