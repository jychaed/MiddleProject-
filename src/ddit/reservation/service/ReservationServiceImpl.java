package ddit.reservation.service;

import java.util.Map;

import ddit.reservation.dao.IReservationDao;
import ddit.reservation.dao.ReservationDaoImpl;
import ddit.vo.RoomResVO;

public class ReservationServiceImpl implements IReservationService {
	private IReservationDao dao;
	private static ReservationServiceImpl service;
	private ReservationServiceImpl() {
		dao = ReservationDaoImpl.getInstance();
	}
	public static ReservationServiceImpl getService() {
		if(service == null) service = new ReservationServiceImpl();
		return service;
	}
	@Override
	public int room_reservation_insert(RoomResVO vo) {
		// TODO Auto-generated method stub
		return dao.room_reservation_insert(vo);
	}
	
	
}
