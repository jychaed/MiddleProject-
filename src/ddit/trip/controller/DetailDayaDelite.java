package ddit.trip.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.trip.service.ITripDetailService;
import ddit.trip.service.TripDetailServiceImpl;


@WebServlet("/DetailDayaDelite.do")
public class DetailDayaDelite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String detailday_code = request.getParameter("detailday_code");
		
		ITripDetailService service = TripDetailServiceImpl.getService();
		
		int result = service.detailDayaDelite(detailday_code);
		
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
		
	}

}
