package ddit.item.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.FoodReviewVO;
import ddit.vo.FoodVO;
import ddit.vo.FoodWishVO;
import ddit.vo.RoomVO;
import ddit.vo.TourReviewVO;
import ddit.vo.TourVO;

public class ItemDaoImpl implements IItemDao {
	
	private SqlMapClient smc;
	private static ItemDaoImpl dao;
	private ItemDaoImpl(){	
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static ItemDaoImpl getInstance(){
		if(dao==null) dao = new ItemDaoImpl();
		return dao;
	}
	
	
	//숙소관련 
	
	@Override
	public int room_avgstar_update(String room_code) {
		int result = 0 ;
		try {
			result = smc.update("room_review.room_review_insert",room_code);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public List<RoomVO> listRoom() {
		List<RoomVO> list = null;
		try {
			list = smc.queryForList("room.listRoom");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<RoomVO> searchRoom(String roomCode) {
		
		List<RoomVO> list = null;
		try {
			list = smc.queryForList("room.searchRoom",roomCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<RoomVO> searchCityRoom(String city) {
		List<RoomVO> list = null;
		try {
			list = smc.queryForList("room.searchCityRoom",city);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<RoomVO> sortRoom(String colname) {
		List<RoomVO> list = null;
		try {
			list = smc.queryForList("room.sortRoom",colname);
			System.out.println("sortlist>>>" +list.get(0).getRoom_name());
			System.out.println("sortlist>>>" +list.get(1).getRoom_name());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public int insertRoom(RoomVO vo) {
		int insert = 0;
		Object obj;
		try {
			obj = smc.insert("room.insertRoom", vo);
			if(obj==null) insert = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return insert;
	}
	@Override
	public int updateRoom(RoomVO vo) {
		int res = 0 ;
		try {
			res=smc.update("room.updateRoom", vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}
	@Override
	public int deleteRoom(String roomCode) {
		int res = 0 ;
		System.out.println("dao왓니..." + res );
		try {
			res=smc.delete("room.deleteRoom", roomCode);
			System.out.println("dao : " + res );
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	@Override
	public RoomVO room_selectOne(String roomCode) {
		RoomVO vo = null; 
		try {
			vo = (RoomVO) smc.queryForObject("room.room_selectOne",roomCode);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}

	
	
	
	//맛집관련//////////////////////////////////////////////////////////////////////////// 
	
		// 맛집 리스트 출력
	@Override
	public List<FoodVO> foodList() {
		List<FoodVO> list = null;
		
		try {
			list = smc.queryForList("food.foodList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
		// 맛집 이름 검색
	@Override
	public List<FoodVO> foodSearch(Map<String, String> map) {
		
		List<FoodVO> list = null;
		
		try {
			list = smc.queryForList("food.foodSearch", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
		// 맛집 상세정보
	@Override
	public FoodVO food_selectOne(String food_code) {
		
		FoodVO vo = null;
		
		try {
			
			vo = (FoodVO) smc.queryForObject("food.food_selectOne", food_code);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}	

		// 맛집 리뷰 리스트 출력
	@Override
	public List<FoodReviewVO> food_reviewList(String food_code) {
		List<FoodReviewVO> list = null;
		
		try {
			list = smc.queryForList("food.food_reviewList", food_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	// 맛집 찜하기
	@Override
	public int foodWish(Map<String, String> map) {
		int result = 0;
		FoodVO vo = null;
		
		System.out.println("map :" + map);
		
		try {
			vo = (FoodVO) smc.queryForObject("food.foodWish", map);
			
			System.out.println("vo : " + vo);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(vo != null) {
			result = 1;
		} else {
			result = 0;
		}
		
		return result;
	}	

	
	
	
	
	
	
	
	//관광관련
		//관광지 목록 출력
	@Override
	public List<TourVO> tourList() {
		List<TourVO> list = null;
		
		try {
			list = smc.queryForList("tour.tourList");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
		//관광지 상세정보 출력
	@Override
	public TourVO tourSelectOne(String tourCode) {
		TourVO vo = null;
		
		try {
			vo = (TourVO) smc.queryForObject("tour.tourSelectOne", tourCode);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}


	
		//관광지 이름  검색
	@Override
	public List<TourVO> searchTour(String search) {
		List<TourVO> list = null;		
		try {
			list = smc.queryForList("tour.searchTour", search);		
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return list;
	}



		//관광지 찜 체크
	@Override
	public int tourCheckWish(Map<String, String> map) {
		int result = 0;
		TourVO vo = null;
		
		System.out.println("map :" + map);
		try {
			vo = (TourVO) smc.queryForObject("tour.tourCheckWish", map);
			System.out.println(vo);
			if(vo == null) {
				result = 0;
			}else {
				result = 1;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	@Override
	public  List<TourReviewVO> tourReviewList(String tour_code) {
		List<TourReviewVO> list = null;
		
		try {
			list = smc.queryForList("tour.tourReviewList", tour_code);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	

	
	
	@Override
	public TourVO reviewCheck(Map<String, String> map) {
		TourVO vo = null;
		
		try {
			vo = (TourVO)smc.queryForObject("tour.reviewCheck", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}


	
	// 관리자 관련----------------------------------------

	@Override
	public List<RoomVO> adminSearchRoom(String roomname) {
		List<RoomVO> list = null;
		try {
			list = smc.queryForList("room.adminSearchRoom",roomname);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	// 관리자 관광 추가
	@Override
	public int tour_admin_insert(TourVO vo) {
		int result = 0;
		try {
			result = smc.update("tour.tour_admin_insert",vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 관리자 맛집 추가
	@Override
	public int food_admin_insert(FoodVO vo) {
		int result = 0;
		try {
			result = smc.update("food.food_admin_insert",vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 관리자 관광 삭제
	@Override
	public int tour_delete(String tour_code) {
		int result = 0;
		try {
			result = smc.update("tour.tour_delete",tour_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	// 관리자 맛집 삭제
	@Override
	public int food_delete(String food_code) {
		int result = 0;
		try {
			result = smc.update("food.food_delete",food_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;

	}
}
