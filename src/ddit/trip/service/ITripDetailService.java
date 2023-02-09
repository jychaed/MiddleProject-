package ddit.trip.service;

import java.util.List;
import java.util.Map;

import ddit.vo.TripDetailVO;

public interface ITripDetailService {

	public List<TripDetailVO> tripDetailList(String member_id);
	
	public int insertDetail(TripDetailVO tdvo);
	
	public int deleteDetail(TripDetailVO tdvo);
	
	public int updateDetail(TripDetailVO tdvo);
	
	
	////////////////////////////상세일정 메서드 모음
	public TripDetailVO tripDetailCheck(Map<String, String> map);
	
	public int tripDetailInsert(Map<String, String> map);
	
	public int searchMaxCount(String trip_no);
	
	public List<TripDetailVO> tripDetailSelect(String ntrip_no);
	
	public int detailDayaDelite(String detailday_code);
	
	
}
