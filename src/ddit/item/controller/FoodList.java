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
import ddit.vo.FoodVO;


@WebServlet("/FoodList.do")
public class FoodList extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		IItemService service = ItemServiceImpl.getInstance();
		
		List<FoodVO> list = service.foodList();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("Food/foodList.jsp").forward(request, response);
		
	}

}
