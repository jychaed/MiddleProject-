package ddit.review.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.FoodReviewVO;
import ddit.vo.RoomReviewListVO;
import ddit.vo.RoomReviewVO;
import ddit.vo.TourReviewVO;

public class ReviewDaoImpl implements IReviewDao {
	private SqlMapClient smc;
	private static ReviewDaoImpl dao;
	private ReviewDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static ReviewDaoImpl getInstance() {
		if(dao == null) dao = new ReviewDaoImpl();
		return dao;
	}
	//숙소
	@Override
	public List<RoomReviewListVO> room_review_selectAll(String roomCode) {
		List<RoomReviewListVO> list = null ; 
		try {
			list = smc.queryForList("room_review.room_review_list",roomCode);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int room_review_insert(RoomReviewVO vo) {
		int result = 0 ;
		try {
			
			result = smc.update("room_review.room_review_insert",vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public RoomReviewVO room_review_check(Map<String, String> map) {
		RoomReviewVO vo = null;
		try {
			vo = (RoomReviewVO)smc.queryForObject("room_review.room_review_check", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}

	
	
	// 관광지
	@Override
	public TourReviewVO tour_review_check(Map<String, String> map) {
		TourReviewVO vo = null;
		try {
			vo = (TourReviewVO)smc.queryForObject("tourReview.tour_review_check", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	@Override
	public int tour_review_insert(Map<String, String> map) {
		int result = 0;
		try {
				result = smc.update("tourReview.tour_review_insert", map);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public int tour_review_delete(String reviewNo) {
		int result = 0;
		try {
			result = smc.delete("tourReview.tour_review_delete", reviewNo);
			System.out.println("dao 안 result =" + result);
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return result;
	}
	@Override
	public int tour_review_update(Map<String, String> map) {
		int result = 0;
		try {
			result = smc.update("tourReview.tour_review_update", map);		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	// 맛집
	
		// 맛집 리뷰 등록
	@Override
	public int food_reviewInsert(Map<String, String> map) {
		int result = 0;
		
		try {
			result = smc.update("foodReview.food_reviewInsert", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
		// 맛집 리뷰 작성 자격 확인
	@Override
	public FoodReviewVO food_reviewCheck(Map<String, String> map) {
		
		FoodReviewVO vo = null;
		
		try {
			vo = (FoodReviewVO) smc.queryForObject("foodReview.food_reviewCheck", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
		// 맛집 리뷰 수정
	@Override
	public int food_reviewUpdate(Map<String, String> map) {
		int result = 0;
		
		try {
			result = smc.update("foodReview.food_reviewUpdate", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
		// 맛집 리뷰 삭제
	@Override
	public int food_reviewDelete(String reviewNo) {
		int result = 0;
		
		try {
			result = smc.delete("foodReview.food_reviewDelete", reviewNo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}




	
}
