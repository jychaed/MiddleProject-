package ddit.reservation.dao;

import java.sql.SQLException;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.SqlMapClientFactory;
import ddit.vo.RoomResVO;

public class ReservationDaoImpl implements IReservationDao {
	private SqlMapClient smc;
	private static ReservationDaoImpl dao;
	private ReservationDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static ReservationDaoImpl getInstance() {
		if(dao == null) dao = new ReservationDaoImpl();
		return dao;
	}
	@Override
	public int room_reservation_insert(RoomResVO vo) {
		int result = 0 ;
		try {
			result = smc.update("room_reservation.room_reservation_insert",vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result ;
	}
}
