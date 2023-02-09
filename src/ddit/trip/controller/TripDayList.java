package ddit.trip.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ddit.trip.service.ITripDayService;
import ddit.trip.service.ITripService;
import ddit.trip.service.TripDayServiceImpl;
import ddit.trip.service.TripServiceImpl;
import ddit.vo.TripDayVO;
import ddit.vo.TripVO;

/**
 * Servlet implementation class TripDayList
 */
@WebServlet("/TripDayList.do")
public class TripDayList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String member_id = request.getParameter("member_id");
		ITripService service = TripServiceImpl.getService();
		List<TripVO> list = service.tripList(member_id);
		request.setAttribute("result", list);
		
		request.getRequestDispatcher("Views/ndayList.jsp").forward(request, response);
		
		
	}



}
