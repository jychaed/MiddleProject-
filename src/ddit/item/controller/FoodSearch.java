package ddit.item.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.FoodVO;


@WebServlet("/FoodSearch.do")
public class FoodSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
//		String foodKeyword = request.getParameter("foodKeyword");  // key로 받아야지.
		
		IItemService service = ItemServiceImpl.getInstance();
		
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("맵 : " + map);
		
		String searchText = request.getParameter("foodKeyword");
		String searchType = "food_addr";
		System.out.println("ST : " +searchText);
		System.out.println("search type : " + searchType);
		
		map.put("searchText", searchText);
		map.put("searchType", searchType);
		
		List<FoodVO> list = service.foodSearch(map);
//		System.out.println("list : " + list);
		
		// response에 결괏값을 json으로 출력하기 위한 설정
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/Food/foodSearch.jsp").forward(request, response);
		
		
	}

}
