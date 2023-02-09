package ddit.trip.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.TripDayVO;

public class TripDayDaoImpl implements ITripDayDao {
	private SqlMapClient smc;
	private static TripDayDaoImpl dao;
	private TripDayDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static TripDayDaoImpl getInstance() {
		if(dao == null) dao = new TripDayDaoImpl();
		return dao;
	}
	@Override
	public List<TripDayVO> tripDayList(Map<String, String> map) {
		List<TripDayVO> list = null;
		try {
			list = smc.queryForList("trip.dayList", map);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	

}
