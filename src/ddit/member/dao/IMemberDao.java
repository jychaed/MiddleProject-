package ddit.member.dao;

import java.util.List;
import java.util.Map;

import ddit.vo.FoodVO;
import ddit.vo.MemberVO;
import ddit.vo.MyReviewListVO;
import ddit.vo.RoomResListVO;
import ddit.vo.RoomResVO;
import ddit.vo.RoomVO;
import ddit.vo.TourVO;
import ddit.vo.TripVO;

public interface IMemberDao {
	
	/**
	 * 회원 리스트 전체 출력  
	 * @return 회원의 정보 리스트 
	 */
	public List<MemberVO> memberList(Map<String, String> map);
	
	/**
	 * 회원 아이디 중복검사하는 메소드 
	 * @param member_id 화원가입시 입력하는 이메일 주소 
	 * @return 있으면 존재하는 회원 아이디 없으면 null
	 */
	public String memIdCheck(String member_id);

	/**
	 * 회원가입시 회원 정보를 db에 등록하는 메소드 
	 * @param memberVo  회원정보가 담긴 vo
	 * @return  1 : 등록 성공 0 : 등록 실패
	 */
	public int registMem(MemberVO memberVo);
	
	/**
	 * 로그인 할 때 비밀번호와 아이디가 존재하는지 확인하는 메소드 
	 * @param memberVo  아이디와 비밀번호가 들어있는 vo
	 * @return 회원 정보가 일치하면 해당vo  일치하지 않으면 null  
	 */
	public MemberVO loginCheck(MemberVO memberVo);

	
	/**
	 * 마이페이지 회원정보 조회용 메서드
	 * @param member_id 회원아이디 조건으로 해당정보 모두출력
	 * @return select * from where memeber_id = 파라미터
	 */
	public List<MemberVO> member_myinfo(String member_id);
	/**
	 * 다가오는 내여행정보를 조회하는 메서드 
	 * @param member_id 회원아이디 조건으로 해당정보 모두출력
	 * @return 
	 */
	public List<TripVO> member_mytrip_before (String member_id);
	/**
	 * 지나간 내여행정보를 조회하는 메서드 가장최근일자 순서대로 조회
	 * @param member_id 회원아이디 조건으로 해당정보 모두출력
	 * @return 
	 */
	public List<TripVO> member_mytrip_after (String member_id);

	public String findId(Map<String, String> map);
	/**
	 * 회원이 찜한 숙소 찜리스트 조회 
	 * @param member_id 회원조건
	 * @return roomvo정보를 출력
	 */
	public List<RoomVO> member_mywish_room (String member_id);
	/**
	 * 회원이 찜한 관광 찜리스트 조회 
	 * @param member_id 회원조건
	 * @return tourvo정보를 출력
	 */
	public List<TourVO> member_mywish_tour(String member_id);
	/**
	 * 회원이 찜한 맛집 찜리스트 조회 
	 * @param member_id 회원조건
	 * @return foodvo정보를 출력
	 */
	public List<FoodVO> member_mywish_food(String member_id);
	/**
	 *  회원의 예약정보를 조회하는 화면 -- 현재 숙소예약밖에없음
	 * @param member_id
	 * @return
	 */
	public List<RoomResListVO> member_myres_room (String member_id);
	/**
	 * 곧 다가올 숙소예약정보 
	 * @param member_id
	 * @return
	 */
	public List<RoomResListVO> member_myres_room_soon(String member_id);
	/**
	 * 숙소, 맛집, 관광 리뷰를 종합해서 볼수 있따 
	 * @param member_id
	 * @return 
	 */
	public List<MyReviewListVO> member_myreview_tour (String member_id); 
	public List<MyReviewListVO> member_myreview_room (String member_id); 
	public List<MyReviewListVO> member_myreview_food (String member_id);
	
	/**
	 * 회원 탈퇴를 하는 메서드 회원상태가 1이면 회원유지, 0이면 탈퇴  
	 * @param member_id 
	 * @return 성공 1 실패 0 
	 */
	public int member_delete (String member_id);
	
	/**
	 * 비밀번호변경
	 * @param member_id
	 * @return
	 */
	public int updatePass(MemberVO memberVo);
	/**
	 * 회원정보 변경 메서드 
	 * @param memberVo
	 * @return
	 */
	public int member_update_myinfo(MemberVO memberVo);
	
	public String findPass(Map<String, String> map);
	
}
