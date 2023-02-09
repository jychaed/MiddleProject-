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
 * Servlet implementation class TripDelete
 */
@WebServlet("/TripDelete.do")
public class TripDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String memVo = (String) session.getAttribute("SessionId");
		String trip_no = request.getParameter("trip_no");
		
		TripVO tripVo = new TripVO();
		tripVo.setMember_id(memVo);
		tripVo.setTrip_no(trip_no);
		
		ITripService service = TripServiceImpl.getService();
		int result = service.deleteTrip(trip_no);
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
				
	}

}
