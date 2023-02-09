package ddit.member.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.FoodVO;
import ddit.vo.MemberVO;
import ddit.vo.MyReviewListVO;
import ddit.vo.RoomResListVO;
import ddit.vo.RoomResVO;
import ddit.vo.RoomVO;
import ddit.vo.TourVO;
import ddit.vo.TripVO;


public class MemberDaoImpl implements IMemberDao {
	
	private SqlMapClient smc;
	private static MemberDaoImpl dao;
	private MemberDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static MemberDaoImpl getInstance() {
		if(dao == null) dao = new MemberDaoImpl();
		return dao;
	}
	
	@Override
	public List<MemberVO> memberList(Map<String, String> map) {
		List<MemberVO> list = null;
	      try {
	         list = smc.queryForList("member.memberList", map);
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return list;
	}
	@Override
	public String memIdCheck(String member_id) {
		String mem_id = null;
		
		try {
			mem_id = String.valueOf(smc.queryForObject("member.memIdCheck", member_id));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return mem_id;
	}
	
	
	@Override
	public int registMem(MemberVO memberVo) {
		int cnt = 0;
		try {
			Object obj = smc.insert("member.registMem", memberVo);
			if(obj == null) cnt = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public MemberVO loginCheck(MemberVO memberVo) {
		MemberVO memVo = null;
		try {
			memVo = (MemberVO) smc.queryForObject("member.loginCheck", memberVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memVo;
		
	}
	@Override
	public List<MemberVO> member_myinfo(String member_id) {
		 List<MemberVO> list = null; 
		 try {
			list = smc.queryForList("member.member_myinfo", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<TripVO> member_mytrip_before(String member_id) {
		 List<TripVO> list = null; 
		 try {
			list = smc.queryForList("member.member_mytrip_before", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<TripVO> member_mytrip_after(String member_id) {
		 List<TripVO> list = null; 
		 try {
			list = smc.queryForList("member.member_mytrip_after", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public List<RoomVO> member_mywish_room(String member_id) {
		 List<RoomVO> list = null; 
		 try {
			list = smc.queryForList("member.member_mywish_room", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<TourVO> member_mywish_tour(String member_id) {
		 List<TourVO> list = null; 
		 try {
			list = smc.queryForList("member.member_mywish_tour", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<FoodVO> member_mywish_food(String member_id) {
		 List<FoodVO> list = null; 
		 try {
			list = smc.queryForList("member.member_mywish_food", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<RoomResListVO> member_myres_room(String member_id) {
		 List<RoomResListVO> list = null; 
		 try {
			list = smc.queryForList("member.member_myres_room", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<RoomResListVO> member_myres_room_soon(String member_id) {
		 List<RoomResListVO> list = null; 
		 try {
			list = smc.queryForList("member.member_myres_room_soon", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<MyReviewListVO> member_myreview_tour(String member_id) {
		 List<MyReviewListVO> list = null; 
		 try {
			list = smc.queryForList("member.member_myreview_tour", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<MyReviewListVO> member_myreview_room(String member_id) {
		 List<MyReviewListVO> list = null; 
		 try {
			list = smc.queryForList("member.member_myreview_room", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<MyReviewListVO> member_myreview_food(String member_id) {
		 List<MyReviewListVO> list = null; 
		 try {
			list = smc.queryForList("member.member_myreview_food", member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int member_delete(String member_id) {
		int result = 0; 
		try {
			result = smc.update("member.member_delete",member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public int updatePass(MemberVO memberVo) {
		int result = 0; 
		try {
			result = smc.update("member.updatePass",memberVo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public int member_update_myinfo(MemberVO memberVo) {
		int result = 0; 
		try {
			result = smc.update("member.member_update_myinfo",memberVo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public String findId(Map<String, String> map) {
		String result = null;
		try {
			result = (String) smc.queryForObject("member.findId", map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public String findPass(Map<String, String> map) {
		String result = null;
		try {
			result = (String) smc.queryForObject("member.findPass",map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}


}
