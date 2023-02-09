package ddit.trip.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.TripDetailVO;

public class TripDetailDaoImpl implements ITripDetailDao {
	private SqlMapClient smc;
	private static TripDetailDaoImpl dao;
	private TripDetailDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static TripDetailDaoImpl getInstance() {
		if(dao == null) dao = new TripDetailDaoImpl();
		return dao;
	}
	@Override
	public List<TripDetailVO> tripDetailList(String member_id) {
		List<TripDetailVO> list = null;
		try {
			list = smc.queryForList("trip.detailList",member_id );
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int insertDetail(TripDetailVO tdvo) {
		int insert = 0;
		try {
			Object obj = smc.insert("trip.insertTrip", tdvo);
			if(obj==null) insert = 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return insert;
	}

	@Override
	public int updateDetail(TripDetailVO tdvo) {
		int update = 0;
		try {
			update = smc.update("trip.detailUpdate", tdvo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return update;
	}

	@Override
	public int deleteDetail(TripDetailVO tdvo) {
		int delete = 0;
		try {
			delete = smc.delete("trip.deleteDetail", tdvo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return delete;
	}
	
	
	///////////////////////////// 상세일정 등록 메서드 
	@Override
	public TripDetailVO tripDetailCheck(Map<String, String> map) {
		TripDetailVO vo = null;
		try {
			vo = (TripDetailVO)smc.queryForObject("tripDetail.tripDetailCheck", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return vo;
	}
	@Override
	public int tripDetailInsert(Map<String, String> map) {
		int result = 0;
		try {
			result = smc.update("tripDetail.tripDetailInsert", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public int searchMaxCount(String trip_no) {
		int result = 0;
		try {
			result = (int)smc.queryForObject("tripDetail.searchMaxCount", trip_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	@Override
	public List<TripDetailVO> tripDetailSelect(String ntrip_no) {
		List<TripDetailVO> list = null;
		try {
			list = smc.queryForList("tripDetail.tripDetailSelect", ntrip_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public int detailDayaDelite(String detailday_code) {
		int result = 0;
		try {
			result = smc.delete("tripDetail.detailDayaDelite", detailday_code);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
