package ddit.trip.service;

import java.util.List;
import java.util.Map;

import ddit.vo.TripDayVO;

public interface ITripDayService {
	
	
	/**
	 *  여행 일정 아ㅣㅁ너ㅣ차ㅓㅣㅏㅈ
	 * 
	 * @param map
	 * @return
	 */
	public List<TripDayVO> tripDayList(Map<String, String> map);
	

}
