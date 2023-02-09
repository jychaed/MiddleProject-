package ddit.trip.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/TripSessionAdd.do")
public class TripSessionAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		
		
		String tNo_session = request.getParameter("tNo_session");

		HttpSession session = request.getSession();
		
		session.removeAttribute("tNo_session");
		
		System.out.println("tNo_session ==" + tNo_session);
		
		session.setAttribute("tNo_session", tNo_session);
		
		int result = 1;
		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
	
		
		
	}

}
