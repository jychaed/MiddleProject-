package ddit.item.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ddit.item.dao.IItemDao;
import ddit.item.dao.ItemDaoImpl;
import ddit.vo.FoodReviewVO;
import ddit.vo.FoodVO;
import ddit.vo.FoodWishVO;
import ddit.vo.RoomVO;
import ddit.vo.TourReviewVO;
import ddit.vo.TourVO;

public class ItemServiceImpl implements IItemService {
	private IItemDao dao;
	private static ItemServiceImpl service;
	private ItemServiceImpl() {
		dao = ItemDaoImpl.getInstance();	
	}
	public static ItemServiceImpl getInstance() {
		if(service == null) service = new ItemServiceImpl();
		return service;
	}
	
	//숙소관련
	
	@Override
	public List<RoomVO> listRoom() {
		return dao.listRoom();
	}
	@Override
	public List<RoomVO> searchCityRoom(String city) {
		return dao.searchCityRoom(city);
	}
	@Override
	public int insertRoom(RoomVO vo) {
		return dao.insertRoom(vo);
	}
	@Override
	public int updateRoom(RoomVO vo) {
		return dao.updateRoom(vo);
	}
	@Override
	public int deleteRoom(String roomCode) {
		System.out.println("여기 왓니....");
		return dao.deleteRoom(roomCode);
	}
	@Override
	public List<RoomVO> searchRoom(String roomCode) {
		return dao.searchRoom(roomCode);
	}
	@Override
	public List<RoomVO> sortRoom(String colname) {
		return dao.sortRoom(colname);
	}

	@Override
	public RoomVO room_selectOne(String roomCode) {
		return dao.room_selectOne(roomCode);
	}

	@Override
	public int room_avgstar_update(String room_code) {
		// TODO Auto-generated method stub
		return dao.room_avgstar_update(room_code);
	}
	
	///////////////////////////////////////////////////////////////////////////////////
	//맛집관련 
	
		// 맛집 리스트 출력
	@Override
	public List<FoodVO> foodList() {
		return dao.foodList();
	}

	
		// 맛집 이름 검색
	@Override
	public List<FoodVO> foodSearch(Map<String, String> map) {
		return dao.foodSearch(map);
	}
	
		// 맛집 상세정보
	@Override
	public FoodVO food_selectOne(String food_code) {
		return dao.food_selectOne(food_code);
	}
	
		// 맛집 리뷰 리스트 출력
	@Override
	public List<FoodReviewVO> food_reviewList(String food_code) {
		return dao.food_reviewList(food_code);
	}
	
		// 맛집 찜하기
	@Override
	public int foodWish(Map<String, String> map) {
		return dao.foodWish(map);
	}


	
	
	
	///////////////////////////////////////////////////////////////////////////////////
	//관광관련
		//관광지 전체 자료 출력
	@Override
	public List<TourVO> tourList() {
		return dao.tourList();
	}
	
	@Override
	public TourVO tourSelectOne(String tourCode) {
		return dao.tourSelectOne(tourCode);
	}

	@Override
	public List<TourVO> searchTour(String search) {
		return dao.searchTour(search);
	}

	public int tourCheckWish(Map<String, String> map) {
		return dao.tourCheckWish(map);
	}
	

	@Override
	public TourVO reviewCheck(Map<String, String> map) {
		return dao.reviewCheck(map);
	}

	@Override
	public List<TourReviewVO> tourReviewList(String tour_code) {
		return dao.tourReviewList(tour_code);
	}

	
	
	//////////////////////////////////////////////////////////////////////
	/// 관리자 전용


	// 관리자 모든 아이템 조
	@Override
	public Map<String, Object> getAllItems() {
		List<FoodVO> foodlist = dao.foodList();
		List<TourVO> tourlist = dao.tourList();
		List<RoomVO> roomlist = dao.listRoom();
	
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("foodlist", foodlist);
		map.put("tourlist", tourlist);
		map.put("roomlist", roomlist);
		return map;

	}
	
	// 관리자 숙소 검색문 
	@Override
	public List<RoomVO> adminSearchRoom(String roomname) {
		return dao.adminSearchRoom(roomname);
	}
	// 관리자 insert - tour
	@Override
	public int tour_admin_insert(TourVO vo) {
		return dao.tour_admin_insert(vo);
	}
	// 관리자 insert - food
	@Override
	public int food_admin_insert(FoodVO vo) {
		return dao.food_admin_insert(vo);
	}
	// 관리자 delete - tour
	@Override
	public int tour_delete(String tour_code) {
		return dao.tour_delete(tour_code);
	}
	@Override
	public int food_delete(String food_code) {
		return dao.food_delete(food_code);
	}


}