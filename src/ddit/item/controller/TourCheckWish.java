package ddit.item.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;


@WebServlet("/TourCheckWish.do")
public class TourCheckWish extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String member_id = request.getParameter("memberId");
		String tour_code = request.getParameter("tourCode");

		
		IItemService service = ItemServiceImpl.getInstance();
		
		Map<String, String> map = new HashMap<>();
		map.put("memberId", member_id);
		map.put("tourCode", tour_code);
			
		int result = service.tourCheckWish(map);

		request.setAttribute("result", result);
		
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	}

}
