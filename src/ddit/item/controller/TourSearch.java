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
import ddit.vo.TourVO;


@WebServlet("/TourSearch.do")
public class TourSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String search = request.getParameter("search");
			
			IItemService service = ItemServiceImpl.getInstance();
			
			List<TourVO> list = service.searchTour(search);
			
			request.setAttribute("list", list);
			
			request.getRequestDispatcher("Tour/tourList.jsp").forward(request, response);
			
	
	}

}
