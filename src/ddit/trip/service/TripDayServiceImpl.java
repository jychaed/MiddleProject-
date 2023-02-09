package ddit.trip.service;

import java.util.List;
import java.util.Map;

import ddit.trip.dao.ITripDayDao;
import ddit.trip.dao.TripDayDaoImpl;
import ddit.vo.TripDayVO;

public class TripDayServiceImpl implements ITripDayService {
	private ITripDayDao dao;
	private static TripDayServiceImpl service;
	private TripDayServiceImpl() {
		dao = TripDayDaoImpl.getInstance();
	}
	public static TripDayServiceImpl getService() {
		if(service == null) service = new TripDayServiceImpl();
		return service;
	}
	
	
	@Override
	public List<TripDayVO> tripDayList(Map<String, String> map) {
		return dao.tripDayList(map);
	}
	
}
