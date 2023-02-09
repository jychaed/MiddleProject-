package ddit.review.service;

import java.util.List;
import java.util.Map;

import ddit.review.dao.IReviewDao;
import ddit.review.dao.ReviewDaoImpl;
import ddit.vo.FoodReviewVO;
import ddit.vo.RoomReviewListVO;
import ddit.vo.RoomReviewVO;
import ddit.vo.TourReviewVO;

public class ReviewServiceImpl implements IReviewService{
	private IReviewDao dao;
	private static ReviewServiceImpl service;
	private ReviewServiceImpl() {
		dao = ReviewDaoImpl.getInstance();
	}
	public static ReviewServiceImpl getService() {
		if(service == null) service = new ReviewServiceImpl();
		return service;
	}
	
	//숙소
	@Override
	public List<RoomReviewListVO> room_review_selectAll(String roomCode) {
		return dao.room_review_selectAll(roomCode);
	}
	//숙소리뷰등록
	@Override
	public int room_review_insert(RoomReviewVO vo) {
		return dao.room_review_insert(vo);
	}
	@Override
	public RoomReviewVO room_review_check(Map<String, String> map) {
		// TODO Auto-generated method stub
		return dao.room_review_check(map);
	}
	
	
	
	// 관광지
	@Override
	public TourReviewVO tour_review_check(Map<String, String> map) {
		return dao.tour_review_check(map);
	}
	
	@Override
	public int tour_review_insert(Map<String, String> map) {
		return dao.tour_review_insert(map);
	}
	@Override
	public int tour_review_delete(String reviewNo) {
		return dao.tour_review_delete(reviewNo);
	}
	@Override
	public int tour_review_update(Map<String, String> map) {
		return dao.tour_review_update(map);
	}
	
	
	
	
	// 맛집 
		// 맛집 리뷰 작성
	@Override
	public int food_reviewInsert(Map<String, String> map) {
		return dao.food_reviewInsert(map);
	}
	
		// 맛집 리뷰 작성 자격 확인
	@Override
	public FoodReviewVO food_reviewCheck(Map<String, String> map) {
		return dao.food_reviewCheck(map);
	}
	
		// 맛집 리뷰 수정
	@Override
	public int food_reviewUpdate(Map<String, String> map) {
		return dao.food_reviewUpdate(map);
	}
	
		// 맛집 리뷰 삭제
	@Override
	public int food_reviewDelete(String reviewNo) {
		return dao.food_reviewDelete(reviewNo);
	}

	
	
}
