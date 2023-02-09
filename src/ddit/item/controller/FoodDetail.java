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


@WebServlet("/FoodDetail.do")
public class FoodDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String food_code = request.getParameter("food_code");
		
		IItemService service = ItemServiceImpl.getInstance();
		
		FoodVO vo = service.food_selectOne(food_code);
		
		request.setAttribute("vo", vo);
		
		request.getRequestDispatcher("/Food/foodDetail.jsp").forward(request, response);
		
	}

}
