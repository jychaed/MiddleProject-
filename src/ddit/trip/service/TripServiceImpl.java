package ddit.trip.service;

import java.util.List;

import ddit.trip.dao.ITripDao;
import ddit.trip.dao.TripDaoImpl;
import ddit.vo.TripVO;

public class TripServiceImpl implements ITripService {
	private ITripDao dao;
	private static TripServiceImpl service;
	private TripServiceImpl() {
		dao = TripDaoImpl.getInstance();
	}
	public static TripServiceImpl getService() {
		if(service == null) service = new TripServiceImpl();
		return service;
	}
	@Override
	public List<TripVO> tripList(String member_id) {
		return dao.tripList(member_id);
	}
	@Override
	public List<TripVO> tripDayList(TripVO dayVo) {
		return dao.tripDayList(dayVo);
	}
	@Override
	public int insertTrip(TripVO itVo) {
		return dao.insertTrip(itVo);
	}
	@Override
	public int updateTrip(TripVO utVo) {
		return dao.updateTrip(utVo);
	}
	@Override
	public int deleteTrip(String t_no) {
		return dao.deleteTrip(t_no);
	}
}
