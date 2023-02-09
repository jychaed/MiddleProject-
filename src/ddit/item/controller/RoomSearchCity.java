package ddit.item.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.RoomVO;

@WebServlet("/RoomSearchCity.do")
public class RoomSearchCity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			IItemService service = ItemServiceImpl.getInstance();
			String city = request.getParameter("city");
			System.out.println(city);
			List<RoomVO> list = service.searchCityRoom(city);
			request.setAttribute("selectcity", list);
			request.getRequestDispatcher("Room/roomcity.jsp").forward(request, response);
			
	}

}
