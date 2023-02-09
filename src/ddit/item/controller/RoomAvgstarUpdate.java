package ddit.item.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;

@WebServlet("/RoomAvgstarUpdate.do")
public class RoomAvgstarUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String room_code = request.getParameter("room_code");
		IItemService service = ItemServiceImpl.getInstance();
		int result = service.room_avgstar_update(room_code);
		request.setAttribute("resulst", result);
		request.getRequestDispatcher("Views/successCheck.jsp").forward(request, response);
		
	}

}
