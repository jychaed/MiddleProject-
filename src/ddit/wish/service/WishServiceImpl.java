package ddit.wish.service;

import java.util.Map;

import ddit.wish.dao.IWishDao;
import ddit.wish.dao.WishDaoImpl;

public class WishServiceImpl implements IWishService {
	private IWishDao dao;
	private static WishServiceImpl service;
	private WishServiceImpl() {
		dao = WishDaoImpl.getInstance();
	}
	public static WishServiceImpl getService() {
		if(service == null) service = new WishServiceImpl();
		return service;
	}
	@Override
	public int room_wish(String member_id, String roomcode) {
		// TODO Auto-generated method stub
		return dao.room_wish(member_id, roomcode);
	}
	@Override
	public int room_check_wish(Map<String, String> map) {
		// TODO Auto-generated method stub
		return dao.room_check_wish(map);
	}
	@Override
	public int room_wish_delete(String member_id, String roomcode) {
		// TODO Auto-generated method stub
		return dao.room_wish_delete( member_id, roomcode);
	}
	@Override
	public int tour_wish_check(Map<String, String> map) {
		return dao.tour_wish_check(map);
	}
	@Override
	public int tour_wish_delete(Map<String, String> map) {
		return dao.tour_wish_delete(map);
	}
	@Override
	public int tourWishInsert(Map<String, String> map) {
		return dao.tourWishInsert(map);
	}
	
	
	// 맛집 관련 /////////////////////////////////////////////////////////////////////
	
		// 맛집 찜 추가하기
	@Override
	public int foodWishInsert(Map<String, String> map) {
		return dao.foodWishInsert(map);
	}
	
		// 맛집 찜 삭제하기
	@Override
	public int foodWishDelete(Map<String, String> map) {
		return dao.foodWishDelete(map);
	}
	
		// 맛집 찜 확인하기
	@Override
	public int tourWishCheck(Map<String, String> map) {
		return dao.tourWishCheck(map);
	}
}
