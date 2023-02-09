package ddit.trip.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.TripVO;

public class TripDaoImpl implements ITripDao {
	private SqlMapClient smc;
	private static TripDaoImpl dao;
	private TripDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static TripDaoImpl getInstance() {
		if(dao == null) dao = new TripDaoImpl();
		return dao;
	}
	
	@Override
	public List<TripVO> tripList(String member_id) {
		List<TripVO> list = null;
		try {
			list = smc.queryForList("trip.tripList", member_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<TripVO> tripDayList(TripVO dayVo) {
		List<TripVO> dlist = null;
		try {
			dlist = (List<TripVO>) smc.queryForObject("trip.tripDayList", dayVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dlist;
	}

	@Override
	public int insertTrip(TripVO itVo) {
		int insert = 0;
		try {
			Object obj = smc.insert("trip.insertTrip", itVo);
			if(obj==null) insert = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return insert;
	}

	@Override
	public int updateTrip(TripVO utVo) {
		int update = 0;
		try {
			update = smc.update("trip.updateTrip", utVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return update;
	}

	@Override
	public int deleteTrip(String t_no) {
		int delete = 0;
		try {
			delete = smc.delete("trip.deleteTrip", t_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return delete;
	}

}
