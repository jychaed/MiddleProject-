package ddit.wish.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.RoomVO;
import ddit.vo.TourVO;

public class WishDaoImpl implements IWishDao {
	private SqlMapClient smc;
	private static WishDaoImpl dao;
	private WishDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static WishDaoImpl getInstance() {
		if(dao == null) dao = new WishDaoImpl();
		return dao;
	}
	@Override
	public int room_wish(String member_id, String roomcode) {
		int result = 0;
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("roomcode", roomcode);
		try {
			result = smc.update("room.roomWish",map);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public int room_check_wish(Map<String, String> map) {
		int result = 0;
		RoomVO vo = null;
		
		System.out.println("map :" + map);
		try {
			vo = (RoomVO) smc.queryForObject("room.roomCheckWish", map);
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
	public int room_wish_delete(String member_id, String roomcode) {
		int result = 0;
		try {
			Map<String, String> map = new HashMap<String, String>();
			map.put("member_id", member_id);
			System.out.println("멤버아이디 " +member_id);
			map.put("roomcode", roomcode);
			result = smc.delete("room.room_whish_delete",map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	
	
	//관광지 관련 메서드//////////////////////////////////////////////////////////////
	@Override
	public int tour_wish_check(Map<String, String> map) {
		int result = 0;
		try {
			result = (int)smc.queryForObject("tourWish.tour_wish_check", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public int tour_wish_delete(Map<String, String> map) {
		int result = 0;
		try {
			result = smc.delete("tourWish.tour_wish_delete", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public int tourWishInsert(Map<String, String> map) {
		int result = 0;
			try {
				result = smc.update("tourWish.tourWishInsert", map);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return result;
	}
	
	
	
	
	// 맛집 관련 /////////////////////////////////////////////////////////////////////////////////////////////////
	
		// 맛집 찜 추가하기
	@Override
	public int foodWishInsert(Map<String, String> map) {
		int result = 0;
		
		try {
			result = smc.update("foodWish.foodWishInsert", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
		// 맛집 찜 삭제하기
	@Override
	public int foodWishDelete(Map<String, String> map) {
		int result = 0;
		
		try {
			result = smc.update("foodWish.foodWishDelete", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
		// 맛집 찜 확인하기
	@Override
	public int tourWishCheck(Map<String, String> map) {
		int result = 0;
		
		try {
			result = (int) smc.queryForObject("foodWish.foodWishCheck", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
