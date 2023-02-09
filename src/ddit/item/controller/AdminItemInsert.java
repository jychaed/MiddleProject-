package ddit.item.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import ddit.item.service.IItemService;
import ddit.item.service.ItemServiceImpl;
import ddit.vo.FoodVO;
import ddit.vo.RoomVO;
import ddit.vo.TourVO;

@WebServlet("/AdminItemInsert.do")
@MultipartConfig(
	fileSizeThreshold = 1024 * 1024 * 10, 
	maxFileSize = 1024 * 1024 * 30,
	maxRequestSize = 1024 * 1024 * 100
)
public class AdminItemInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uploadPath = "D:\\A_TeachingMaterial\\05_JQuery\\ddit_MiddleProject\\WebContent\\images\\uploadfiles";

		// 폴더 생성 없으면 	
		File fileUploadDir = new File(uploadPath);
		if (!fileUploadDir.exists()) {
			fileUploadDir.mkdirs();
		}
		System.out.println("폴더 있음");
		
		Part part = request.getPart("placePhoto");
		
		String savePhoto = null;
		String photo = "";
		
		
		
		if(part != null) {
			photo = extractFileName(part);
			if(!"".equals(photo)) {
				try {
					savePhoto = UUID.randomUUID().toString();
					part.write(uploadPath + File.separator + savePhoto);
				}catch(IOException e) {
					savePhoto = null;
				}
			}
		}
		
		String placeType = request.getParameter("placeType"); // 여행지 종류
		String placeId = request.getParameter("placeId");  // 이름 
		String placeTel = request.getParameter("placeTel");  // 전화번호 
		String placeCity = request.getParameter("placeCity"); // 도시 
		String placeAddr = request.getParameter("placeAddr"); // 상세주소
		String ypoint = request.getParameter("ypoint"); // 위도
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" + ypoint);
		String xpoint = request.getParameter("xpoint"); // 경도
		int roomPrice = 0;
		if(!"".equals(request.getParameter("roomPrice"))) {
			roomPrice = Integer.parseInt(request.getParameter("roomPrice"));
		}
		IItemService service = ItemServiceImpl.getInstance();
		int result = -1;
		switch (placeType) {
		case "tour":  // 해당 컬럼만 넣음 
			TourVO tourVo = new TourVO();
			tourVo.setTour_name(placeId);
			tourVo.setTour_tel(placeTel);
			tourVo.setTour_city(placeCity);
			tourVo.setTour_addr(placeAddr);
			tourVo.setTour_image(photo);
			tourVo.setTour_xpoint(xpoint);
			tourVo.setTour_ypoint(ypoint);
			tourVo.setTour_saveimage(savePhoto);
			result = service.tour_admin_insert(tourVo);
			
			break;
		case "room":	 // 모든 컬럼 다 넣음 
			RoomVO roomVo = new RoomVO();
			roomVo.setRoom_name(placeId);
			roomVo.setRoom_addr(placeAddr);
			roomVo.setRoom_xpoint(xpoint);
			roomVo.setRoom_ypoint(ypoint);
			roomVo.setRoom_tel(placeTel);
			roomVo.setRoom_city(placeCity);
			roomVo.setRoom_image(photo);
			roomVo.setRoom_saveimage(savePhoto);
			roomVo.setRoom_price(roomPrice);
			result = service.insertRoom(roomVo);
			break;
		case "food":
			FoodVO foodVo = new FoodVO();
			foodVo.setFood_name(placeId);
			foodVo.setFood_tel(placeTel);
			foodVo.setFood_city(placeCity);
			foodVo.setFood_addr(placeAddr);
			foodVo.setFood_image(photo);
			foodVo.setFood_saveimage(savePhoto);
			foodVo.setFood_xpoint(xpoint);
			foodVo.setFood_ypoint(ypoint);
			result = service.food_admin_insert(foodVo);
			break;

		} // switch 문 
		request.setAttribute("result", result);
		request.getRequestDispatcher("/Views/successCheck.jsp").forward(request, response);
	}

	private String extractFileName(Part part) {
		String fileName = ""; 
		String contentDisposition = part.getHeader("Content-Disposition");
		String[] items = contentDisposition.split(";");
		for (String item : items) {
			if (item.trim().startsWith("filename")) {
				fileName = item.substring(item.indexOf("=") + 2, item.length() - 1);
			}
		}
		return fileName;
	}
	
}




   

