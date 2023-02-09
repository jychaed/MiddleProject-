package ddit.trip.service;

import java.util.List;
import java.util.Map;

import ddit.trip.dao.ITripDetailDao;
import ddit.trip.dao.TripDetailDaoImpl;
import ddit.vo.TripDetailVO;

public class TripDetailServiceImpl implements ITripDetailService {
	private ITripDetailDao dao;
	private static TripDetailServiceImpl service;
	private TripDetailServiceImpl() {
		dao = TripDetailDaoImpl.getInstance();
	}
	public static TripDetailServiceImpl getService() {
		if(service == null) service = new TripDetailServiceImpl();
		return service;
	}
	@Override
	public List<TripDetailVO> tripDetailList(String member_id) {
		return dao.tripDetailList(member_id);
	}

	@Override
	public int insertDetail(TripDetailVO tdvo) {
		return dao.insertDetail(tdvo);
	}

	@Override
	public int deleteDetail(TripDetailVO tdvo) {
		return dao.deleteDetail(tdvo);
	}

	@Override
	public int updateDetail(TripDetailVO tdvo) {
		return dao.updateDetail(tdvo);
	}
	
	
	////////////////////////////////////////
	@Override
	public TripDetailVO tripDetailCheck(Map<String, String> map) {
		return dao.tripDetailCheck(map);
	}
	@Override
	public int tripDetailInsert(Map<String, String> map) {
		return dao.tripDetailInsert(map);
	}
	@Override
	public int searchMaxCount(String trip_no) {
		return dao.searchMaxCount(trip_no);
	}
	@Override
	public List<TripDetailVO> tripDetailSelect(String ntrip_no) {		
		return dao.tripDetailSelect(ntrip_no);
	}
	@Override
	public int detailDayaDelite(String detailday_code) {
		return dao.detailDayaDelite(detailday_code);
	}

}
