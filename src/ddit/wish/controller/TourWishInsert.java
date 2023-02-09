package ddit.wish.controller;

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
import ddit.wish.service.IWishService;
import ddit.wish.service.WishServiceImpl;

/**
 * Servlet implementation class TourWish
 */
@WebServlet("/TourWishInsert.do")
public class TourWishInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String member_id = request.getParameter("member_id");
		String tour_code = request.getParameter("tour_code");
		
		System.out.println("member_id = " + member_id + "  tour_code = " + tour_code);
		
		Map<String, String> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("tour_code", tour_code);
		
		IWishService service = WishServiceImpl.getService();
		
		int result = service.tourWishInsert(map);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);

	}

}
