package ddit.trip.dao;

import java.util.List;

import ddit.vo.TripVO;

public interface ITripDao {
	public List<TripVO> tripList(String member_id);
	
	public List<TripVO> tripDayList(TripVO dayVo);
	
	public int insertTrip(TripVO itVo);
	
	public int updateTrip(TripVO utVo);
	
	public int deleteTrip(String t_no);
	
	
}
