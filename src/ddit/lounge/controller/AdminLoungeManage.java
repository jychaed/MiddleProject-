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

@WebServlet("/AdminLoungeManage.do")
public class AdminLoungeManage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		
		ILoungeService service = LoungeServiceImpl.getInstance();
		Map<String, Object> map = new HashMap<String, Object>();
		// 모든 회원 조회할 때는 비워놓기
		map.put("searchText", "");
		map.put("searchType", "");
		List<LoungeVO> loungelist = service.lounge_selectList(map);
		
		request.setAttribute("loungelist", loungelist);
		request.getRequestDispatcher("/Views/loungeList.jsp").forward(request, response);
	}

}
