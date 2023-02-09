package ddit.item.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

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

@WebServlet("/ImageView.do")
public class ImageView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 이미지 태그 src 경로 뒤에 붙인 쿼리 스트링 키값으로 가져온다 -> ROOM001 등
		String placeCode = request.getParameter("placeCode");

		TourVO tourVo = null;
		RoomVO roomVo = null;
		FoodVO foodVo = null; 
		
		String fileName = null;
		IItemService service = ItemServiceImpl.getInstance();
		if(placeCode.contains("TOUR")) {
			tourVo = service.tourSelectOne(placeCode);
			fileName = tourVo.getTour_saveimage();
		}else if(placeCode.contains("ROOM")) {
			roomVo = service.room_selectOne(placeCode);
			fileName = roomVo.getRoom_saveimage();
		}else if(placeCode.contains("FOOD")) {
			foodVo = service.food_selectOne(placeCode);
			fileName = foodVo.getFood_saveimage();
		}
		
		// 사진 없으면 대체 사진 출력하기
		if(fileName==null) {
			fileName = "noimage.jpg";   // 이거 조심해서할 것 !!!!!
			System.out.println("사진이름" + fileName);
		}					
		
		String imagePath = "D:\\A_TeachingMaterial\\05_JQuery\\ddit_MiddleProject\\WebContent\\images\\uploadfiles";
		String imageFilePath = imagePath + File.separator + fileName;
		System.out.println("사진경로" + imageFilePath);
		File file = new File(imageFilePath);
		
		File file2 = new File(imagePath + File.separator + "noimage.jpg");
		System.out.println("대체 사진 경로 존재 여부" + file2.exists());
		if (file.exists()) {
			// 출력용 스트림 객체 생성 ==> response객체 이용
			BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
			
			// 파일 입력용 스트림 객체 생성
			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
			
			byte[] buffer = new byte[1024];
			int len = -1;

			// byte배열을 이용해서 파일 내용을 읽어와 출력용 스트림 객체로 출력한다.
			while ((len = bis.read(buffer)) > 0 ) {
				bos.write(buffer, 0, len);
			}
			bos.flush();	
		} 	
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
