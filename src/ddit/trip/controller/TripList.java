package ddit.trip.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddit.trip.service.ITripDayService;
import ddit.trip.service.TripDayServiceImpl;
import ddit.vo.TripDayVO;

/**
 * Servlet implementation class TripList
 */
@WebServlet("/TripList.do")
public class TripList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		HttpSession session = request.getSession();
		String memVo = (String) session.getAttribute("SessionId");
		
		String member_id = request.getParameter("member_id");
		String trip_no = request.getParameter("trip_no");

		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("trip_no", trip_no);
		
		ITripDayService service = TripDayServiceImpl.getService();
		
		List<TripDayVO> tripList = service.tripDayList(map);	
	
		request.setAttribute("result", tripList);
		
		request.getRequestDispatcher("/Views/DaydList.jsp").forward(request, response);
		

	}

}
