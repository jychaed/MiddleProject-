package ddit.lounge.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.LoungeVO;
import ddit.vo.RoomVO;

public class LoungeDaoImpl implements ILoungeDao {
	private SqlMapClient smc;
	private static LoungeDaoImpl dao;
	private LoungeDaoImpl(){	
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static LoungeDaoImpl getInstance(){
		if(dao==null) dao = new LoungeDaoImpl();
		return dao;
	}
	@Override
	public int lounge_insert(LoungeVO vo) {
		int insert = 0;
		Object obj;
		try {
			obj = smc.insert("lounge.lounge_insert", vo);
			if(obj==null) insert = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return insert;
	}
	@Override
	public List<LoungeVO> lounge_selectList(Map<String, Object> map) {
		List<LoungeVO> list = null;
		try {
			list = smc.queryForList("lounge.lounge_selectList",map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int lounge_delete(int lounge_no) {
		int res = 0 ;
		try {
			res=smc.update("lounge.lounge_delete", lounge_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}
	@Override
	public int lounge_update(Map<String, Object> map) {
		int res = 0 ;
		try {
			res=smc.update("lounge.lounge_update", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
	@Override
	public LoungeVO lounge_DetailOne(int lounge_no) {
		LoungeVO vo = null;
		
		try {
			vo = (LoungeVO) smc.queryForObject("lounge.lounge_DetailOne", lounge_no);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}

}
