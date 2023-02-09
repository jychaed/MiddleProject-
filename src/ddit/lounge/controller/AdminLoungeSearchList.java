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

@WebServlet("/AdminLoungeSearchList.do")
public class AdminLoungeSearchList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String searchType = request.getParameter("searchType");	
		// lounge_title, member_id lounge_content
		String searchText = request.getParameter("searchText");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchType", searchType);
		map.put("searchText", searchText);
		
		ILoungeService service = LoungeServiceImpl.getInstance();
		List<LoungeVO> searchlist = service.lounge_selectList(map);
		
		request.setAttribute("loungelist", searchlist);
		request.getRequestDispatcher("Views/loungeList.jsp").forward(request, response);
	}

}
