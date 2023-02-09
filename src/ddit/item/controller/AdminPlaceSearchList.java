package ddit.item.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.FoodVO;
import ddit.vo.RoomVO;
import ddit.vo.TourVO;

@WebServlet("/AdminPlaceSearchList.do")
public class AdminPlaceSearchList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//  "searchType"food room tour // => 검색할 타입 
		// "search" => 검색하려는 텍스트
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String searchType = request.getParameter("searchType");	// 맛집 , 숙소, 투어
		String searchText = request.getParameter("searchText");
		//System.out.println("타입" + searchType  + "검색내용" + searchText );
		IItemService service = ItemServiceImpl.getInstance();
		Map<String, String> map = new HashMap<String, String>();
		switch(searchType) {
		case "food":
			String searchType2 = "food_name";
			map.put("searchText", searchText);
			map.put("searchType", searchType2);
			List<FoodVO> foodlist = service.foodSearch(map);
			request.setAttribute("list", foodlist);
			request.setAttribute("listname", "food");
			// select * from food where tour_name = 대전 
			break;
		
		case "room" : 
//			map.put("foodKeyword", searchText);
//			map.put("searchType", "food_name");
//			List<FoodVO> roomlist = service.foodSearch(map);
//			request.setAttribute("list", foodlist);
//			request.setAttribute("listname", "room");
			// select * from room where tour_name = 대전 
			List<RoomVO> roomlist = service.adminSearchRoom(searchText);
			request.setAttribute("list", roomlist);
			request.setAttribute("listname", "room");
			break;	
		case "tour" : 
			List<TourVO> tourlist = service.searchTour(searchText);
			request.setAttribute("list", tourlist);
			request.setAttribute("listname", "tour");
			// select * from tour where tour_name = 대전 
			break;
			
		}
		
		request.getRequestDispatcher("/Views/itemList.jsp").forward(request, response);
	}

}
