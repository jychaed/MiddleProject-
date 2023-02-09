package ddit.wish.dao;

import java.util.Map;

public interface IWishDao {
	public int room_wish(String member_id, String roomcode);
	
	public int room_check_wish(Map<String, String> map);
	public int room_wish_delete(String member_id, String roomcode);
	
	
	
	
	//관광지 관련 메서드
		/**
		 * 관광지 찜 확인 메서드
		 * 
		 * @param member_id
		 * @return 찜 했을 경우 1, 찜 안했을 경우 0
		 */
		public int tour_wish_check(Map<String, String> map);
		
		/**
		 * 관광지 찜 삭제 메서드
		 * 
		 * @param map
		 * @return 삭제 성공 : 1, 삭제 실패 0
		 */
		public int tour_wish_delete(Map<String, String> map);

		/**
		 * 관광지 찜 하기
		 * 
		 * @param map
		 * @return
		 */
		public int tourWishInsert(Map<String, String> map);
		
		
		// 맛집 관련 //////////////////////////////////////////////////////////////////
		
		
			// 맛집 찜 추가하기
		public int foodWishInsert(Map<String, String> map);

			// 맛집 찜 삭제하기
		public int foodWishDelete(Map<String, String> map);
		
			// 맛집 찜 확인하기
		public int tourWishCheck(Map<String, String> map);
}
