package ddit.pay.service;

import ddit.pay.dao.IPayDao;
import ddit.pay.dao.PayDaoImpl;

public class PayServiceImpl implements IPayService {
	private IPayDao dao;
	private static PayServiceImpl service;
	private PayServiceImpl() {
		dao = PayDaoImpl.getInstance();
	}
	public static PayServiceImpl getService() {
		if(service == null) service = new PayServiceImpl();
		return service;
	}
}
