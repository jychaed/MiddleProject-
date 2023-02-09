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
import ddit.vo.FoodReviewVO;
import ddit.vo.FoodVO;


@WebServlet("/FoodReviewList.do")
public class FoodReviewList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String food_code = request.getParameter("food_code");
		System.out.println("food_code : " + food_code);
		
		IItemService service = ItemServiceImpl.getInstance();
		
		List<FoodReviewVO> list = service.food_reviewList(food_code);
//		System.out.println("list : " + list);
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/Food/foodReviewList.jsp").forward(request, response);
		
		
	}

}
