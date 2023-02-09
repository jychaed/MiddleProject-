package ddit.lounge.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ddit.lounge.service.ILoungeService;
import ddit.lounge.service.LoungeServiceImpl;
import ddit.vo.LoungeVO;

@WebServlet("/LoungeListController.do") 
public class LoungeList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		
		ILoungeService service = LoungeServiceImpl.getInstance();
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("map :::::: " + map);
		
		
		String searchText = "";
		//System.out.println("검색아이디 " + searchText);
		String searchType = "";
		map.put("searchText", searchText);
		map.put("searchType", searchType);
		List<LoungeVO> loungelist = service.lounge_selectList(map);
		System.out.println("loungelist :::: " + loungelist);
		
		request.setAttribute("loungelist", loungelist);
		request.getRequestDispatcher("/Lounge/loungeList.jsp").forward(request, response);
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
