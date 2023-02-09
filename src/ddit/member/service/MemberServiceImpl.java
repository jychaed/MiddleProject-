package ddit.member.service;

import java.util.List;
import java.util.Map;

import ddit.member.dao.IMemberDao;
import ddit.member.dao.MemberDaoImpl;
import ddit.vo.FoodVO;
import ddit.vo.MemberVO;
import ddit.vo.MyReviewListVO;
import ddit.vo.RoomResListVO;
import ddit.vo.RoomResVO;
import ddit.vo.RoomVO;
import ddit.vo.TourVO;
import ddit.vo.TripVO;


public class MemberServiceImpl implements IMemberService {
	private IMemberDao dao;
	private static MemberServiceImpl service;
	private MemberServiceImpl() {
		dao = MemberDaoImpl.getInstance();
	}
	public static MemberServiceImpl getService() {
		if(service == null) service = new MemberServiceImpl();
		return service;
	}
	@Override
	public List<MemberVO> memberList(Map<String, String> map) {
		return dao.memberList(map);
		
	}
	@Override
	public String memIdCheck(String member_id) {
		return dao.memIdCheck(member_id);
	}
	@Override
	public int registMem(MemberVO memberVo) {
		return dao.registMem(memberVo);
	}
	@Override
	public MemberVO loginCheck(MemberVO memberVo) {
		return dao.loginCheck(memberVo);
	}
	@Override
	public List<MemberVO> member_myinfo(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_myinfo(member_id);
	}
	@Override
	public List<TripVO> member_mytrip_before(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_mytrip_before(member_id);
	}
	@Override
	public List<TripVO> member_mytrip_after(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_mytrip_after(member_id);
	}
	@Override
	public String findId(Map<String, String> map) {
		
		return dao.findId(map);
	}
	@Override
	public List<RoomVO> member_mywish_room(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_mywish_room(member_id);
	}
	@Override
	public List<TourVO> member_mywish_tour(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_mywish_tour(member_id);
	}
	@Override
	public List<FoodVO> member_mywish_food(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_mywish_food(member_id);
	}
	@Override
	public List<RoomResListVO> member_myres_room(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_myres_room(member_id);
	}
	@Override
	public List<MyReviewListVO> member_myreview_tour(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_myreview_tour(member_id);
	}
	@Override
	public List<MyReviewListVO> member_myreview_room(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_myreview_room(member_id);
	}
	@Override
	public List<MyReviewListVO> member_myreview_food(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_myreview_food(member_id);
	}
	@Override
	public int member_delete(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_delete(member_id);
	}
	@Override
	public int updatePass(MemberVO memberVo) {
		// TODO Auto-generated method stub
		return dao.updatePass( memberVo);
	}
	@Override
	public int member_update_myinfo(MemberVO memberVo) {
		// TODO Auto-generated method stub
		return dao.member_update_myinfo(memberVo);
	}
	@Override
	public List<RoomResListVO> member_myres_room_soon(String member_id) {
		// TODO Auto-generated method stub
		return dao.member_myres_room_soon(member_id);
	}
	@Override
	public String findPass(Map<String, String> map) {
		return dao.findPass(map);
	}

	

}
