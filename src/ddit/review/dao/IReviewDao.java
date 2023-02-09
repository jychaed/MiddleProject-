package ddit.review.dao;

import java.util.List;
import java.util.Map;

import ddit.vo.FoodReviewVO;
import ddit.vo.RoomReviewListVO;
import ddit.vo.RoomReviewVO;
import ddit.vo.TourReviewVO;

public interface IReviewDao {

	
	//숙소 리뷰리스트
	public List<RoomReviewListVO> room_review_selectAll(String roomCode);
	//리뷰등록
	public int room_review_insert(RoomReviewVO vo);
	//숙소 리뷰 체크
	public RoomReviewVO room_review_check(Map<String, String> map);
	

	
	
	//관광지 리뷰 체크
		public TourReviewVO tour_review_check(Map<String, String> map);
		
	// 리뷰 등록 메서드
		public int tour_review_insert(Map<String, String> map);
		
	// 리뷰 삭제 메서드
		public int tour_review_delete(String reviewNo);
		
	// 리뷰 수정 메서드
		public int tour_review_update(Map<String, String> map);


		
		
	// 맛집 관련 //////////////////////////////////////////////////////
		
		// 맛집 리뷰 등록
	public int food_reviewInsert(Map<String, String> map);

		// 맛집 리뷰 작성 자격 확인
	public FoodReviewVO food_reviewCheck(Map<String, String> map);

		// 맛집 리뷰 수정
	public int food_reviewUpdate(Map<String, String> map);

		// 맛집 리뷰 삭제
	public int food_reviewDelete(String reviewNo);
}
