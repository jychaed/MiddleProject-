package ddit.item.service;

import java.util.List;
import java.util.Map;

import ddit.vo.FoodReviewVO;
import ddit.vo.FoodVO;
import ddit.vo.FoodWishVO;
import ddit.vo.RoomVO;
import ddit.vo.TourReviewVO;
import ddit.vo.TourVO;

public interface IItemService {

	//숙소관련 
	
	public List<RoomVO> listRoom ();
	public List<RoomVO> searchRoom (String roomCode);
	public List<RoomVO> searchCityRoom (String city);
	public List<RoomVO> sortRoom (String colname);
	public RoomVO room_selectOne(String roomCode);
	
	public int insertRoom (RoomVO vo);
	public int updateRoom(RoomVO vo);
	public int deleteRoom (String roomCode);
	//평균별점 업데이트 
	public int room_avgstar_update(String room_code);
	
	

	////////////////////////////////////////////////////////////////////////////////

	//맛집관련 

		// 맛집 리스트 출력
	public List<FoodVO> foodList(); 
	
		// 맛집 이름 검색
	public List<FoodVO> foodSearch(Map<String, String> map);
		// 맛집 삭제 메소드
	public int food_delete(String food_code);
	
		// 맛집 상세정보
	public FoodVO food_selectOne(String food_code);
		
		// 맛집 리뷰 리스트 출력
	public List<FoodReviewVO> food_reviewList(String food_code);
	 
		// 맛집 찜하기
	public int foodWish(Map<String, String> map);


	
	
	
	
	
	
	
	////////////////////////////////////////////////////////////////////////////
	//관광관련
	public List<TourVO> tourList();	
	
		//관광관련 - 상세정보보기
	public TourVO tourSelectOne(String tourCode);
	
		//이름 조회
	public List<TourVO> searchTour(String search);
	
	
		
		// 찜 중복 확인
	public int tourCheckWish(Map<String, String> map);
	
		
		// 리뷰 중복 등록 체크
	public TourVO reviewCheck(Map<String, String> map);
		
	/**
	 *  투어 리뷰 목록 출력
	 * 
	 * @return
	 */
	public List<TourReviewVO> tourReviewList(String tour_code);
	
	
	////////////////////////////////////////////////////////////////////////////
	
	// 관리자 관련
	public Map<String, Object> getAllItems();

	// 관리자가 숙소 검색
	public  List<RoomVO> adminSearchRoom(String roomname);
	
	// 관리자 관광지 추가 
	public int tour_admin_insert(TourVO vo);
	
	// 관리자 맛집 추가
	public int food_admin_insert(FoodVO vo);

	// 관리자 관광 삭제
	public int tour_delete(String tour_code);

}
