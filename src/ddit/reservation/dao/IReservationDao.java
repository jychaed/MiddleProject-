package ddit.reservation.dao;

import java.util.Map;

import ddit.vo.RoomResVO;

public interface IReservationDao {

	//숙소예약등록
	public int room_reservation_insert(RoomResVO vo);
}
